FROM ubuntu:latest
COPY feed.py /feed.py
ENTRYPOINT ["/feed.py"]
