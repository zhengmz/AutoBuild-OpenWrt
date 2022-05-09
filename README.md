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

## 附录一 应用列表

luci-app-accesscontrol  访问时间控制
luci-app-adbyby-plus    广告屏蔽大师Plus +
luci-app-adguardhome    Adguardhome广告屏蔽
luci-app-airplay2       Airplay推流
luci-app-amule  跨平台ED2K/KAD客户端
luci-app-aria2  多协议多线程的下载器
luci-app-arpbind        IP/MAC绑定
luci-app-autoreboot     定时计划重启
luci-app-brook-server   Brook代理服务器
luci-app-cifs-mount     CIFS/SMB挂载设置
luci-app-cifsd  CIFS/SMB网络共享
luci-app-clash  Clash代理客户端
luci-app-commands       Shell命令模块
luci-app-control-timewol        定时网络唤醒
luci-app-control-webrestriction 访问限制
luci-app-control-weburl 网址过滤
luci-app-ddns   动态DNS
luci-app-diag-core      Core诊断工具
luci-app-diskman        Diskman磁盘管理
luci-app-dnsforwarder   DNSForwarder防DNS污染
luci-app-dockerman      Docker
luci-app-fileassistant  文件助手
luci-app-filebrowser    文件浏览器
luci-app-filetransfer   文件传输
luci-app-firewall       防火墙
luci-app-flowoffload    Turbo ACC网络加速
luci-app-frpc   Frpc内网穿透
luci-app-guest-wifi     访客WiFi
luci-app-haproxy-tcp    Haproxy负责均衡
luci-app-hd-idle        硬盘休眠
luci-app-ipsec-vpnd     Ipsec vpn 服务器
luci-app-ipsec-vpnserver-manyusers      Ipsec vpn 服务器
luci-app-kcptun Kcptun加速
luci-app-meshwizard     网络设置向导
luci-app-minidlna       完全兼容Dlna/Upnp-av客户端的服务器软件
luci-app-mjpg-streamer  兼容Linux-UVC的摄像头程序
luci-app-music-remote-center    Pchifi数字转盘遥控
luci-app-mwan3  Mwan负载均衡
luci-app-mwan3helper    Mwan3分流助手
luci-app-netdata        Netdata实时图表监控
luci-app-nfs    Nfs网络共享
luci-app-nft-qos        Qos流控 Nftables版
luci-app-nlbwmon        网络带宽监视器
luci-app-nps    内网穿透nps
luci-app-ntpc   Ntpc时间同步服务器
luci-app-openclash      Open Clash代理客户端
luci-app-openvpn        Open Vpn客户端
luci-app-openvpn-server Open Vpn服务端
luci-app-p910nd 打印服务模块
luci-app-passwall       PassWall代理客户端
luci-app-pppoe-relay    PPPoE穿透
luci-app-pppoe-server   PPPoE服务端
luci-app-pptp-vpnserver-manyusers       PPTP Vpn服务端
luci-app-ps3netsrv      PS3 NET服务器
luci-app-qbittorrent    BT下载工具
luci-app-qos    流量服务质量(QoS)流控
luci-app-ramfree        释放内存
luci-app-rclone Rclone命令行工具
luci-app-samba4 网络共享(samba4)
luci-app-serverchan     微信推送
luci-app-sfe    Turbo ACC网络加速
luci-app-sqm    流量智能队列管理(QOS)
luci-app-ssr-libev-server       ShadowsocksR Libev 服务器
luci-app-ssr-plus       ShadowSocksR Plus+
luci-app-ssrserver-python       Ssr Python服务器
luci-app-statistics     流量监控工具
luci-app-syncdial       多线多拨
luci-app-transmission   BT下载工具
luci-app-trojan-server  Trojan Server
luci-app-ttyd   TTYD 终端命令行
luci-app-udpxy  Udpxy做组播服务器
luci-app-uhttpd Uhttpd Web服务器
luci-app-upnp   通用即插即用UPnP(端口自动转发)
luci-app-usb-printer    USB 打印服务器
luci-app-v2ray-server   V2ray Server
luci-app-verysync       微力同步
luci-app-vlmcsd KMS激活服务器
luci-app-vnstat VnStat图表网络监控
luci-app-vsftpd FTP服务器
luci-app-vssr   Hello Word代理客户端
luci-app-watchcat       断网检测功能与定时重启
luci-app-webadmin       Web管理页面设置
luci-app-wol    网络唤醒
luci-app-wrtbwmon       实时流量监测
luci-app-zerotier       Zerotier 虚拟 VPN LAN
luci-theme-argon        主题-Argon
luci-theme-argon-mod    主题-Argon_Light | Argon_Light_Green | Argon_Dark | Argon_Dark_Purple
luci-theme-edge 主题-Edge
luci-theme-infinityfreedom      主题-Infinityfreedom
luci-theme-netgear      主题-Netgear
luci-theme-opentomcat   主题-Opentomcat
luci-theme-rosy 主题-Rosy
open-vm-tools   适用于VMware的VM Tools
