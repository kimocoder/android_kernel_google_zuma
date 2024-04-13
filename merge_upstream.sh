#!/usr/bin/env bash

# google-modules
git subtree pull --prefix=google-modules/wlan/bcmdhd/bcm4398 wlan $1 --squash
git subtree pull --prefix=google-modules/video/gchips video $1 --squash
git subtree pull --prefix=google-modules/uwb uwb $1 --squash
git subtree pull --prefix=google-modules/trusty trusty $1 --squash
git subtree pull --prefix=google-modules/touch/common touch_common $1 --squash
git subtree pull --prefix=google-modules/touch/goodix touch_goodix $1 --squash
git subtree pull --prefix=google-modules/soc/gs soc_gs $1 --squash
git subtree pull --prefix=google-modules/power/reset power_reset $1 --squash
git subtree pull --prefix=google-modules/nfc nfc $1 --squash
git subtree pull --prefix=google-modules/lwis lwis $1 --squash
git subtree pull --prefix=google-modules/hdcp/samsung hdcp $1 --squash
git subtree pull --prefix=google-modules/gxp/zuma gxp $1 --squash
git subtree pull --prefix=google-modules/gpu gpu $1 --squash
git subtree pull --prefix=google-modules/gps/broadcom/bcm47765 gps $1 --squash
git subtree pull --prefix=google-modules/edgetpu edgetpu $1 --squash
git subtree pull --prefix=google-modules/display display $1 --squash
git subtree pull --prefix=google-modules/bms bms $1 --squash
git subtree pull --prefix=google-modules/bluetooth/broadcom bluetooth $1 --squash
git subtree pull --prefix=google-modules/aoc_ipc aoc_ipc $1 --squash
git subtree pull --prefix=google-modules/aoc aoc $1 --squash
git subtree pull --prefix=google-modules/amplifiers amplifiers $1 --squash

# google-devices
git subtree pull --prefix=google-devices/shusky kernel_devices $1 --squash
