FROM alpine:latest

ENV FLASK_APP=app

COPY flask /root/flask
COPY start.sh /root/flask/start.sh
WORKDIR /root/flask

RUN chmod 755 start.sh

RUN apk update \
    && apk add build-base linux-headers \
    && apk add python3=~3.11 \
    && apk add py3-pip python3-dev

RUN python -m venv .venv \
    && source .venv/bin/activate \
    && pip3 install -r requirements.txt

EXPOSE 8888
ENTRYPOINT ["./start.sh"]