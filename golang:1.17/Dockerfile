FROM golang:1.17.8-alpine3.15 as build
WORKDIR /go
RUN echo "install air for live reloading" && \
    apk --no-cache add curl && \
    curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s && \
    mv ./bin/air /bin/air && \
    echo "install build-base because it's required dlv debugger" && \
    apk --no-cache add build-base && \
    go install github.com/go-delve/delve/cmd/dlv@latest

# --------------------------------
FROM golang:1.17.8-alpine3.15 as develop
RUN touch /bin/start.sh && apk --no-cache add bash
COPY --from=build /bin/air /bin/air
COPY --from=build /go/bin/dlv /go/bin/dlv
CMD [ "air" ]