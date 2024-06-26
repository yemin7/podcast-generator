FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    python3-yaml \
    git

#RUN python3.10 -m pip3 install PyYAML==6.0.1

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]