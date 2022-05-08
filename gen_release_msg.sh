#!/bin/bash

srcdir=${1:-./}
file=$PWD/release.txt
cat >$file <<EOF
# Autobuild | 自动编译

## 文件说明

1. 本固件为自动编译
2. *.bin 为自动生成的固件文件
3. *.tar.gz 为完整包，可用来安装模块

## 默认参数

- 默认IP： 192.168.10.1
- 默认密码： password

---

## 使用到的仓库及其版本

EOF
for d in `find $srcdir -type d -name ".git"`
do
	(
	cd $d/..
	name=$(basename $PWD); [[ "$name" == "lede" ]] && name="openwrt/lede"
        ver_date=$(git show -s --date=short --format="commit: %H, date: %ci")
	echo "- <b>$name</b>: $ver_date" >> $file
	)
done
for d in `find $srcdir -type d -name ".svn"`
do
	(
	cd $d/..
	name=$(basename $PWD)
	rev=$(svn info --show-item last-changed-revision)
	date=$(svn info --show-item last-changed-date)
	echo "- <b>$name</b>: rev:$rev, date:$date" >> $file
	)
done

