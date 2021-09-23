# Dockerized igdctl

UPnP gateway port mapper with Docker

## Installation

Builing Docker container:

    cd /home/docker/igdctl
    docker build -t igdctl .

## Usage

List all open ports opened with UPnP:

    docker run --rm --network=host igdctl -l


Add port mapping:

    docker run --rm --network=host igdctl -a -e 80 -i 80 -I 192.168.178.10 -P TCP


Remove port mapping:

    docker run --rm --network=host igdctl -R -e 80 -P TCP


## Sources

[howtoforge.com - Administrating Your Gateway Device Via UPnP](https://www.howtoforge.com/administrating-your-gateway-device-via-upnp) by Vincent Wochnik

[perlmaven.com - Distributing a Perl script using Docker container](https://perlmaven.com/distributing-perl-script-using-docker) by Gabor Szabo
