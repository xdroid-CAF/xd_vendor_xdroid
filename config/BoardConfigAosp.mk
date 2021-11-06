include vendor/xdroid/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/xdroid/config/BoardConfigQcom.mk
endif

include vendor/xdroid/config/BoardConfigSoong.mk
