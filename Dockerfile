FROM python:3.5

# Variable que espera
ARG DJANGO_ENV

# Variables de entorno
ENV PYTHONUNBUFFERED 1
ENV WEBAPP_DIR /webapp

RUN mkdir $WEBAPP_DIR
WORKDIR $WEBAPP_DIR

COPY requirements/base.txt $WEBAPP_DIR/
COPY requirements/$DJANGO_ENV.txt $WEBAPP_DIR/

RUN pip install -r $DJANGO_ENV.txt
COPY . $WEBAPP_DIR/
