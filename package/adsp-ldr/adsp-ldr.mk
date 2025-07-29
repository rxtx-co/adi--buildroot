################################################################################
#
# adsp-ldr
#
################################################################################

ADSP_LDR_VERSION = 1.0.1
ADSP_LDR_SOURCE = adsp-ldr-v$(ADSP_LDR_VERSION).tar.xz
ADSP_LDR_SITE = https://github.com/analogdevicesinc/adsp-ldr/releases/download/v$(ADSP_LDR_VERSION)
ADSP_LDR_LICENSE = GPL-3.0+, BSD-3-Clause
ADSP_LDR_LICENSE_FILES = LICENSE
HOST_ADSP_LDR_DEPENDENCIES = host-libusb

define HOST_ADSP_LDR_INSTALL_CMDS
	# The U-Boot Makefile expects ldr to be installed as part of the toolchain
	# shipped with the CrossCore Embedded Studio SDK
	$(INSTALL) -m 755 -D $(@D)/buildroot-build/ldr \
		$(TARGET_CROSS)ldr
endef

$(eval $(host-meson-package))
