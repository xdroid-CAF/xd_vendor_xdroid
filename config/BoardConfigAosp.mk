include vendor/extended/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/extended/config/BoardConfigQcom.mk
endif

include vendor/extended/config/BoardConfigSoong.mk
