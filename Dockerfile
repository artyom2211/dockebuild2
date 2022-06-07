FROM python:3.7-alpine
MAINTAINER Vlasov Artem


ENV PTHONUNBUFFERED 1


COPY ./requirements.txt /requirements.txt


RUN pip install -r /requirements.txt


RUN mkdir /mysite
WORKDIR /mysite
COPY ./mysite /mysite


RUN adduser -D user


USER user