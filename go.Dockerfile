FROM alpine:3.22.2

WORKDIR /go_app

COPY ./build/goservice .

CMD ["/go_app/goservice"]