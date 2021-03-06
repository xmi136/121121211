#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# 请不要直接套用我其他机型的扩展或者插件，每个源码有些文件路径都多多少少不一样，直接套用会出错
#
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
#git clone https://github.com/281677160/openwrt-package package/123
git clone https://github.com/vernesong/OpenClash package/luci-app-openclash
git clone https://github.com/pymumu/smartdnsgit clone https://github.com/pymumu/openwrt-smartdns package/openwrt-smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
#git clone https://github.com/281677160/openwrt-package/luci-app-smartdns package/2
