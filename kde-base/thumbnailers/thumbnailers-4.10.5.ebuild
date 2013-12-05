# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/thumbnailers/thumbnailers-4.10.5.ebuild,v 1.6 2013/08/02 14:30:04 ago Exp $

EAPI=5

KMNAME="kdegraphics-thumbnailers"
inherit kde4-base

DESCRIPTION="KDE 4 thumbnail generators for PDF/PS files"
KEYWORDS="amd64 ~arm ppc ppc64 x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	$(add_kdebase_dep libkdcraw)
	$(add_kdebase_dep libkexiv2)
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${KMNAME}-${PV}"