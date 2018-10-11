FROM java:8-jre-alpine
MAINTAINER Jan <goarano@gmail.com>

WORKDIR /data
RUN apk update && apk add --no-cache unzip curl rsync

ENV MOD_VERSION 0.9.8

RUN curl http://solder.endermedia.com/repository/downloads/the-1710-pack/the-1710-pack_${MOD_VERSION}.zip -# -LO
RUN unzip the-1710-pack_${MOD_VERSION}.zip
RUN rm the-1710-pack_${MOD_VERSION}.zip

ADD eula.txt .
ADD launcher.sh .

ENV EULA_AGREE false
VOLUME /app
WORKDIR /app
EXPOSE 25565
ENTRYPOINT ["/data/launcher.sh"]

