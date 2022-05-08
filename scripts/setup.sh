#!/bin/sh

apk upgrade &&\
# build-base package is required delve
apk --no-cache add curl build-base &&\
curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s &&\
go install github.com/go-delve/delve/cmd/dlv@latest