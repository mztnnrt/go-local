#!/bin/sh

docker build . -t mztnnrt/go-local:1.22 -t mztnnrt/go-local:latest -f golang:1.22/Dockerfile &&\
docker push mztnnrt/go-local:1.22
docker push mztnnrt/go-local:latest