# django-makefile
# Django General-Purpose Makefile
This is a general-purpose Makefile for Django projects. It provides convenient shortcuts for common tasks such as creating a virtual environment, installing dependencies, running tests, and more.

# Usage
To use this Makefile, simply copy it into your Django project's root directory and run make with one of the targets described below.

# Available targets
**venv**: creates a new Python virtual environment in the env directory.<br>
**install**: installs the required packages from requirements.txt.<br>
**db**: generates a new Django migration using the python manage.py makemigrations and python manage.py migrate command.<br>
**run**: runs the Django development server using the python manage.py runserver command.
**setup**: sets up the project.<br>
**static**: generate a templates using the python manage.py collectstatic.<br>
**showdb**: show the migrations using the python manage.py showmigrations <br>
**clean**: remove the env and __pycache__ files <br>


# Customization
This Makefile provides sensible defaults for most projects, but you can customize it to suit your needs by modifying the variables at the top of the file. For example, you can change the name of the virtual environment directory or add new dependencies to the requirements.txt file.

# Contributing
If you find a bug or have a suggestion for a new feature, please submit an issue or a pull request on the GitHub repository.
