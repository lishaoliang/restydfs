#!/bin/sh

MY_PWD=$(dirname $(readlink -f $0))
SUDO=sudo
SH=sh

echo "MY_PWD=${MY_PWD}"
echo "SUDO=${SUDO}"
echo "SH=${SH}"

MY_IP=192.168.3.164

sed -i "145c tracker_server = ${MY_IP}:22122" ${MY_PWD}/conf/fastdfs/storage.conf
sed -i "40c tracker_server = ${MY_IP}:22122" ${MY_PWD}/conf/fastdfs/mod_fastdfs.conf
sed -i "22c tracker_server = ${MY_IP}:22122" ${MY_PWD}/conf/fastdfs/client.conf
