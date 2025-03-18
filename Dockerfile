FROM golang:1.24.1-alpine

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o /podman-docker

EXPOSE 8080

CMD [ "/podman-docker" ]
