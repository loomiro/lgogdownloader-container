FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y lgogdownloader && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /gog
VOLUME ["/gog"]

ENTRYPOINT ["lgogdownloader"]
CMD ["--help"]
