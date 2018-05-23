# vxworks.mak - for viTetris
#
# Copyright 2013, Wind River Systems, Inc.
#


RTP_BASE_DIR = $(VXE)

ADDED_LIBS = -lunix -lnet

ifeq ($(TOOL),diab)
EXTRA_DEFINE += -ei4144,4167,4260,4940
endif

SUBDIRS = dummy
EXCLUDE_SUBDIRS = dummy

.PHONY: tetris_default tetris_install tetris_build

tetris_default : tetris_install

include $(WIND_USR_MK)/autoconf.mk

tetris_install : tetris_build
	@echo building $(VSBL_NAME): installing $(VXE)
	cp ./tetris $(ROOT_DIR)/$(TOOL_FAMILY)/bin/tetris.vxe


tetris_build : $(AUTO_INCLUDE_VSB_CONFIG_QUOTE) $(VXWORKS_ENV_SH)  $(__AUTO_INCLUDE_LIST_UFILE) 
	@echo building $(VSBL_NAME): building $(VXE)
	@source ./$(VXWORKS_ENV_SH) && \
	export LDFLAGS='$(CRT0_OBJ) $(LDFLAGS) $(LDFLAGS_STATIC)' &&  \
	make -f Makefile 
