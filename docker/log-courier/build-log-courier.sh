#!/bin/bash

set -o errexit

BASEDIR=$PWD

# build from source
docker run --rm -v $BASEDIR/.src:/go/src -v $BASEDIR/.bin:/go/bin golang:alpine /bin/sh -c "apk update && \
   apk add git && \
   go get -d github.com/driskell/log-courier && \
   cd /go/src/github.com/driskell/log-courier && \
   go generate . ./lc-admin && \
   go install . ./lc-admin ./lc-tlscert"

docker build -t hub.c.163.com/gobyoung/log-courier:latest .

