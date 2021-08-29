FROM docker

RUN apk add --no-cache \
    make \
    curl

# install docker compose plugin
RUN mkdir -p ~/.docker/cli-plugins/
RUN curl -SL https://github.com/docker/compose-cli/releases/download/v2.0.0-rc.1/docker-compose-linux-amd64 -o ~/.docker/cli-plugins/docker-compose
RUN chmod +x ~/.docker/cli-plugins/docker-compose