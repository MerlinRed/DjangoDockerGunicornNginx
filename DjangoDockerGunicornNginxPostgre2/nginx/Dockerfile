FROM nginx:1.19.0-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
COPY django.crt /etc/nginx/django.crt
COPY django.key /etc/nginx/django.key