FROM debian:jessie

MAINTAINER Martin Zajic <zajca@zajca.cz>

RUN apt-get update && apt-get install -y \
    nginx

ADD nginx.conf /etc/nginx/
ADD api.conf /etc/nginx/sites-available/
ADD auth.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/symfony.conf /etc/nginx/sites-enabled/api
RUN ln -s /etc/nginx/sites-available/symfony.conf /etc/nginx/sites-enabled/auth
RUN rm /etc/nginx/sites-enabled/default

RUN echo "upstream php-upstream-api { server api:9000; }" > /etc/nginx/conf.d/upstream_api.conf
RUN echo "upstream php-upstream-auth { server auth:9000; }" > /etc/nginx/conf.d/upstream_auth.conf

RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
