FROM ubuntu:focal

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install build-essential
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN nvm install 10.20.0
RUN npm i -g --force yarn
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
