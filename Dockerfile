FROM ubuntu:latest
RUN apt-get update
RUN apt-get install --yes perl
RUN apt-get install -y libnet-upnp-perl

WORKDIR /opt
COPY bin/igdctl.pl /opt/igdctl.pl
 
ENTRYPOINT ["perl", "igdctl.pl"]
