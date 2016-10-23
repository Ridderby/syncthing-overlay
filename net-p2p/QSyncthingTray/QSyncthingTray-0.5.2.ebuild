# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils

DESCRIPTION="Traybar application for Syncthing"
HOMEPAGE="https://github.com/sieren/QSyncthingTray"
SRC_URI="https://github.com/sieren/QSyncthingTray/archive/${PV}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-qt/qtwidgets:5
	dev-qt/qtnetwork:5
	dev-qt/qtprintsupport:5
	dev-qt/qtwebengine:5"
DEPEND="${RDEPEND}"

src_configure() {
	cmake-utils_src_configure
}

src_install() {
#	dodoc ChangeLog NEWS README
	exeinto /usr/bin
	doexe ${BUILD_DIR}/QSyncthingTray
}


