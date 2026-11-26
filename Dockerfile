FROM alpine:3
RUN apk add --no-cache busybox-extras
COPY index.html /www/index.html
EXPOSE 8080
CMD ["httpd", "-f", "-p", "8080", "-h", "/www"]
