# dnsmasq-dnscrypt-docker

This container allows you to run a dnscrypt-proxy server together with a dnsmasq caching server.

One would want to do this if they want to make encrypted DNS queries, and cache them for better performance.

To run this container you can build it using docker.

```docker build -t dnsmasq-dnscrypt .```

Or you can just pull it from the docker hub.

```docker pull alexaso/dnsmasq-dnscrypt```

To run it just do:

```sudo docker run -p 53:53/udp -p 53:53/tcp -d alexaso/dnsmasq-dnscrypt```

By default the dnscrypt-proxy server connects to the Cisco OpenDNS servers. You can change this by passing a new value to the RESOLVER variable:

```sudo docker run -p 53:53/udp -p 53:53/tcp -e RESOLVER=fvz-anyone -d alexaso/dnsmasq-dnscrypt```

You can see all the possible values for the RESOLVER variable here: https://github.com/jedisct1/dnscrypt-proxy/blob/master/dnscrypt-resolvers.csv
