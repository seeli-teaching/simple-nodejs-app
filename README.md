# simple-nodejs-app
The most simple nodeJS app. A Docker exercise

### erster Versuch, der das Verhalten von Layers zeigt

FROM ubuntu

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y node
RUN apt-get -y npm
