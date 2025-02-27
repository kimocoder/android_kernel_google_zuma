/* SPDX-License-Identifier: GPL-2.0-only */
/*
 * Chip-dependent power configuration and states.
 *
 * Copyright (C) 2022 Google LLC
 */

#ifndef __CALLISTO_CONFIG_PWR_STATE_H__
#define __CALLISTO_CONFIG_PWR_STATE_H__

enum aur_power_rate {
	AUR_OFF_RATE = 0,
	AUR_UUD_RATE = 178000,
	AUR_SUD_RATE = 355000,
	AUR_UD_RATE = 713000,
	AUR_NOM_RATE = 1065000,
	AUR_READY_RATE = 178000,
	AUR_UUD_PLUS_RATE = 256000,
	AUR_SUD_PLUS_RATE = 560000,
	AUR_UD_PLUS_RATE = 861000,
};

enum aur_mem_int_rate {
	AUR_MEM_INT_MIN = 0,
	AUR_MEM_INT_VERY_LOW = 0,
	AUR_MEM_INT_LOW = 356000,
	AUR_MEM_INT_HIGH = 664000,
	AUR_MEM_INT_VERY_HIGH = 799000,
	AUR_MEM_INT_MAX = 1066000,
};

enum aur_mem_mif_rate {
	AUR_MEM_MIF_MIN = 0,
	AUR_MEM_MIF_VERY_LOW = 0,
	AUR_MEM_MIF_LOW = 1014000,
	AUR_MEM_MIF_HIGH = 1352000,
	AUR_MEM_MIF_VERY_HIGH = 2028000,
	AUR_MEM_MIF_MAX = 3744000,
};

#endif /* __CALLISTO_CONFIG_PWR_STATE_H__ */
