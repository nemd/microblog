FROM alpine:3.9

RUN apk update &&\
		apk --upgrade --no-cache add py3-pip sqlite

RUN pip3 install --upgrade pip &&\
		pip3 install flask flask-wtf flask-sqlalchemy flask-migrate

ENV FLASK_APP microblog.py

ADD microblog/ /code/

VOLUME /db

WORKDIR /code
