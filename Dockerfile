FROM node:latest

RUN npm install -g json-server

WORKDIR /data

COPY ./customerdata.json /data/

EXPOSE 3000

ENTRYPOINT ["json-server"]

CMD ["--watch", "customerdata.json", "--host", "0.0.0.0"]
