FROM ubuntu:16.04

ENV TZ="Europe/Helsinki"

RUN \
  apt-get update && \
  apt-get -y dist-upgrade && \
  apt-get install -y build-essential openssh-client libsasl2-dev libldap2-dev libssl-dev jq git && \
  apt-get install -y python2.7 python2.7-dev python-virtualenv python-pip python-pip-whl && \
  apt-get install -y python3.5 python3.5-dev python3.5-venv && \
  apt-get clean $$ \
  ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
  echo $TZ > /etc/timezone && \
  dpkg-reconfigure -f noninteractive tzdata

CMD ["bash"]
