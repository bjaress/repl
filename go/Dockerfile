FROM docker.io/golang:1.19.4-alpine3.17

RUN apk add --no-cache git
RUN go install github.com/x-motemen/gore/cmd/gore@latest
RUN go install github.com/mdempsky/gocode@latest   # for code completion

ENTRYPOINT ["gore"]
