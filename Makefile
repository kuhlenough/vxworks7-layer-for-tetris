# Makefile - example layer Makefile for a simple VSB Layer
#
# Copyright 2013, Wind River Systems, Inc.
#      

#
# modification history
# -------------------- 
# 06may13,brk  create

PRE_BUILD_DIRS = usr_src

POSTBUILD_RTP_DIRS = usr_src

include $(WIND_KRNL_MK)/rules.layers.mk
