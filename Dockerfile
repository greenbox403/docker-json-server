FROM node:12-alpine

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 8765
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []
