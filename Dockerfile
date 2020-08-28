FROM node:10-alpine
WORKDIR /app
COPY ${PWD}/package.json ./
RUN yarn
COPY . .
RUN yarn build
EXPOSE 5000
ENTRYPOINT ["sh", "-c", "yarn start:prod"]

