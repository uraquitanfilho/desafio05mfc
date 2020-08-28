FROM node:12.14.0-alpine3.11

RUN apk add --no-cache openssl


RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY package*.json ./
COPY . .

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production
RUN npm build

ENTRYPOINT ["npm","run", "start"]

