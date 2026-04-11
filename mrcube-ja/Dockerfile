FROM morita/mrcube:26.4.2-common
LABEL maintainer="Takeshi Morita"

USER mrcube
ENV HOME /home/mrcube
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL=ja_JP.UTF-8

RUN echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc
RUN wget -P /tmp -nv https://github.com/mr-3/mrcube/releases/download/26.4.2/mrcube-26.4.2-all.jar
WORKDIR /home/mrcube
CMD java -Dsun.java2d.xrender=false -Dsun.java2d.pmoffscreen=false -Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -jar -Djava2d.font.loadFontConf=true /tmp/mrcube-26.4.2-all.jar
