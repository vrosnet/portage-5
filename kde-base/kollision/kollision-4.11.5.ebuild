# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kollision/kollision-4.11.5.ebuild,v 1.1 2014/01/10 04:21:52 creffett Exp $

EAPI=5

KDE_HANDBOOK="optional"
inherit kde4-base

DESCRIPTION="KDE: A simple ball dodging game"
HOMEPAGE="
	http://www.kde.org/applications/games/kollision/
	http://games.kde.org/game.php?game=kollision
"
KEYWORDS=" ~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="$(add_kdebase_dep libkdegames)"
RDEPEND="${DEPEND}"