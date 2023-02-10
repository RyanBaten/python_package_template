.PHONY: help format lint test build clean

CODE_DIRS := src test
BUILD_DIRS := dist
PYTHON := python

#HELP help : prints out information about available makefile commands
help:
	@sed -n 's/^#HELP//p' Makefile

#HELP format : automatically reformats the respository code
format:
	black $(CODE_DIRS)

#HELP lint : runs automated code style checks
lint:
	flake8 $(CODE_DIRS)

#HELP test : runs developer written code tests
test:
	$(PYTHON) -m pytest $(CODE_DIRS)

#HELP build : packages up repository code
build:
	$(PYTHON) -m build --sdist .

#HELP clean : deletes built resources
clean:
	$(RM) -rf $(BUILD_DIRS)