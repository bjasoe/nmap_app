#
# Builds container to capture nmap application
# 
# 2024-12-16 BJS : refresh nmap
# 2018-12-28 BJS : refresh nmap
# 2015-03-11 BJS : Created and tested Dockerfile
#
# to build : docker build --no-cache -t imagename .
# to run : docker run -it --rm imagename
#

FROM debian:sid-slim as stage1
LABEL Bjarne Sorensen <bjsdocker@ano.dk>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y upgrade 


FROM stage1
RUN apt-get install -qy nmap 

ENTRYPOINT [ "nmap" ]

CMD ["--help"]
