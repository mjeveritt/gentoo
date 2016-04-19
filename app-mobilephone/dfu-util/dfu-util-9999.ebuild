# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit autotools git-r3

EGIT_REPO_URI="git://git.code.sf.net/p/dfu-util/dfu-util"
SRC_URI=""

DESCRIPTION="implements the Host (PC) side of the USB DFU (Device Firmware Upgrade) protocol"
HOMEPAGE="http://dfu-util.gnumonks.org/"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="virtual/libusb:1"
DEPEND="${RDEPEND}
		virtual/pkgconfig"

DOCS=( ChangeLog README TODO )

src_prepare() {
	eautoreconf
	eapply_user
}
