.PHONY: run db install setup clean showdb
SHELL := /bin/sh
VENV_NAME = env
ENV_DIR := $(CURDIR)/$(VENV_NAME)

ifeq ($(OS),Windows_NT)
	PYTHON_PATH := $(ENV_DIR)/Scripts/python
	PIP := $(ENV_DIR)/Scripts/pip
	PYTHON = python

else
	PYTHON_PATH := $(ENV_DIR)/bin/python3
	PIP := $(ENV_DIR)/bin/pip3
	PYTHON = python3
endif

venv:
	$(PYTHON) -m venv env 

run:
	$(PYTHON_PATH) manage.py runserver

db:
	$(PYTHON_PATH) manage.py makemigrations
	$(PYTHON_PATH) manage.py migrate 
	
install:
	@echo "installing requirements.txt..."
	$(PIP) install -r requirements.txt

setup:
	@echo "installing requirements.txt..."
	$(PIP) install -r requirements.txt
	@echo "Makemigrations running..."
	$(PYTHON_PATH) manage.py makemigrate
	@echo "migrate running..."
	$(PYTHON_PATH) manage.py migrate
	@echo "server is now running..." 
	$(PYTHON_PATH) manage.py runserver

static:
	$(PYTHON_PATH) manage.py collectstatic

showdb:
	@echo "showmigrations..."
	$(PYTHON_PATH) manage.py showmigrations 

clean:
	rm -rf __pycache__
	rm -rf $(VENV_NAME)
