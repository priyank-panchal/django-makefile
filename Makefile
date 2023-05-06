.PHONY: run db install setup clean
SHELL := /bin/sh
VENV_NAME = env
LOCALPATH := ./src
ENV_DIR := $(CURDIR)/$(VENV_NAME)
ifeq ($(OS),Windows_NT)
	PYTHON := $(ENV_DIR)/Scripts/python
	PIP := $(ENV_DIR)/Scripts/pip
else
	PYTHON := $(ENV_DIR)/bin/python3
	PIP := $(ENV_DIR)/bin/pip3
endif

run:
	$(PYTHON) manage.py runserver

db:
	$(PYTHON) manage.py makemigrations
	$(PYTHON) manage.py migrate 
	
install:
	$(PIP) install -r requirements.txt

setup:
	$(PIP) install -r requirements.txt
	$(PYTHON) manage.py makemigrate
	$(PYTHON) manage.py migrate 
	$(PYTHON) manage.py runserver

static:
	$(PYTHON) manage.py collectstatic

showdb:
	$(PYTHON) manage.py showmigrations 

clean:
	rm -rf __pycache__
	rm -rf $(VENV_NAME)
