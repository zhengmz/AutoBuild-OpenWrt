#!/bin/bash

srcdir=${1:-./}
file=$PWD/release.txt
cat >$file <<EOF
## Autobuild | 自动编译

### 文件说明

1. 本固件为自动编译
1. \`*.bin\` 为自动生成的固件文件
1. \`*.7z\` 和 \`*.zip\` 为已编译通过的模块包
   - 其中 \`targets/**/sha256sums\` 文件有固件和 SDK 文件的校验值

### 默认参数

- 默认IP： \`192.168.10.1\`
- 默认密码： \`password\`

---

### 使用到的仓库及其版本

EOF

[ "x$BUILD_SDK" = "xtrue" ] && sed -i '7i\1. \`*sdk*.xz\` 为自动生成的 SDK 文件' $file

for d in `find $srcdir -type d -name ".git"`
do
	(
	cd $d/..
	name=$(basename $PWD); [[ "$name" == "lede" ]] && name="openwrt/lede"
	upstream=$(git remote show -n origin|grep "Fetch URL"|awk -F': ' '{print $2}')
	upstream=${upstream%.git}
        #ver_date=$(git show -s --date=short --format="commit: %H, date: %ci")
	#echo "- <b>$name</b>: $ver_date" >> $file
        commit=$(git show -s --date=short --format="%H")
        date=$(git show -s --date=short --format="%ci")
	#echo "- <b>$name</b>: commit:$commit, date:$date" >> $file
	echo "- [$name]($upstream): commit:[$commit]($upstream/tree/$commit), date:$date" >> $file
	)
done
for d in `find $srcdir -type d -name ".svn"`
do
	(
	cd $d/..
	name=$(basename $PWD)
	upstream=$(svn info --show-item repos-root-url)
	rev=$(svn info --show-item last-changed-revision)
	date=$(svn info --show-item last-changed-date)
	#echo "- <b>$name</b>: rev:$rev, date:$date" >> $file
	echo "- [$name]($upstream): rev:$rev, date:$date" >> $file
	)
done

