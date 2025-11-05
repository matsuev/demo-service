# STAGE ONE

FROM golang AS builder

WORKDIR /goapp

COPY ./go/main.go .

RUN go build -o goservice /goapp/main.go

# STAGE TWO

FROM alpine:3.22.2

WORKDIR /goapp

COPY --from=builder ./goapp/goservice .

CMD ["/goapp/goservice"]