#! /bin/bash

# Сделать миграции без вывода информации в консоль 
python3 manage.py makemigrations --no-input
python3 manage.py migrate --no-input

# Подтянуть статику
python3 manage.py collectstatic --no-input 

# Запускаем gunicorn
# app в начале это имя приложения
# флаг --reload означает автоперезагрузку
exec gunicorn prod.wsgi:application -b 0.0.0.0:9996 --reload