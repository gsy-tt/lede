define Device/qcom_ipq5332_jdcloud_be6500
    $(call Device/FitImage)
    $(call Device/EmmcImage)
    SOC := ipq5332
    DEVICE_VENDOR := JDCloud
    DEVICE_MODEL := BE6500
    BLOCKSIZE := 64k
    PAGESIZE := 2048
    KERNEL_SIZE := 16384k  # 根据实际内核大小调整（16MB）
    ROOTFS_PARTSIZE := 10240  # 10GB（需确认eMMC总容量）
    FILESYSTEMS := squashfs ext4
    IMAGE/sysupgrade.bin := append-kernel | pad-to $$(KERNEL_SIZE) | append-rootfs | pad-rootfs | append-metadata
    DEVICE_PACKAGES += \
        kmod-ath11k \
        ath11k-firmware-qcn6224 \
        kmod-qca8386 \
        kmod-usb3 \
        luci \
        dnsmasq-full \
        firewall \
        kmod-fs-ext4 \
        e2fsprogs \
        kmod-gpio-button-hotplug
endef
TARGET_DEVICES += qcom_ipq5332_jdcloud_be6500
