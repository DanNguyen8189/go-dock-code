FROM golang:alpine AS build-env
WORKDIR build/
COPY . .
#install make
RUN apk add g++ && apk add make
#install git RUN apk update && apk add git??
RUN apk add git

WORKDIR src/
#temporary - make all doesn't work because some tests that it comes with fails
RUN make build
