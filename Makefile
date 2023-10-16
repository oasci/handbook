SHELL := /usr/bin/env bash
PYTHON := python3
PYTHONPATH := `pwd`

.PHONY: poetry-download
poetry-download:
	curl -sSL https://install.python-poetry.org | $(PYTHON) -

.PHONY: install
install:
	poetry lock --no-interaction
	poetry install --no-interaction

.PHONY: pre-commit-install
pre-commit-install:
	poetry run pre-commit install

.PHONY: validate
validate:
	poetry run pre-commit run --all-files

.PHONY: serve
serve:
	poetry run mkdocs serve

.PHONY: build
build:
	poetry run mkdocs build

