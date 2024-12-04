# This dockerfile is for the production environment

FROM node:23-alpine

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY . /app/

EXPOSE 3000

CMD [ "node", "index.js" ]