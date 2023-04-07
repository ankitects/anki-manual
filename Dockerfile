FROM alpine:3.17 AS builder

ARG MDBOOK_VERSION=0.4.21-r0

RUN apk add --no-cache mdbook=$MDBOOK_VERSION

COPY . /src

WORKDIR /src

RUN mdbook build


FROM nginx:1.23

COPY --from=builder /src/book/html /usr/share/nginx/html
