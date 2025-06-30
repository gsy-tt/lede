define Device/qcom_ipq5332_jdcloud_be6500
    $(call Device/FitImage)
    $(call Device/EmmcImage)
    SOC := ipq5332
    DEVICE_VENDOR := JDCloud
    DEVICE_MODEL := BE6500
    BLOCKSIZE := 64k              # eMMC 块大小（保持默认）
    PAGESIZE := 2048              # eMMC 页大小（保持默认）
    
    # 调整内核和根文件系统分区大小
    KERNEL_SIZE := 16384k         # 内核分区增大到 16MB（预留空间）
    ROOTFS_PARTSIZE := 10240      # 根文件系统分区：20GB（可根据需求调整）
    
    # 启用 squashfs（可读写）和 ext4 格式
    FILESYSTEMS := squashfs ext4
    IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-rootfs | \
        pad-rootfs | append-metadata
    
    # 驱动包保持不变
    DEVICE_PACKAGES += \
        kmod-ath11k \
        ath11k-firmware-qcn6224 \
        kmod-qca8386 \
        kmod-usb3 \
        luci \
        kmod-fs-ext4 \            # 增加 ext4 文件系统支持
        e2fsprogs                 # 增加 ext4 工具（用于分区管理）
endef
TARGET_DEVICES += qcom_ipq5332_jdcloud_be6500
