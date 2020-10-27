FROM alpine:3.5

RUN set -x \
 && apk add --update --no-cache squid curl nano apache2-utils \
 && curl -Lo /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 \
 && chmod +x /usr/local/bin/dumb-init \
 && htpasswd -b -c /etc/squid/passwords admin adminpw


COPY squid.conf /etc/squid/squid.conf

EXPOSE 3128

ENTRYPOINT ["dumb-init"]
CMD ["squid", "-N"]
