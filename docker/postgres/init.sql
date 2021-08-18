-- Создаем пользователя
CREATE USER admin WITH PASSWORD 'devpass';

-- Создаем базу данных
CREATE DATABASE prod_db;

--Даем доступ к этой бд своему пользователю
GRANT ALL PRIVILEGES ON DATABASE prod_db TO admin;