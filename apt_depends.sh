#!/bin/sh

SUDO=sudo
APT=apt-get


${SUDO} ${APT} update
${SUDO} ${APT} install wget


${SUDO} ${APT} install build-essential make curl perl
${SUDO} ${APT} install zlib1g zlib1g.dev openssl libssl-dev libperl-dev libpcre3 libpcre3-dev

