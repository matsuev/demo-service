FROM alpine:3.22.2

ENV DB_HOST=""
ENV DB_PORT=""
ENV DB_USER=""
ENV DB_PASS=""

WORKDIR /go_app

COPY ./build/goservice .

CMD ["/go_app/goservice"]