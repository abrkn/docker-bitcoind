FROM dockerfile/ubuntu
RUN \
    sudo add-apt-repository ppa:bitcoin/bitcoin && \
    sudo apt-get update && \
    sudo apt-get install -y bitcoind
CMD ["/usr/bin/bitcoind", "-datadir=/data", "--printtoconsole"]
