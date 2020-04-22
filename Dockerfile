FROM node:latest
LABEL maintainer="Dino https://community.athom.com/u/dinorayn"

ENV HOMEY_TOKEN=""


RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/Devstored/homeydash.com.git && \
    npm install -g serve

WORKDIR /homeydash.com
EXPOSE 5000

CMD ["serve", "app"]



