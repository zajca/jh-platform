FROM node:10-alpine


ENV HOST 0.0.0.0
ENV PORT 8080
EXPOSE 8080
WORKDIR /usr/src/app

RUN mkdir -p "/usr/src/app/.npm_cache" && npm config set cache "/usr/src/app/.npm_cache" --global

COPY run.sh /run.sh
RUN chmod 755 /run.sh

ENTRYPOINT [ "/run.sh"]
CMD ["dev" , "install"]
