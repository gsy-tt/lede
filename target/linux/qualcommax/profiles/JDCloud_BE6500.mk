define Profile/JDCloud_BE6500
  NAME := JDCloud BE6500 (IPQ5332)
  PACKAGES := \
    kmod-usb3 kmod-usb-storage kmod-fs-exfat \
    kmod-fs-ext4 kmod-fs-vfat kmod-nls-cp437 \
    kmod-nls-iso8859-1 kmod-nls-utf8 \
    kmod-ath10k-ct kmod-ath11k \
    ath10k-firmware-qca988x-ct \
    ath11k-firmware-qcn6224 \
    luci luci-i18n-base-zh-cn \
    luci-i18n-firewall-zh-cn \
    luci-i18n-wireless-zh-cn \
    luci-i18n-system-zh-cn \
    luci-i18n-webadmin-zh-cn \
    wpad-basic-wolfssl
endef
$(eval $(call Profile,JDCloud_BE6500))
