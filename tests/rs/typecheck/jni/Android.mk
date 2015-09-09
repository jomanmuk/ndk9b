LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	kernels.rs \
	typecheck.cpp

LOCAL_LDFLAGS += -L$(call host-path,$(TARGET_C_INCLUDES)/../lib/rs)

LOCAL_LDLIBS := \
	-lz \
	-lEGL \
	-lGLESv1_CM \
	-lGLESv2 \
	-lui \
	-lbcc \
	-lbcinfo \
	-lgui \
	-ldl \
	-lRScpp


LOCAL_MODULE:= rstest-typecheck

LOCAL_C_INCLUDES += $(TARGET_C_INCLUDES)/rs/cpp
LOCAL_C_INCLUDES += $(TARGET_C_INCLUDES)/rs
LOCAL_C_INCLUDES += $(TARGET_OBJS)/$(LOCAL_MODULE)

include $(BUILD_EXECUTABLE)
