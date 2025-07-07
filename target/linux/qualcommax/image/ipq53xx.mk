# 添加JDCloud BE6500设备配置
define Device/jdcloud_be6500
  DEVICE_VENDOR := JDCloud
  DEVICE_MODEL := BE6500
  DEVICE_DTS := qcom-ipq5332-jdcloud-be6500
  DEVICE_PACKAGES := \
    kmod-ath10k-ct kmod-ath11k \
    ath10k-firmware-qca988x-ct \
    ath11k-firmware-qcn6224 \
    kmod-usb3 kmod-usb-xhci-hcd \
    kmod-leds-gpio kmod-gpio-button-hotplug \
    kmod-switch-qca8386 kmod-qca-nss-drv \
    kmod-qca-nss-gmac kmod-qca-nss-crypto \
    luci
  IMAGE_SIZE := 124MiB
  UBINIZE_OPTS := -E 5
  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma
  KERNEL_NAME := zImage
  KERNEL_LOADADDR := 0x42000000
  IMAGES := sysupgrade.bin
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += jdcloud_be6500
