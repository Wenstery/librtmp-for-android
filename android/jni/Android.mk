LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libcrypto
LOCAL_SRC_FILES := $(LOCAL_PATH)/libs/libcrypto.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libssl
LOCAL_SRC_FILES := $(LOCAL_PATH)/libs/libssl.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := librtmp

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../../rtmpdump/librtmp \
        $(LOCAL_PATH)/third_party/OpenSSL1.0.1cForAndroid \
        $(LOCAL_PATH)/third_party/OpenSSL1.0.1cForAndroid/include

LOCAL_SRC_FILES = \
        $(LOCAL_PATH)/../../rtmpdump/librtmp/amf.c \
        $(LOCAL_PATH)/../../rtmpdump/librtmp/hashswf.c \
        $(LOCAL_PATH)/../../rtmpdump/librtmp/log.c \
        $(LOCAL_PATH)/../../rtmpdump/librtmp/parseurl.c \
        $(LOCAL_PATH)/../../rtmpdump/librtmp/rtmp.c

LOCAL_ARM_MODE := arm
LOCAL_LDLIBS := -lz -llog
LOCAL_SHARED_LIBRARIES := libcrypto libssl
APP_OPTIM := release
include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_STATIC_LIBRARY)
