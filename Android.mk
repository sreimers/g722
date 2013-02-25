MY_LOCAL_PATH:= $(call my-dir)

##############################
LOCAL_PATH := $(MY_LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE := neon_test
LOCAL_CFLAGS := -c -Wall -march=armv7-a -mfloat-abi=softfp -mfpu=neon -O2
LOCAL_CFLAGS += -DHAVE_NEON=1 -Iinclude/ -save-temps
LOCAL_SRC_FILES := src/g722_encode.c src/g722_decode.c src/g722_interface.c

include $(BUILD_STATIC_LIBRARY)

################################
LOCAL_PATH := $(MY_LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE := test_main
LOCAL_CFLAGS := -c -Wall -mfloat-abi=softfp -mfpu=neon -O2
LOCAL_SRC_FILES := test/test_main.c
LOCAL_C_INCLUDES += include/

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_CFLAGS := -DHAVE_NEON=1
#    LOCAL_SRC_FILES += helloneon-intrinsics.c.neon
endif

LOCAL_STATIC_LIBRARIES := neon_test

#LOCAL_LDLIBS := -llog

include $(BUILD_EXECUTABLE)

