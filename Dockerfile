FROM centos:7
MAINTAINER Eslam ElHusseiny <eslamh@cakesolutions.net>

WORKDIR /tmp
RUN yum install -y gcc wget make
RUN wget http://siag.nu/pub/pen/pen-0.30.1.tar.gz
RUN tar zxvf pen-0.30.1.tar.gz
WORKDIR /tmp/pen-0.30.1
RUN ./configure
RUN make
RUN make install
WORKDIR /root
RUN rm -rf /tmp/pen-0.30.1
COPY assets/pen.sh /bin/pen.sh
ENTRYPOINT /bin/bash /bin/pen.sh
