#!/bin/sh

SUDO=sudo

FILE_NAME=$1

if [ -z ${FILE_NAME} ]
then
	echo "usage:"
    echo "    ./fdfs_upload_file.sh ./111.txt"
    exit
fi

FDFS_ID=`/usr/bin/fdfs_upload_file /etc/fdfs/client.conf ${FILE_NAME}`
echo ${FDFS_ID}

/usr/bin/fdfs_file_info /etc/fdfs/client.conf ${FDFS_ID}
