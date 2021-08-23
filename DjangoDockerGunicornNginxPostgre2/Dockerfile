FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

RUN pip3 install --upgrade pip

COPY ./requirements.txt .
COPY ./entrypoint.sh .


RUN chmod +x entrypoint.sh
RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT [ "/app/entrypoint.sh" ]
