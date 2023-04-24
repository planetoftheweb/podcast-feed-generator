FROM ubuntu:latest
RUN apk --update add git
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN pip3 install pyyaml --no-cache
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]