FROM golang:latest AS builder

WORKDIR /usr/src/app

COPY ./app .