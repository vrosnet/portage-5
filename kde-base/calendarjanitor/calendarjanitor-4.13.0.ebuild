# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/calendarjanitor/calendarjanitor-4.13.0.ebuild,v 1.2 2014/04/17 00:43:26 johu Exp $

EAPI=5

KDE_HANDBOOK="optional"
KMNAME="kdepim"
KMMODULE="console/${PN}"
inherit kde4-meta

DESCRIPTION="A tool to scan calendar data for buggy instances"
HOMEPAGE="http://www.kde.org/"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	$(add_kdebase_dep kdepim-common-libs)
"
RDEPEND="${DEPEND}"

KMEXTRACTONLY="
	calendarsupport/
"

KMLOADLIBS="kdepim-common-libs"