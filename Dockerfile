FROM golang:1.18-alpine3.16

LABEL Maintainer=HellP

RUN apk update && apk upgrade && \
    apk --update add git gcc g++ bash

WORKDIR /app

COPY . .

RUN go mod download all
RUN go install golang.org/x/tools/cmd/present

EXPOSE 3999

CMD present -http=0.0.0.0:3999 -play=false