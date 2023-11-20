SHELL := /usr/bin/env bash
PYTHON_VERSION := 3.11
PYTHON_VERSION_CONDENSED := 311
PACKAGE_NAME := oasci-handbook
PACKAGE_PATH := $(PACKAGE_NAME)/
CONDA_NAME := $(PACKAGE_NAME)-dev
CONDA := conda run -n $(CONDA_NAME)
CONDA_LOCK_OPTIONS := -p linux-64 -p osx-64 -p win-64 --channel conda-forge

###   ENVIRONMENT   ###

.PHONY: conda-create
conda-create:
	- conda deactivate
	conda remove -y -n $(CONDA_NAME) --all
	conda create -y -n $(CONDA_NAME)
	$(CONDA) conda install -y python=$(PYTHON_VERSION)
	$(CONDA) conda install -y conda-lock

# Default packages that we always need.
.PHONY: conda-setup
conda-setup:
	$(CONDA) conda install -y -c conda-forge poetry
	$(CONDA) conda install -y -c conda-forge pre-commit
	$(CONDA) conda install -y -c conda-forge tomli tomli-w
	$(CONDA) conda install -y -c conda-forge conda-poetry-liaison

# Conda-only packages specific to this project.
.PHONY: conda-dependencies
conda-dependencies:
	$(CONDA) conda install -y -c conda-forge nodejs
	$(CONDA) npm install markdownlint-cli2 --global

.PHONY: conda-lock
conda-lock:
	- rm conda-lock.yml
	$(CONDA) conda env export --from-history | grep -v "^prefix" > environment.yml
	$(CONDA) conda-lock -f environment.yml $(CONDA_LOCK_OPTIONS)
	rm environment.yml
	$(CONDA) cpl-deps pyproject.toml --env_name $(CONDA_NAME)
	$(CONDA) cpl-clean --env_name $(CONDA_NAME)

.PHONY: from-conda-lock
from-conda-lock:
	$(CONDA) conda-lock install -n $(CONDA_NAME) conda-lock.yml
	$(CONDA) cpl-clean --env_name $(CONDA_NAME)

.PHONY: pre-commit-install
pre-commit-install:
	$(CONDA) pre-commit install

# Reads `pyproject.toml`, solves environment, then writes lock file.
.PHONY: poetry-lock
poetry-lock:
	$(CONDA) poetry lock --no-interaction

.PHONY: install
install:
	$(CONDA) poetry install --no-interaction --no-root

.PHONY: environment
environment: conda-create from-conda-lock pre-commit-install install

.PHONY: refresh-locks
refresh-locks: conda-create conda-setup conda-dependencies conda-lock pre-commit-install poetry-lock install



.PHONY: validate
validate:
	$(CONDA) markdownlint-cli2-fix handbook/*
	$(CONDA) pre-commit run --all-files

.PHONY: serve
serve:
	echo "Served at http://127.0.0.1:8910/"
	$(CONDA) mkdocs serve -a localhost:8910

.PHONY: docs
docs:
	$(CONDA) mkdocs build -d public/

.PHONY: open-docs
open-docs:
	xdg-open public/index.html 2>/dev/null
