# --------------------------------
FROM golang:1.22-alpine as build
WORKDIR /go

COPY ./scripts/setup.sh /bin/setup.sh
RUN /bin/setup.sh

# --------------------------------
FROM golang:1.22-alpine as develop
COPY ./scripts/start.sh /bin/start.sh
RUN  apk --no-cache add bash
COPY --from=build /go/bin/air /go/bin/air
COPY --from=build /go/bin/dlv /go/bin/dlv
CMD [ "/bin/start.sh" ]