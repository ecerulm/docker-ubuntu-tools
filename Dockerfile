FROM index.docker.io/library/ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y iputils-ping openssh-client sshpass curl traceroute iproute2 net-tools wget lsb-release gnupg awscli
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update && apt-get install -y \
    postgresql-client-12 \
    dnsutils \
    netcat \
    stress \
    git 

