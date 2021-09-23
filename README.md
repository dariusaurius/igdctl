# docker-igdctl
UPnP gateway port mapper with Docker

Builing Docker container:

   cd /home/docker/igdctl
   docker build -t igdctl .


List all open ports opened with UPnP:

  docker run --rm --network=host igdctl -l


Add port mapping:

  docker run --rm --network=host igdctl -a -e 80 -i 80 -I 192.168.178.10 -P TCP


Remove port mapping:

  docker run --rm --network=host igdctl -R -e 80 -P TCP
