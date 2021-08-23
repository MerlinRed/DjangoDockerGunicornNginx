## Django + postresql + Docker + docker-compose + gunicorn + nginx

1. Нужно создать папку static
```bash
$ mkdir static
```

2. Необходимо собрать проект:

```bash
$ docker-compose build --no-cache
```

3. Запуск проекта:

```bash
$ docker-compose up
```

### Если нужно удалить контейнеры
```bash
$ docker-compose down -v
```
### Если при сборке не добавляются права на исполнение entrypoint.sh

1. Добавьте их локально, docker его заберет и без проблем запустит

```bash
$ sudo chmod +x entrypoint.sh
```
