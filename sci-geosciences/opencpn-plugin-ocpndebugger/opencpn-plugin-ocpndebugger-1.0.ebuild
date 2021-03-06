# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sci-geosciences/opencpn-plugin-ocpndebugger/opencpn-plugin-ocpndebugger-1.0.ebuild,v 1.1 2015/01/21 23:29:16 mschiff Exp $

EAPI=5

inherit cmake-utils

MY_PN="ocpndebugger_pi"

DESCRIPTION="NMEA-data and plugin-API Debugger Plugin for OpenCPN"
HOMEPAGE="http://opencpn.org/ocpn/downloadplugins"
SRC_URI="https://github.com/nohal/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=sci-geosciences/opencpn-4.0.0
	sys-devel/gettext
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_PN}-${PV}"
