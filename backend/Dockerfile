FROM nginx:1.11

LABEL maintainer "Christoph Hack <chack@mgit.at>"

RUN set -x; \
  apt-get update -qq && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y -q \
    curl \
    telnet \
    lsof && \
  apt-get autoremove -y && \
  apt-get clean

COPY data /usr/share/nginx/html

COPY conf /etc/nginx

COPY run.sh /run.sh

VOLUME /usr/share/nginx/html

VOLUME /etc/nginx

CMD ["/run.sh"]
