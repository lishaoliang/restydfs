#!/bin/sh

MY_PWD=$(dirname $(readlink -f $0))
SUDO=sudo
SH=sh

echo "MY_PWD=${MY_PWD}"
echo "SUDO=${SUDO}"
echo "SH=${SH}"



cd ${MY_PWD}/libfastcommon-1.0.43
echo "cd $(pwd); make.sh; make.sh install"
./make.sh
${SUDO} ./make.sh install



cd ${MY_PWD}/fastdfs-6.05
echo "cd $(pwd); make.sh; make.sh install"
./make.sh
${SUDO} ./make.sh install



cd ${MY_PWD}/openresty-1.15.8.2
echo "cd $(pwd); make.sh; make.sh install"
./configure \
--conf-path=/usr/local/openresty/nginx/conf/nginx.conf \
--http-log-path=/work/restydfs/nginx/logs/access.log \
--error-log-path=/work/restydfs/nginx/logs/error.log \
--pid-path=/work/restydfs/nginx/logs/nginx.pid \
--http-client-body-temp-path=/work/restydfs/nginx/client_body_temp \
--http-fastcgi-temp-path=/work/restydfs/nginx/fastcgi_temp \
--http-proxy-temp-path=/work/restydfs/nginx/proxy_temp \
--http-scgi-temp-path=/work/restydfs/nginx/scgi_temp \
--http-uwsgi-temp-path=/work/restydfs/nginx/uwsgi_temp \
--add-module=${MY_PWD}/fastdfs-nginx-module-1.22/src

make
${SUDO} make install
