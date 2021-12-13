FROM python:3.9.9-slim

COPY requirements.txt /
RUN pip3 install -r /requirements.txt

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /app
WORKDIR /app

RUN useradd -ms /bin/bash myuser
USER myuser

CMD gunicorn wsgi:app --bind 0.0.0.0:$PORT