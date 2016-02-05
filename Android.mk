LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libgnuexif
LOCAL_MODULE_OWNER := huawei
LOCAL_SRC_FILES := ../../../vendor/huawei/h60_l01/proprietary/lib/libgnuexif.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
include $(BUILD_PREBUILT)

ifeq ($(TARGET_DEVICE),h60_l01)
    include $(call first-makefiles-under,$(LOCAL_PATH))
endif

