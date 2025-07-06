#
# Copyright (C) 2010-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

ARCH:=arm64
BOARD:=ipq807x
BOARDNAME:=Qualcomm Atheros IPQ807x/IPQ8074
FEATURES:=squashfs fpu pcie usbgadget
SUBTARGETS:=generic

KERNEL_PATCHVER:=5.15
KERNEL_TESTING_PATCHVER:=6.1

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES += \
	kmod-usb3 kmod-usb-ledtrig-usbport \
	ath11k-firmware-qcn9074-ipq8074 \
	ath11k-firmware-qcn6224-ipq8074 \
	wpad-basic-wolfssl

$(eval $(call BuildTarget))
