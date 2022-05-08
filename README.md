# AutoBuild-OpenWrt
[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat&logo=github&label=LICENSE)](https://github.com/zhengmz/AutoBuild-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/zhengmz/AutoBuild-OpenWrt.svg?style=flat&logo=appveyor&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/zhengmz/AutoBuild-OpenWrt.svg?style=flat&logo=appveyor&label=Forks&logo=github)
![GitHub last commit](https://img.shields.io/github/last-commit/zhengmz/AutoBuild-OpenWrt?label=Latest%20Commit&logo=github)

首先感谢：

- 感谢L大的源码 [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- 感谢 P3TERX: <https://github.com/P3TERX/Actions-OpenWrt>
  - 也感谢他提供 Docker 镜像 <https://github.com/P3TERX/openwrt-build-env>，可以方便在本地编译
- 感谢 eSir: <https://github.com/esirplayground/AutoBuild-OpenWrt>

## 1. 支持的设备列表

- 极路由4 / 极路由4增强版：HC5962

## 2. 关于应用选取

原则是：把必须使用的功能直接放到固件，其他功能以模块方式编译，再根据需要安装

## 3. 使用

- 需要定义 `secret.GH_PERSONAL_ACCESS_TOKEN`，用来同步代码库

