FROM alpine:3.9

RUN apk update &&\
		apk --upgrade --no-cache add py-pip sqlite

RUN pip install --upgrade pip &&\
		pip install flask flask-wtf flask-sqlalchemy flask-migrate

ENV FLASK_APP microblog.py

ADD microblog/ /code/

VOLUME /db

WORKDIR /code
