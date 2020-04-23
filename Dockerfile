FROM node:latest
LABEL maintainer="Dino https://community.athom.com/u/dinorayn"


ARG HOMEY_TOKEN
ENV HOMEY_TOKEN=$HOMEY_TOKEN

#install repo
RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/Devstored/homeydash.com.git && \
    npm install -g serve



WORKDIR /homeydash.com
RUN pwd
RUN ls
RUN ls app

#RUN mkdir -p app/token
COPY token.txt app/token/
RUN chmod 755 app/token
RUN ls app
RUN ls app/token


RUN echo $HOMEY_TOKEN > app/token/token.txt
RUN cat app/token/token.txt


EXPOSE 5000

VOLUME app/token

CMD ["serve", "app"]



