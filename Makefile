# variables
FC=gfortran
CFLAGS=-c -g -Og -Wall
APP_LIST ?= main tests

.PHONY: ci test lint

help:
	@echo "Available commands"
	@echo " - ci		: lints, formats, runs tests and compiles"
	@echo " - lint		: lints the codebase"
	@echo " - test		: runs unittest on the codebase"
	@echo " - clean		: removes __pycache__ and .pytest_cache"
	@echo " - isort 	: sorts all imports of the project"

# linking
a.out: main.o
	$(FC) main.o

# compiling
main.o: main.f90
	$(FC) $(CFLAGS) main.f90

# cleanup
# run 
run:
	make
	./a.out

clean:
	@echo "Removing cache recursively..."
	find . -type f -name '*.py[co]' -delete -o -type d -name __pycache__ -delete
	rm *.o a.out
	@echo "Done!"

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
