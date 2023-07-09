#!/bin/sh

docker build . -t mztnnrt/go-local:1.21 -t mztnnrt/go-local:latest -f golang:1.21/Dockerfile &&\
docker push mztnnrt/go-local:1.21
docker push mztnnrt/go-local:latest