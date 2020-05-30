#!/bin/sh

MY_PWD=$(dirname $(readlink -f $0))
SUDO=sudo
SH=sh

echo "MY_PWD=${MY_PWD}"
echo "SUDO=${SUDO}"
echo "SH=${SH}"


# fastdfs base_path
PATH_RESTYDFS=/work/restydfs
${SUDO} mkdir -pv ${PATH_RESTYDFS}
${SUDO} mkdir -pv ${PATH_RESTYDFS}/fastdfs
${SUDO} mkdir -pv ${PATH_RESTYDFS}/nginx
${SUDO} mkdir -pv ${PATH_RESTYDFS}/nginx/logs
${SUDO} mkdir -pv ${PATH_RESTYDFS}/nginx/client_body_temp
${SUDO} mkdir -pv ${PATH_RESTYDFS}/nginx/fastcgi_temp
${SUDO} mkdir -pv ${PATH_RESTYDFS}/nginx/proxy_temp
${SUDO} mkdir -pv ${PATH_RESTYDFS}/nginx/scgi_temp
${SUDO} mkdir -pv ${PATH_RESTYDFS}/nginx/uwsgi_temp
${SUDO} mkdir -pv ${PATH_RESTYDFS}/nginx/html
${SUDO} mkdir -pv ${PATH_RESTYDFS}/lualib


# copy *.sh
${SUDO} cp -r ${MY_PWD}/conf/*.sh ${PATH_RESTYDFS}
${SUDO} chmod +x ${PATH_RESTYDFS}/*.sh
echo "${SUDO} cp -r ${MY_PWD}/conf/*.sh ${PATH_RESTYDFS}"

# copy *.lua, *.so
${SUDO} cp -rf ${MY_PWD}/lualib/* ${PATH_RESTYDFS}/lualib
${SUDO} cp -rf ${MY_PWD}/luaso/* /usr/local/openresty/lualib


# copy *.html
${SUDO} cp -rf ${MY_PWD}/html/* ${PATH_RESTYDFS}/nginx/html


# fastdfs conf path
PATH_FASTDFS_CONF=/etc/fdfs/
${SUDO} cp -r ${MY_PWD}/conf/fastdfs/* ${PATH_FASTDFS_CONF}
echo "${SUDO} cp -r ${MY_PWD}/conf/fastdfs/* ${PATH_FASTDFS_CONF}"


# nginx conf path
PATH_NGINX_CONF=/usr/local/openresty/nginx/conf
${SUDO} cp -r ${MY_PWD}/conf/nginx/* ${PATH_NGINX_CONF}
echo "${SUDO} cp -r ${MY_PWD}/conf/nginx/* ${PATH_NGINX_CONF}"


# other
${SUDO} rm -r ${PATH_RESTYDFS}/fastdfs/data/M00
${SUDO} ln -s ${PATH_RESTYDFS}/fastdfs/data ${PATH_RESTYDFS}/fastdfs/data/M00
echo "${SUDO} ln -s ${PATH_RESTYDFS}/fastdfs/data ${PATH_RESTYDFS}/fastdfs/data/M00"
