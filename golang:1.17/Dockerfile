# --------------------------------
FROM golang:1.17.8-alpine3.15 as build
WORKDIR /go

# build-base package is required delve
# hadolint ignore=DL4006
RUN apk upgrade &&\ 
    apk --no-cache add curl=7.80.0-r0 build-base=0.5-r2 &&\
    curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s &&\
    go install github.com/go-delve/delve/cmd/dlv@latest

# --------------------------------
FROM golang:1.17.8-alpine3.15 as develop
RUN  apk --no-cache add bash=5.1.16-r0
COPY --from=build /go/bin/air /go/bin/air
COPY --from=build /go/bin/dlv /go/bin/dlv
COPY ./scripts/start.sh /bin/start.sh
CMD [ "air" ]