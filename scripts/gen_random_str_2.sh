#!/bin/bash
#==================================================
# DESCRIPTION:
# 将以上面gen_random_str.sh中结果文件名中的oldboy字符串全部改成oldgirl(最好用for循环实现),并且将扩展名html全部改成大写。
# HISTORY:
# 2019/07/07    auspbro@gmail.com    First release.
#==================================================
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

dir=/tmp/oldboy
cd $dir &&\
    for i in `ls *html` ; do
        ranStr=`echo $i | cut -c -10`
        mv $i ${ranStr}_oldgirl.HTML
    done
