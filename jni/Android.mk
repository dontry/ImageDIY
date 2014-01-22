LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
include ../includeOpenCV.mk 
ifeq ("$(wildcard $(OPENCV_MK_PATH))","") 
#try to load OpenCV.mk from default install location 
include $(TOOLCHAIN_PREBUILT_ROOT)/user/share/OpenCV/OpenCV.mk 
else 
include $(OPENCV_MK_PATH)
endif
LOCAL_MODULE    := ImageUtilsJni
LOCAL_SRC_FILES := ImageUtilsJni.c opencv.cpp inpainting.cpp ms.cpp msImageProcessor.cpp PictureHandler.cpp RAList.cpp rlist.cpp \
Saliency.cpp SalientRegionDetector.cpp Composition.cpp ImageHandler.cpp ImageSeamOperations.cpp grabcut.cpp ImageProcessor.cpp LineDetect.cpp
include $(BUILD_SHARED_LIBRARY)