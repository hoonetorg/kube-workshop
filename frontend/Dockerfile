FROM nginx:1.11

COPY data /usr/share/nginx/html

COPY conf /etc/nginx

COPY run.sh /run.sh

VOLUME /usr/share/nginx/html

VOLUME /etc/nginx

CMD ["/run.sh"]
