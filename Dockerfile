FROM golang:1.7

WORKDIR /go/src/bitbucket.org/devicetools/mqttcli
COPY . .

RUN go-wrapper download
RUN go-wrapper install

# CMD ["tail", "-f", "/dev/null"]
CMD ["/sbin/init"]
