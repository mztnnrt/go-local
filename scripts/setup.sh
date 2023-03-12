#!/bin/sh

apk upgrade &&\
# build-base package is required delve
apk --no-cache add curl build-base &&\
go install github.com/cosmtrek/air@latest &&\
go install github.com/go-delve/delve/cmd/dlv@latest