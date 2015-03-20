
#
# io.js v1.6.1
#

FROM ubuntu:14.04
MAINTAINER Marcus André <hello@marcusandre.de>
ENV VERSION 1.6.1

#
# System
#

RUN apt-get update -qq
RUN apt-get install -y make gcc g++ python curl libssl-dev

#
# Install iojs
#

RUN curl -L# http://iojs.org/dist/v$VERSION/iojs-v$VERSION-linux-x64.tar.gz | tar -zx --strip 1 -C /usr/local

#
# Entry
#

CMD ["iojs"]
