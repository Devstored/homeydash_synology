FROM node:latest
LABEL maintainer="Dino https://community.athom.com/u/dinorayn"


ARG HOMEY_TOKEN
ENV HOMEY_TOKEN=$HOMEY_TOKEN


RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/Devstored/homeydash.com.git && \
    npm install -g serve

WORKDIR /homeydash.com
RUN mkdir -p app/token
COPY token.txt ./app/token
RUN chmod 755 ./app/token
RUN echo $HOMEY_TOKEN > ./app/token/token.txt
RUN cat ./app/token/token.txt



#ADD token.txt /token/token.txt

VOLUME ["/app/token"]
WORKDIR /homeydash.com
EXPOSE 5000

CMD ["serve", "app"]



