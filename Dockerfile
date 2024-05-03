FROM ubuntu:24.04
LABEL maintainer="Takeshi Morita"

RUN apt update
RUN apt install -y locales
RUN locale-gen ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.utf8
RUN apt install -y language-pack-ja-base language-pack-ja fonts-noto-cjk
RUN apt install -y wget
RUN apt install -y openjdk-21-jdk

RUN mkdir -p /home/mrcube/mrcube-home
RUN useradd -l mrcube
RUN chown -R mrcube /home/mrcube

USER mrcube
ENV HOME /home/mrcube
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL=ja_JP.UTF-8

RUN echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc
WORKDIR /home/mrcube
RUN wget -nv https://github.com/mr-3/mrcube/releases/download/22.5.2/mrcube-22.5.2-all.jar

CMD java -Dsun.java2d.xrender=false -Dsun.java2d.pmoffscreen=false -Dremote.x11.workaround=false -Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -Dsun.java2d.renderer=sun.java2d.marlin.MarlinRenderingEngine -jar -Djava2d.font.loadFontConf=true /home/mrcube/mrcube-22.5.2-all.jar
