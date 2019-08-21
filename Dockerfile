FROM node:8

ENV PORT 8080
EXPOSE 8080

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm i --production

COPY . .

CMD [ "npm", "start" ]
