FROM debian:stretch

ENV DEBIAN_FRONTEND noninteractive

# apt-utils seems missing and warnings are shown, so we install it.
RUN apt-get update -q -q && \
 apt-get install -q -q -y apt-utils && \
 echo 'UTC' > /etc/timezone && \
 dpkg-reconfigure tzdata && \
 apt-get upgrade -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY minit/minit /sbin/minit

ENTRYPOINT ["/sbin/minit"]
