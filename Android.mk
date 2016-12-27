LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),j23g)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
