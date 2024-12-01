FROM python:3.12.7-alpine3.20

RUN apk add --no-cache ffmpeg

COPY requirements.txt /
RUN pip3 install -r /requirements.txt

RUN addgroup -S streamlink && adduser -S streamlink -G streamlink
USER streamlink

ENTRYPOINT ["streamlink"]
