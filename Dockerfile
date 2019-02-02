FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    libopenmpi-dev \
    openmpi-bin \
    ghostscript \
    libgs-dev \
    libgd-dev \
    libexpat1-dev \
    zlib1g-dev \
    libxml2-dev \
    autoconf automake libtool \
    libhtml-template-compiled-perl \
    libxml-opml-simplegen-perl \
    libxml-libxml-debugging-perl

RUN cpan upgrade /(.*)/
RUN mkdir -p /opt/meme
ADD http://meme-suite.org/meme-software/5.0.4/meme-5.0.4.tar.gz /opt/meme
WORKDIR /opt/meme/
RUN tar zxvf meme-5.0.4.tar.gz && rm -fv meme-5.0.4.tar.gz
RUN cd meme-5.0.4 && \
	./configure --prefix=/opt/meme  --enable-build-libxml2 --enable-build-libxslt && \ 
	make && \
	make test

ENV PATH="/opt/bin:${PATH}"

