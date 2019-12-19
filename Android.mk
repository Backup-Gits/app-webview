LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE := BromiteWebView
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := both
LOCAL_OVERRIDES_PACKAGES := SystemWebView
LOCAL_PRIVILEGED_MODULE := false

ifeq ($(TARGET_ARCH), arm)
LOCAL_SRC_FILES := prebuilt/arm_SystemWebView.apk
endif
ifeq ($(TARGET_ARCH), arm64)
LOCAL_SRC_FILES := prebuilt/arm64_SystemWebView.apk
endif
ifeq ($(TARGET_ARCH), $(filter $(TARGET_ARCH), x86 x86_64))
LOCAL_SRC_FILES := prebuilt/x86_SystemWebView.apk
endif

include $(BUILD_PREBUILT)
