FROM ubuntu:latest

#COPY *.deb /tmp/
#RUN apt-get update && apt-get install -y /tmp/*.deb

COPY *.deb /tmp/

RUN apt-get update && \
    apt-get install -y /tmp/*.deb && \
    rm -rf /var/lib/apt/lists/*

CMD [ "/src/trispo" ]
