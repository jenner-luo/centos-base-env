FROM centos
LABEL maintainer="Jenner.luo"
#install python3.7.3 and go1.12.6 and docker-ce and git
RUN yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel \
    readline-develtk-devel gdbm-devel db4-devel libpcap-devel xz-devel libffi-devel gcc make \
    && curl https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz -o Python-3.7.3.tar.xz \
    && tar -xf Python-3.7.3.tar.xz && cd Python-3.7.3 && ./configure --enable-optimizations \
    && make && make install && cd - && rm -f Python-3.7.3.tar.xz && rm -rf Python-3.7.3