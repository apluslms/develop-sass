FROM node:12-alpine

RUN : \
 && apk add --no-cache tini \
 && npm -g install sass \
 && :

# tini fixes Ctrl+C for the sass
ENTRYPOINT [ "/sbin/tini", "-g", "-e", "130", "--" ]
CMD [ "sass" ]
