# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

SRC_URI="http://dfu-util.gnumonks.org/releases/${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

DESCRIPTION="implements the Host (PC) side of the USB DFU (Device Firmware Upgrade) protocol"
HOMEPAGE="http://dfu-util.gnumonks.org/"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="virtual/libusb:1"
DEPEND="${RDEPEND}
		virtual/pkgconfig"

DOCS=( ChangeLog README TODO )
