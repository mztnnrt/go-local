#!/bin/sh

apk upgrade &&\
# build-base package is required delve
apk --no-cache add curl=7.80.0-r0 build-base=0.5-r2 &&\
curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s &&\
go install github.com/go-delve/delve/cmd/dlv@latest