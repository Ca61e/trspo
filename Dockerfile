FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  libstdc++6 \
  wget \
  dpkg \
  && run -rf /var/lib/apt/lists/*

WORKDIR /app
COPY trispo.deb /app/
RUN dpkg -i trispo.deb
RUN rm trispo.deb
CMD [ "/app/trispo" ]
