# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/games-puzzle/cutemaze/cutemaze-1.1.0.ebuild,v 1.5 2015/02/11 20:56:06 mr_bones_ Exp $

EAPI=5
inherit eutils qt4-r2 games

DESCRIPTION="A simple, top-down game in which mazes are randomly generated"
HOMEPAGE="http://gottcode.org/cutemaze/"
SRC_URI="http://gottcode.org/${PN}/${P}-src.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 x86"
IUSE=""

DEPEND="dev-qt/qtcore:4
	dev-qt/qtgui:4
	dev-qt/qtsvg:4"

src_configure() {
	qt4-r2_src_configure
}

src_install() {
	dogamesbin
	dodoc ChangeLog README
	doicon icons/${PN}.png
	domenu icons/${PN}.desktop
	prepgamesdirs
}
