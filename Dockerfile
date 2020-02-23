ARG NODE_ENV=development

FROM node:12.14.1-stretch-slim AS builder

WORKDIR /usr/src/app
COPY . .

RUN npm i --silent
RUN npm run build

FROM node:12.14.1-stretch-slim AS main

ARG NODE_ENV

WORKDIR /usr/src/app

COPY package* ./
RUN NODE_ENV=$NODE_ENV npm i --silent

COPY . .
COPY --from=builder ./usr/src/app/dist ./dist

CMD npm start
