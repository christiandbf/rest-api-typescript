# TypeScript API

[![Build Status](https://travis-ci.org/christiandbf/rest-api-typescript.svg?branch=master)](https://travis-ci.org/christiandbf/rest-api-typescript)

The purpose of this repository is to learn and practice TypeScript while developing an API REST.

## Build the Docker image

To build the Docker image, use the `docker build` command:

```shell
docker build . -t rest-api-typescript:latest
```

To stop the build on a specific stage, use the `target` option:

```shell
docker build --target builder -t rest-api-typescript:latest .
```

## Run the Docker image

To run the Docker image, use the `docker run` command:

```shell
docker run -e PORT=3000 -e MONGO_URL="mongodb://172.17.0.1:27017/typescript" -p 3000:3000 rest-api-typescript:latest
```

## Environment variables

```shell
PORT = 3000 # PORT to serve API
MONGO_URL = "mongodb://127.0.0.1:27017/typescript" # MONGO DB url
```
