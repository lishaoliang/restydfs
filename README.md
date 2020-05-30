# restydfs
使用openresty，fastdfs搭建简易文件服务

仅配置单服务器

# 使用步骤

## 1. 安装依赖库
* 示例: Ubuntu 18.04.3 LTS
```
chmod +x *.sh
./apt_depends.sh
```

## 2. 下载openresty,fastdfs等源码包
```
./wget_packs.sh
```

## 3. 编译安装执行档
```
./make_install.sh
```

## 4. 修改私有IP地址
```
vi ./check_ip.sh
将MY_IP=192.168.3.164 修改为对应的私有IP地址

执行修改
./check_ip.sh
```

## 5. 安装配置文件
* 确保存在 /work 目录
* mkdir /work

```
./setup.sh
```

## 6. 启动
```
/work/restydfs/restart_restydfs.sh
```

## 7. 测试
打开 http://192.168.3.164


## 8. 测试上传文件
```
./fdfs_upload_file.sh ./README.md
```
