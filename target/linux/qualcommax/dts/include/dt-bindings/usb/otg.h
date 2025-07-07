/* SPDX-License-Identifier: GPL-2.0 */
#ifndef _DT_BINDINGS_USB_OTG_H
#define _DT_BINDINGS_USB_OTG_H

/*
 *  * USB DR mode (dual-role mode) flags
 *   * 用于定义USB控制器的工作模式（主机/从机/OTG）
 *    */
#define USB_DR_MODE_UNKNOWN 0
#define USB_DR_MODE_HOST 1       /* 主机模式（如路由器的USB口） */
#define USB_DR_MODE_PERIPHERAL 2 /* 从机模式（如手机作为设备） */
#define USB_DR_MODE_OTG 3        /* OTG模式（支持动态切换） */

#endif /* _DT_BINDINGS_USB_OTG_H */
