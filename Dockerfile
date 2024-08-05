FROM golang:alpine AS build

# Copy the rest of the project and build
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -o /ingenious-bot .

# Reset to scratch to drop all of the above layers and only copy over the final binary
FROM scratch
ENV HOME=/home
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=build ./ingenious-bot /bin/ingenious-bot

ENTRYPOINT ["/bin/ingenious-bot"]