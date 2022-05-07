#!/bin/bash
# see: <https://github.com/TobKed/github-forks-sync-action.git>
# see: <https://github.com/sudo-bot/action-fork-sync.git>

#set -e

ACCESS_TOKEN=$1

if [ -z "$ACCESS_TOKEN" ]; then
	echo "ACCESS_TOKEN is null"
	exit 1
fi
echo "ACCESS_TOKEN: $ACCESS_TOKEN"

# 定义需要同步的仓库
# 名字一样，可以只写上游仓库即可
# 名字不一样，需要在后面加上自己取的名称如，并用括号
repos=(
https://github.com/coolsnowwolf/lede.git
https://github.com/coolsnowwolf/packages.git
https://github.com/coolsnowwolf/luci.git
https://github.com/fw876/helloworld.git
https://github.com/jerrykuku/luci-theme-argon.git
https://github.com/jerrykuku/luci-app-argon-config.git
https://github.com/kiddin9/luci-app-dnsfilter.git
https://github.com/destan19/OpenAppFilter.git
https://github.com/coolsnowwolf/routing.git
https://github.com/openwrt/telephony.git
#"https://github.com/openwrt/packages.git openwrt-packages"
#"https://github.com/openwrt/routing openwrt-routing"
#"https://github.com/openwrt/luci openwrt-luci"
)

sync() {
	upstream="$1"
	name="$2"
	[[ -z "$name" ]] && name=`echo "${1##*/}" | sed 's/\.git//'`
	#target="git@github.com:zhengmz/${name}.git"
	target="https://${GITHUB_ACTOR}:${ACCESS_TOKEN}@github.com/zhengmz/${name}.git"
	echo "upstream: [${upstream}] to target: [${target}]"
	#OPTS="--dry-run"
	#rm -fr $name
	#[[ -d $name ]] || git clone --bare --no-single-branch "${upstream}" "${name}"
	rm -fr $name
	git clone --bare --no-single-branch "${upstream}" "${name}"
	cd $name
	# --mirror 会删除自己创建的内容，如分支和 tag 等
	# 推送了 ref/*，且强制，并删除原有，相当加了 --force and --prune
	# 仓库弄乱了可以用这个命令恢复
	#git push --mirror "${target}"
	# 只推送 ref/heads/*
	git push --all "${target}"
	# 只推送 ref/tags/*
	git push --tags "${target}"
}

i=1
for r in "${repos[@]}"; do
	echo "$i: $r"
	((i=i+1))
	sync $r
done

