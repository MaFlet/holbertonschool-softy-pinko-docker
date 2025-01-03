# Based on the latest ubuntu
FROM ubuntu:latest

# Update APT and upgrade current installed software
RUN apt-get update && \
    apt-get upgrade -y

# Once built, run docker image
CMD ["echo", "Hello, World!"]
