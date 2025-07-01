define Device/qcom_ipq5332_jdcloud_be6500
    $(call Device/FitImage)
    $(call Device/EmmcImage)
    SOC := ipq5332
    DEVICE_VENDOR := JDCloud
    DEVICE_MODEL := BE6500
    BLOCKSIZE := 64k
    PAGESIZE := 2048
    KERNEL_SIZE := 16384k  /* 根据实际内核大小调整（16MB） */
    ROOTFS_PARTSIZE := 10240  /* 10GB（需与eMMC剩余空间匹配） */
    FILESYSTEMS := squashfs ext4
    IMAGE/sysupgrade.bin := append-kernel | pad-to $$(KERNEL_SIZE) | append-rootfs | pad-rootfs | append-metadata
    DEVICE_PACKAGES += \
        kmod-ath11k \  /* 5G Wi-Fi驱动 */
        kmod-ath10k \  /* 2.4G Wi-Fi驱动 */
        ath11k-firmware-qcn6224 \  /* 5G固件 */
        ath10k-firmware-qcn5054 \  /* 2.4G固件 */
        kmod-qca8386 \  /* 交换机驱动 */
        kmod-usb3 \  /* USB3.0驱动 */
        luci \  /* Web管理界面 */
        dnsmasq-full \  /* DNS/DHCP */
        firewall \  /* 防火墙 */
        kmod-fs-ext4 \  /* ext4文件系统 */
        e2fsprogs \  /* ext4工具 */
        kmod-gpio-button-hotplug  /* 按键热插拔 */
endef
TARGET_DEVICES += qcom_ipq5332_jdcloud_be6500