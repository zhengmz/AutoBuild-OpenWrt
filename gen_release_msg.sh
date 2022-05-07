#!/bin/bash

srcdir=${1:-./}
file=$PWD/release.txt
cat >$file <<EOF
Autobuild | 自动编译

1. 本固件为自动编译
2. *.bin 为自动生成的镜像文件
3. *.tar.gz 为完整包，可用来安装模块

默认IP： 192.168.10.1 默认密码： password

使用到的仓库及其版本：

EOF
for d in `find $srcdir -type d -name ".git"`
do
	(
	cd $d/..
	name=$(basename $PWD); [[ "$name" == "lede" ]] && name="openwrt/lede"
        ver_date=$(git show -s --date=short --format="commit: %H, date: %cI")
	echo "- $name: $ver_date" >> $file
	)
done
for d in `find $srcdir -type d -name ".svn"`
do
	(
	cd $d/..
	name=$(basename $PWD)
	rev=$(svn info --show-item last-changed-revision)
	date=$(svn info --show-item last-changed-date)
	echo "- $name: rev:$rev, date:$date" >> $file
	)
done

