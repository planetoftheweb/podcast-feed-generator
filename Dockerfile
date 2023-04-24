FROM ubuntu:latest

# Update apt-get and install necessary packages
RUN apt-get update && apt-get install -y \
    python \
    git \
    python-yaml

# Copy feed.py file to the Docker image
COPY feed.py /feed.py

# Copy entrypoint.sh file to the Docker image
COPY entrypoint.sh /usr/bin.entrypoint.sh

# Set the entrypoint for the Docker image
ENTRYPOINT ["/entrypoint.sh"]