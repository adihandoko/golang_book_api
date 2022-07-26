FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on 
RUN cd /build && git clone git@github.com:adihandoko/golang_book_api.git

RUN cd /build/golang_book_api/main && go build
EXPOSE 8080

ENTRYPOINT [ "build/main" ]
