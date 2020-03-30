FROM ubuntu

RUN apt update && apt-get -y install wget

WORKDIR /root

RUN wget https://github.com/gohugoio/hugo/releases/download/v0.68.3/hugo_0.68.3_Linux-64bit.deb
RUN dpkg -i hugo_0.68.3_Linux-64bit.deb

WORKDIR /root/docs

COPY . /root/docs/
