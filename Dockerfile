FROM node:12.14.0-alpine3.11

RUN apk add --no-cache bash

RUN touch /home/node/.bashrc | echo "PS1='\w\$ '" >> /home/node/.bashrc

RUN npm config set cache /home/node/app/.npm-cache --global

WORKDIR /home/node/app

COPY . .

RUN npm install --prod

RUN npm run build

EXPOSE 8081

VOLUME /home/node/app

CMD ["npm","run", "start:prod"]

