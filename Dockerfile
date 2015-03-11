#
# Builds container to capture nmap application
# 
# 2015-03-11 BJS : Created and tested Dockerfile
#
# to build : docker build -t nmap_app .
# to run : docker run -it --rm nmap_app
#

FROM debian:sid
MAINTAINER Bjarne Sorensen <bjarne@ano.dk>

RUN apt-get update && apt-get install -qy \
    nmap \
    --no-install-recommends

ENTRYPOINT [ "nmap" ]
CMD localhost
