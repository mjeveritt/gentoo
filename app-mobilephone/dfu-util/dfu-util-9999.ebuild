# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit autotools git-2

EGIT_REPO_URI="git://git.code.sf.net/p/dfu-util/dfu-util"
SRC_URI=""

DESCRIPTION="implements the Host (PC) side of the USB DFU (Device Firmware Upgrade) protocol"
HOMEPAGE="http://wiki.openmoko.org/wiki/Dfu-util"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="virtual/libusb:1"
DEPEND="${RDEPEND}
		virtual/pkgconfig"

src_prepare() {
	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc ChangeLog README TODO
}
