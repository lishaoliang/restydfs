#!/bin/sh

# libfastcommon
wget -O libfastcommon.tar.gz https://github.com/happyfish100/libfastcommon/archive/V1.0.43.tar.gz
tar -zxvf libfastcommon.tar.gz

# fastdfs
wget -O fastdfs.tar.gz  https://github.com/happyfish100/fastdfs/archive/V6.05.tar.gz
tar -zxvf fastdfs.tar.gz

# openresty
wget -O openresty.tar.gz https://openresty.org/download/openresty-1.15.8.2.tar.gz
tar -zxvf openresty.tar.gz

# fastdfs-nginx-module
wget -O fastdfs-nginx-module.tar.gz https://github.com/happyfish100/fastdfs-nginx-module/archive/V1.22.tar.gz
tar -zxvf fastdfs-nginx-module.tar.gz
