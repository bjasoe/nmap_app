#
# Builds container to capture nmap application
# 
# 2018-12-28 BJS : refresh nmap
# 2015-03-11 BJS : Created and tested Dockerfile
#
# to build : docker build --no-cache -t imagename .
# to run : docker run -it --rm imagename
#

FROM debian:sid
MAINTAINER Bjarne Sorensen <bjsdocker@ano.dk>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -qy \
    nmap 

ENTRYPOINT [ "nmap" ]

CMD ["--help"]
