FROM node:12.14.0-alpine3.11

RUN apk add --no-cache openssl

WORKDIR /home/node/app

COPY . .

RUN npm install --prod

EXPOSE 3001

VOLUME /home/node/app

ENTRYPOINT ["npm","run", "start"]

