#!/bin/sh

# docker build . -t mztnnrt/go-local:1.17 -f golang:1.17/Dockerfile &&\
# docker push mztnnrt/go-local:1.17 &&\

# docker build . -t mztnnrt/go-local:1.18 -f golang:1.18/Dockerfile &&\
# docker push mztnnrt/go-local:1.18

# docker build . -t mztnnrt/go-local:1.19 -f golang:1.19/Dockerfile &&\
# docker push mztnnrt/go-local:1.19

docker build . -t mztnnrt/go-local:1.20 -t mztnnrt/go-local:latest -f golang:1.20/Dockerfile &&\
docker push mztnnrt/go-local:1.20
docker push mztnnrt/go-local:latest