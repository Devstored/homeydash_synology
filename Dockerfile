FROM node:latest
LABEL maintainer="Dino https://community.athom.com/u/dinorayn"


ARG HOMEY_TOKEN
ENV HOMEY_TOKEN=$HOMEY_TOKEN


RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/Devstored/homeydash.com.git && \
    npm install -g serve

WORKDIR /homeydash.com
ADD app/token/token.txt .
RUN chmod 775 app/token/
RUN echo $HOMEY_TOKEN > app/token/token.txt
VOLUME ["app/token"]
EXPOSE 5000

RUN echo $HOMEY_TOKEN

CMD ["serve", "app"]



