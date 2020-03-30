FROM ubuntu

RUN apt update && apt -f install hugo

WORKDIR /root/docs

COPY . /root/docs/
