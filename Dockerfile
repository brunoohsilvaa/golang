FROM golang:latest AS builder

WORKDIR /usr/src/app

COPY ./app .

RUN go build -o fullcycle main.go

FROM scratch

COPY --from=builder ./usr/src/app .

CMD ["./fullcycle"]