FROM docker.io/kalilinux/kali-rolling

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical

USER root

RUN apt update \
    && apt install -y kali-linux-headless \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
