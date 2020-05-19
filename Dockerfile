FROM node:alpine

USER root

# ELM

RUN apk add --no-cache --virtual .build-deps curl \
  && cd /root \
  && curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz \
  && gunzip elm.gz \
  && chmod +x elm \
  && mv elm /usr/local/bin \
  && apk del .build-deps 

# CREATE-ELM-APP

RUN yarn global add create-elm-app

EXPOSE 3000

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

WORKDIR /media
CMD [ "/usr/local/bin/elm" ]
