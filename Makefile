.PHONY: help format lint test build clean

SOURCE_DIR := src
TEST_DIR := test
CODE_DIRS := $(SOURCE_DIR) $(TEST_DIR)
BUILD_DIRS := dist
PYTHON := python3

#HELP help : prints out information about available makefile commands
help:
	@sed -n 's/^#HELP//p' Makefile

#HELP format : automatically reformats the respository code
format:
	black $(CODE_DIRS)

#HELP lint : runs automated code style checks
lint:
	ruff $(CODE_DIRS)

#HELP test : runs developer written code tests
test:
	$(PYTHON) -m pytest $(TEST_DIR)

#HELP build : packages up repository code
build:
	$(PYTHON) -m build --sdist .

#HELP clean : deletes built resources
clean:
	$(RM) -rf $(BUILD_DIRS)