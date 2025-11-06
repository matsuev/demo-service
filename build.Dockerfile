# STAGE ONE

FROM golang AS builder

WORKDIR /goapp

COPY ./go/main.go .

RUN go build -o goservice /goapp/main.go

# STAGE TWO

FROM alpine:3.22.2

ENV DB_HOST="localhost"
ENV DB_PORT="5432"
ENV DB_USER="postgres"
ENV DB_PASS="postgres"

WORKDIR /goapp

COPY --from=builder ./goapp/goservice .

CMD ["/goapp/goservice"]