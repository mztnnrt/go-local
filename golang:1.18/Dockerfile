# --------------------------------
FROM golang:1.18-alpine3.15 as build
WORKDIR /go

COPY ./scripts/setup.sh /bin/setup.sh
RUN /bin/setup.sh

# --------------------------------
FROM golang:1.18-alpine3.15 as develop
COPY ./scripts/start.sh /bin/start.sh
RUN  apk --no-cache add bash
COPY --from=build /go/bin/air /go/bin/air
COPY --from=build /go/bin/dlv /go/bin/dlv
CMD [ "/bin/start.sh" ]