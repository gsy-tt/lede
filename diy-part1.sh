#!/bin/bash
#
# Copyright (C) 2023 OpenWrt.org
#

# 添加自定义源
echo 'src-git lienol https://github.com/Lienol/openwrt-package' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# 更新并安装源
./scripts/feeds update -a
./scripts/feeds install -a

# 添加自定义主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config

# 添加IPQ5332设备支持
cp -r ../target/linux/ipq807x target/linux/
