/* SPDX-License-Identifier: GPL-2.0 */
#ifndef _DT_BINDINGS_GPIO_GPIO_H
#define _DT_BINDINGS_GPIO_GPIO_H

/*
 * GPIO active level flags (values are significant)
 * GPIO_ACTIVE_HIGH: 高电平有效
 * GPIO_ACTIVE_LOW: 低电平有效
 */
#define GPIO_ACTIVE_HIGH 0
#define GPIO_ACTIVE_LOW 1

/*
 * GPIO open drain flags (values are significant)
 * GPIO_OPEN_DRAIN: 开漏输出
 * GPIO_PUSH_PULL: 推挽输出（默认）
 */
#define GPIO_OPEN_DRAIN 2
#define GPIO_PUSH_PULL 0

/*
 * GPIO open source flags (values are significant)
 * GPIO_OPEN_SOURCE: 开源输出
 */
#define GPIO_OPEN_SOURCE 4

#endif /* _DT_BINDINGS_GPIO_GPIO_H */
