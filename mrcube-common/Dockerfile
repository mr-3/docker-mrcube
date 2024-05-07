FROM ubuntu:24.04
LABEL maintainer="Takeshi Morita"

RUN apt update
RUN apt install -y locales
RUN locale-gen ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.utf8
RUN apt install -y language-pack-ja-base language-pack-ja fonts-noto-cjk
RUN apt install -y wget
RUN apt install -y openjdk-21-jdk

RUN mkdir -p /home/mrcube
RUN useradd -l mrcube
RUN chown -R mrcube /home/mrcube
