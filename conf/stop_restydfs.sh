#!/bin/sh

SUDO=sudo


PATH_FASTDFS_BIN=/usr/bin
PATH_FASTDFS_CONF=/etc/fdfs

PATH_NGINX_BIN=/usr/local/openresty/nginx/sbin
PATH_NGINX_CONF=/usr/local/openresty/nginx/conf


# stop
${SUDO} ${PATH_NGINX_BIN}/nginx -s stop
${SUDO} ${PATH_FASTDFS_BIN}/fdfs_storaged ${PATH_FASTDFS_CONF}/storage.conf stop
${SUDO} ${PATH_FASTDFS_BIN}/fdfs_trackerd ${PATH_FASTDFS_CONF}/tracker.conf stop

${SUDO} killall nginx
${SUDO} killall fdfs_storaged
${SUDO} killall fdfs_trackerd