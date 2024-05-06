FROM ubuntu:24.04
LABEL maintainer="Takeshi Morita"

RUN apt update
RUN apt install -y locales
RUN locale-gen en_US.UTF-8
RUN localedef -f UTF-8 -i en_US en_US.utf8
RUN apt install -y language-pack-ja-base language-pack-ja fonts-noto-cjk
RUN apt install -y wget
RUN apt install -y openjdk-21-jdk

RUN mkdir -p /home/mrcube/mrcube-home
RUN useradd -l mrcube
RUN chown -R mrcube /home/mrcube

USER mrcube
ENV HOME /home/mrcube
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL=en_US.UTF-8
WORKDIR /home/mrcube
RUN wget -nv https://github.com/mr-3/mrcube/releases/download/24.5.1/mrcube-24.5.4-all.jar

CMD java -Dsun.java2d.xrender=false -Dsun.java2d.pmoffscreen=false -Dremote.x11.workaround=false -Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -Dsun.java2d.renderer=sun.java2d.marlin.MarlinRenderingEngine -jar -Djava2d.font.loadFontConf=true /home/mrcube/mrcube-24.5.1-all.jar
