# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/liboxygenstyle/liboxygenstyle-4.11.8.ebuild,v 1.1 2014/04/01 18:24:10 johu Exp $

EAPI=5

KMNAME="kde-workspace"
KMMODULE="libs/oxygen"
inherit kde4-meta

DESCRIPTION="Library to support the Oxygen style in KDE"
KEYWORDS=" ~amd64 ~arm ~ppc ~ppc64 ~x86 ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="x11-libs/libX11"
RDEPEND="${DEPEND}"