FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  libstdc++6 \
  dpkg \
  && run -rf /var/lib/apt/lists/*

COPY trispo.deb /tmp/trispo.deb

RUN dpkg -i /tmp/trispo.deb || apt-get install -f -y
WORKDIR /usr/bin
CMD [ "usr/bin/trispo" ]
