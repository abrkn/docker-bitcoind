FROM phusion/baseimage:latest
RUN \
    sudo add-apt-repository ppa:bitcoin/bitcoin && \
    sudo apt-get update && \
    sudo apt-get install -y bitcoind
EXPOSE 8332
CMD ["/usr/bin/bitcoind", "-datadir=/data", "--printtoconsole"]

