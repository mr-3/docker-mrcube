FROM bellsoft/liberica-openjdk-debian:21
LABEL maintainer="Takeshi Morita"

RUN apt update
RUN apt install -y locales
RUN locale-gen ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.utf8
RUN apt install -y wget
RUN apt install -y fonts-noto-cjk
RUN apt install -y libxext6 libxrender1 libxtst6 libxi6

RUN mkdir -p /home/mrcube
RUN useradd -l mrcube
RUN chown -R mrcube /home/mrcube
