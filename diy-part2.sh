#!/bin/bash
#
# Copyright (C) 2023 OpenWrt.org
#

# 修改默认IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 修改主机名
sed -i 's/OpenWrt/BE6500/g' package/base-files/files/bin/config_generate

# 修改默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 添加额外软件包
sed -i '/exit 0/d' package/lean/default-settings/files/zzz-default-settings
cat >> package/lean/default-settings/files/zzz-default-settings << EOF
uci set luci.main.mediaurlbase='/luci-static/argon'
uci commit luci

# 设置默认时区和时间
uci set system.@system[0].timezone='CST-8'
uci set system.@system[0].zonename='Asia/Shanghai'
uci commit system

# 启用WiFi
uci set wireless.radio0.disabled='0'
uci set wireless.radio1.disabled='0'
uci commit wireless

# 安装额外软件包
opkg update
opkg install luci-app-adblock-plus luci-app-ssr-plus luci-app-passwall luci-app-openclash
exit 0
EOF
