FROM alpine

RUN apk add --update curl && rm -rf /var/cache/apk/*

RUN apk add --no-cache tzdata
ENV TZ Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV URL "https://google.com"

ENV INTERVAL 60

ENV TIMEOUT 5

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]



