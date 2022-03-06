#!/bin/sh

docker build . -t mztnnrt/go-local:1.17 -f golang:1.17/Dockerfile &&\
docker push mztnnrt/go-local:1.17 &&\
docker build . -t mztnnrt/go-local:1.18 -f golang:1.18/Dockerfile &&\
docker push mztnnrt/go-local:1.18