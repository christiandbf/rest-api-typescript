FROM node:12.14.1-alpine3.11 AS builder

WORKDIR /usr/src/app
COPY . .

RUN npm install --silent
RUN npm run build --silent

FROM node:12.14.1-alpine3.11 AS ts-prod

WORKDIR /usr/src/app

COPY package* ./
RUN npm install --production --silent

COPY --from=builder ./usr/src/app/dist ./dist

CMD npm start
