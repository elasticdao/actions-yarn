FROM ubuntu:focal

RUN apk add --no-cache git python2 build-base
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN nvm install 10.20.0
RUN npm i -g --force yarn
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
