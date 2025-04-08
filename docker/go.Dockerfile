FROM golang:1.24-alpine

WORKDIR /app

COPY go-api/go.mod ./
RUN go mod download

COPY go-api/ .

CMD ["go", "run", "."]
