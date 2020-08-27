FROM ubuntu:18.04

WORKDIR /opt/app

COPY . .

RUN apt-get update

RUN apt-get install curl --yes

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash

RUN apt-get install nodejs --yes

RUN npm install --yes

EXPOSE 8888

CMD ["npm","start"]