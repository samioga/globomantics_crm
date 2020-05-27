FROM python:3.8.2-slim-buster
MAINTAINER sgaona2
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install vim nano tree -y
WORKDIR /app
ADD requirements.txt ./
RUN pip install -r requirements.txt
EXPOSE 80
ENTRYPOINT /bin/bash