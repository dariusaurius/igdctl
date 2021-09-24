# igdctl as Docker

Simple UPnP gateway port mapper for the *"Internet Gateway Device (IGD) Standardized Device Control Protocol"* based on PERL and started with Docker. 

The container uses the default gateway from the docker host and removes itself after execution.

## Installation

Building Docker container:

    git clone https://github.com/dariusaurius/igdctl.git
    docker build -t igdctl .

## Usage

*(-l)* List all mapped ports; on some routers/gateways it may only show mappings added via UPnP:

    docker run --rm --network=host igdctl -l

### Add mapping

*(-a)* Add *(-e)* external port ``80`` to *(-i)* internal port ``80`` for *(-I)* client ``192.168.178.10`` with *(-P)* protocol ``TCP``:

    docker run --rm --network=host igdctl -a -e 80 -i 80 -I 192.168.178.10 -P TCP


*(-R)* Remove *(-e)* external port mapping for port ``80`` on all clients with *(-P)* protocol set to ``TCP``:

    docker run --rm --network=host igdctl -R -e 80 -P TCP

## Help

Display *(-h)* help text with many more commands:

    docker run --rm --network=host igdctl -h


## Sources

[howtoforge.com - Administrating Your Gateway Device Via UPnP](https://www.howtoforge.com/administrating-your-gateway-device-via-upnp) by Vincent Wochnik

[perlmaven.com - Distributing a Perl script using Docker container](https://perlmaven.com/distributing-perl-script-using-docker) by Gabor Szabo
