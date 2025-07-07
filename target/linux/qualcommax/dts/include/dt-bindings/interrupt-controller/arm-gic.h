/* SPDX-License-Identifier: GPL-2.0 */
#ifndef _DT_BINDINGS_INTERRUPT_CONTROLLER_ARM_GIC_H
#define _DT_BINDINGS_INTERRUPT_CONTROLLER_ARM_GIC_H

/* 中断类型 */
#define GIC_SPI 0 /* 共享外设中断 */
#define GIC_PPI 1 /* 私有外设中断 */

/* 中断触发类型 */
#define IRQ_TYPE_NONE		0
#define IRQ_TYPE_EDGE_RISING	1
#define IRQ_TYPE_EDGE_FALLING	2
#define IRQ_TYPE_EDGE_BOTH	(IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING)
#define IRQ_TYPE_LEVEL_HIGH	4  /* 高电平触发（你的设备树中使用了这个） */
#define IRQ_TYPE_LEVEL_LOW	8

#endif
