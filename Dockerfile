FROM ubuntu
MAINTAINER Alexandru Asofroniei
RUN apt-get update && \
	apt-get install -y dnscrypt-proxy dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
COPY entrypoint.sh /entrypoint.sh
COPY dnscrypt-resolvers.csv /usr/share/dnscrypt-proxy/dnscrypt-resolvers.csv
RUN chmod +x /entrypoint.sh
ENV RESOLVER=cisco
ENTRYPOINT ["/entrypoint.sh"]
