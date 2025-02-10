FROM golang:1.17-alpine AS builder

WORKDIR /build

ENV GO111MODULE=on \
    GOPROXY=https://goproxy.cn,direct

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build  -gcflags "all=-N -l" -o main cmd/main.go


FROM ubuntu:16.04

RUN mkdir -p kubeedge

COPY --from=builder /build/main kubeedge/
COPY ./config.yaml kubeedge/

WORKDIR kubeedge
