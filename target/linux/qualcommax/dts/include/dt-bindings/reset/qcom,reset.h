/* SPDX-License-Identifier: GPL-2.0 */
#ifndef _DT_BINDINGS_RESET_QCOM_RESET_H
#define _DT_BINDINGS_RESET_QCOM_RESET_H

/*
 *  * IPQ5332平台常用复位控制器ID
 *   * 对应高通GCC（全局时钟控制器）中的复位信号
 *    */
#define QCOM_RESET_BLSP1 0
#define QCOM_RESET_BLSP2 1
#define QCOM_RESET_GPU 2
#define QCOM_RESET_PCIE0 3
#define QCOM_RESET_PCIE1 4
#define QCOM_RESET_USB3 5
#define QCOM_RESET_SDCC1 6
#define QCOM_RESET_SDCC2 7
#define QCOM_RESET_UART0 8
#define QCOM_RESET_UART1 9
#define QCOM_RESET_ETHERNET 10
#define QCOM_RESET_WIFI0 11  /* 2.4G无线 */
#define QCOM_RESET_WIFI1 12  /* 5G无线 */
#define QCOM_RESET_EMMC 13   /* eMMC控制器 */

#endif /* _DT_BINDINGS_RESET_QCOM_RESET_H */
