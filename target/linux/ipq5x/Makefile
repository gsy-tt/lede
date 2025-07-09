#
# Copyright (C) 2023 OpenWrt.org
#

include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=ipq5x
BOARDNAME:=Qualcomm IPQ5xxx
SUBTARGETS:=generic
FEATURES:=squashfs nand ramdisk
CPU_TYPE:=cortex-a53
CPU_SUBTYPE:=generic
MAINTAINER:=Your Name <your@email.com>

KERNEL_PATCHVER:=5.15

include $(INCLUDE_DIR)/target.mk

$(eval $(call BuildTarget))
