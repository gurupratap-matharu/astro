APP_LIST ?= main tests

.PHONY: ci test lint

help:
	@echo "Available commands"
	@echo " - ci		: lints, formats, runs tests and compiles"
	@echo " - lint		: lints the codebase"
	@echo " - test		: runs unittest on the codebase"
	@echo " - clean		: removes __pycache__ and .pytest_cache"
	@echo " - isort 	: sorts all imports of the project"

clean:
	rm -rf __pycache__ .pytest_cache

test:
	python -m unittest

isort:
	isort .

isort-check:
	isort -c .

format:
	black .

lint: isort format
	pylint $(APP_LIST)

ci: test clean
