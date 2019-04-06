FROM alpine

RUN apk add --update curl && rm -rf /var/cache/apk/*

ENV HTTPS_HOST dns.google.com

ENV INTERVAL 60

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]



