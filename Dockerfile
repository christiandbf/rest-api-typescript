FROM node:12.14.1-alpine3.11 AS builder

WORKDIR /usr/src/app
COPY . .

RUN npm install
RUN npm run build

FROM node:12.14.1-alpine3.11 AS ts-prod

WORKDIR /usr/src/app

EXPOSE 3000

COPY package* ./
RUN npm install --production

COPY --from=builder ./usr/src/app/dist ./dist

CMD npm start
