#!/usr/bin/env sh

python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic

exec gunicorn -c gunicorn_prod.conf django_project.wsgi:application --reload