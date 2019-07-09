#!/bin/bash
#使用for循环在/oldboy目录下批量创建10个html文件，其中每个文件需要包含10个随机小写字母加固定字符串oldboy

[[ -d /tmp/oldboy ]] || mkdir -p /tmp/oldboy
cd /tmp/oldboy 

for i in `seq 10` ; do
    filename=`echo $RANDOM | md5sum | tr '0-9' 'a-z' | cut -c 1-10`
    touch ${filename}_oldboy.html 
done
