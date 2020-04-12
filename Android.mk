

LOCAL_PATH := $(call my-dir)
msr_tools_cflags := -Wall -g -O2 -fomit-frame-pointer \
	-D_GNU_SOURCE -D_FILE_OFFSET_BITS=64


##Build wsmsr
include $(CLEAR_VARS)
LOCAL_CFLAGS := $(msr_tools_cflags)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := wrmsr
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES :=		\
	wrmsr.c	
include $(BUILD_EXECUTABLE) 

##Build rdmsr
include $(CLEAR_VARS)
LOCAL_CFLAGS := $(msr_tools_cflags)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := rdmsr
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES :=		\
	rdmsr.c	
include $(BUILD_EXECUTABLE) 


##Build cpuid
LOCAL_CFLAGS := $(msr_tools_cflags)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := cpuid
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES =		\
	cpuid.c
include $(BUILD_EXECUTABLE) 
