FROM node:latest
MAINTAINER Dino

RUN echo "Based on Docker Image : https://github.com/R0GGER/docker-homeydash"

ENV REPO_NAME="daneedk"
ENV PORT=6000

RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/daneedk/homeydash.com.git && \
    npm install -g serve

WORKDIR /homeydash.com
EXPOSE $PORT

CMD ["serve", "app"]

# BUILD CUSTOM REPOSITORY:
#
# REPO=[NAME]
# docker build --build-arg REPO=athombv -t homeydash .

# RUN (testing)
# docker run --rm --name homeydash -p 5000:5000 homeydash

# RUN (and keep it running):
# docker run -d --name homeydash --restart always -p 5000:5000 homeydash

