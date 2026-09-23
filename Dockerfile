FROM golang:1.18 AS build
WORKDIR /app
COPY..
RUN go build -o notifications-service

FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY --from=build /app/notifications-service /usr/local/bin/notifications-service
CMD ["notifications-service"]