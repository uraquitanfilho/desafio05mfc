FROM node:12.14.0-alpine3.11

RUN apk add --no-cache openssl

EXPOSE 3000

VOLUME /home/node/app

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY . .

RUN npm install 


ENTRYPOINT ["npm","run", "start"]

