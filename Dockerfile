FROM fedora:28

COPY bitcoind /usr/local/bin

RUN yum -y install git gcc-c++ libtool make autoconf automake openssl-devel libevent-devel boost-devel libdb-devel libdb-cxx-devel gmp-devel libmpc-devel mpfr-devel zlib-devel

CMD ["/usr/local/bin/bitcoind", "-server", "-rpcuser=foobar", "-rpcpassword=foobar", "-rest", "-listen", "-rpcallowip=0.0.0.0/0"]
