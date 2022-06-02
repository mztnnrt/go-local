# --------------------------------
FROM golang:1.18.3-alpine3.15 as build
WORKDIR /go

COPY ./scripts/setup.sh /bin/setup.sh
RUN /bin/setup.sh

# --------------------------------
FROM golang:1.18.3-alpine3.15 as develop
RUN  apk --no-cache add bash=5.1.16-r0
COPY --from=build /go/bin/air /go/bin/air
COPY --from=build /go/bin/dlv /go/bin/dlv
COPY ./scripts/start.sh /bin/start.sh
CMD [ "/bin/start.sh" ]