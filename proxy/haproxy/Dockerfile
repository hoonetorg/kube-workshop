FROM million12/haproxy:1.6.3
MAINTAINER Christian Pointner <cpointner@mgit.at>

COPY kube-nomatch.http /usr/local/share/haproxy/
COPY run.sh initial.cfg /srv/

ENV HAPROXY_CONFIG /etc/haproxy/kube-haproxy.cfg

ENTRYPOINT [ "/srv/run.sh" ]
