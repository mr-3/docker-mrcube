FROM morita/mrcube:26.4.3-common

ARG VER
LABEL maintainer="Takeshi Morita"

USER mrcube
ENV HOME=/home/mrcube
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
RUN wget -P /tmp -nv https://github.com/mr-3/mrcube/releases/download/${VER}/mrcube-${VER}-all.jar

WORKDIR /home/mrcube
CMD ["java -Dsun.java2d.xrender=false -Dsun.java2d.pmoffscreen=false -Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -jar -Djava2d.font.loadFontConf=true /tmp/mrcube-${VER}-all.jar"]
