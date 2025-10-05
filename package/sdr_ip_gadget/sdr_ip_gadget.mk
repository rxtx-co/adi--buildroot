SDR_IP_GADGET_VERSION = 1.0

SDR_IP_GADGET_SITE = https://github.com/rxtx-co/pluto-sdr-ip-gadget.git
SDR_IP_GADGET_SITE_METHOD = git
SDR_IP_GADGET_VERSION = cc9dec2fd2d0aafbde000bfd69b1a9ac98402dc9

SDR_IP_GADGET_DEPENDENCIES = libiio
SDR_IP_GADGET_CONF_OPTS = -DGIT_VERSION_OVERRIDE=cc9dec2fd2d0aafbde000bfd69b1a9ac98402dc9 -DGENERATE_STATS=ON

$(eval $(cmake-package))
