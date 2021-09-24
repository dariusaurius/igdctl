FROM ubuntu:latest
RUN apt-get update
RUN apt-get install --yes perl
RUN apt-get install --yes libnet-upnp-perl

WORKDIR /opt
COPY bin/igdctl.pl /opt/igdctl.pl
 
ENTRYPOINT ["perl", "igdctl.pl"]
