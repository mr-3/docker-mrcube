FROM morita/mrcube:common
LABEL maintainer="Takeshi Morita"

ARG VER
USER mrcube
ENV HOME=/home/mrcube
ENV LANG=ja_JP.UTF-8
ENV LANGUAGE=ja_JP:ja
ENV LC_ALL=ja_JP.UTF-8
ENV APP_VER=${VER}

RUN echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc
RUN wget -P /tmp -nv https://github.com/mr-3/mrcube/releases/download/${APP_VER}/mrcube-${APP_VER}-all.jar
WORKDIR /home/mrcube
CMD ["sh", "-c", "java -Dsun.java2d.xrender=false -Dsun.java2d.pmoffscreen=false -Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -jar -Djava2d.font.loadFontConf=true /tmp/mrcube-${APP_VER}-all.jar"]
