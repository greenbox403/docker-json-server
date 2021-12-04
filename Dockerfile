FROM node:12-alpine

RUN apk update && apk add python2 bash && rm -rf /var/cache/apk/*

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 80
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []
