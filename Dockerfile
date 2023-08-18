FROM debian:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        gcc gdb libc6-dev procps && \
    rm -r /var/lib/apt/lists/*

COPY ./hello.out /
CMD /hello.out