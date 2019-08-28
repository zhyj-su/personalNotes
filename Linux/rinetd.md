介绍:

<https://blog.csdn.net/u013755439/article/details/82079669>

可以快速实现端口转发



安装:

参考<https://www.cnblogs.com/defall/p/9441038.html>

下载安装包:

```shell
wget http://www.boutell.com/rinetd/http/rinetd.tar.gz
```

创建目录

```shell
mkdir  -p /usr/man/man8
```

解压

```
tar zxvf rinetd.tar.gz
```

编译

```
make && make install
```

配置

```shell
vim /etc/rinetd.conf
```

```properties
0.0.0.0 8080 192.168.1.123 8080
0.0.0.0 2222 192.168.0.124 3389
allow *.*.*.*
logfile /var/log/rinetd.log
```

启动

```shell
rinetd -c /etc/rinetd.conf
```

关闭

```
pkill rinetd
```

