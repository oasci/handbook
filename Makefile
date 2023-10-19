SHELL := /usr/bin/env bash
PYTHON_VERSION := 3.11
PYTHON_VERSION_CONDENSED := 311
REPO_PATH := $(shell git rev-parse --show-toplevel)
CONDA_PATH := $(REPO_PATH)/.venv
CONDA := conda run -p $(CONDA_PATH)

###   ENVIRONMENT   ###

.PHONY: conda-setup
conda-setup:
	conda create -y -p $(CONDA_PATH) python=$(PYTHON_VERSION)
	conda install -y conda-lock -p $(CONDA_PATH)
	conda install -y -c conda-forge poetry pre-commit -p $(CONDA_PATH)

# The find command is because of this:
# https://github.com/python-poetry/poetry/issues/6408#issuecomment-1513131650
.PHONY: conda-dependencies
conda-dependencies:
	$(CONDA) conda config --add channels conda-forge
	find $(CONDA_PATH) -name direct_url.json -delete

.PHONY: pre-commit-install
pre-commit-install:
	$(CONDA) pre-commit install

.PHONY: from-conda-lock
from-conda-lock:
	$(CONDA) conda-lock install -p $(CONDA_PATH) $(REPO_PATH)/conda-lock.yml
	find $(CONDA_PATH) -name direct_url.json -delete

.PHONY: write-conda-lock
write-conda-lock:
	$(CONDA) conda env export --from-history | grep -v "^prefix" | grep -v "^name" > environment.yml
	$(CONDA) conda-lock -f environment.yml -p linux-64 -p osx-64 -p win-64

# Reads `pyproject.toml`, solves environment, then writes lock file.
.PHONY: poetry-lock
poetry-lock:
	$(CONDA) poetry lock --no-interaction
	$(CONDA) poetry export --without-hashes > requirements.txt

.PHONY: install
install:
	$(CONDA) poetry install --no-interaction

.PHONY: setup
setup: conda-setup pre-commit-install from-conda-lock install

.PHONY: validate
validate:
	poetry run pre-commit run --all-files

.PHONY: serve
serve:
	poetry run mkdocs serve

.PHONY: build
build:
	poetry run mkdocs build
