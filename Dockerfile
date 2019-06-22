ARG PROJECT
ARG GOLANG_VERSION=latest

FROM golang:${GOLANG_VERSION} AS builder
ARG PROJECT

RUN go get ${PROJECT}
WORKDIR /go/src/${PROJECT}
RUN go build -a -v --ldflags '-extldflags "-static"' -tags netgo -installsuffix netgo -o /program .

FROM scratch
ENTRYPOINT ["/program"]
COPY --from=builder /program /program

