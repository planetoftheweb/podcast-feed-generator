FROM ubuntu:latest

# Update apt-get and install necessary packages
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN pip3 install PyYAML

# Copy feed.py file to the Docker image
COPY feed.py /usr/bin/feed.py

# Copy entrypoint.sh file to the Docker image
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint for the Docker image
ENTRYPOINT ["/entrypoint.sh"]