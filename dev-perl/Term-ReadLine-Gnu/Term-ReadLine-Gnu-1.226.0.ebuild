# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Term-ReadLine-Gnu/Term-ReadLine-Gnu-1.226.0.ebuild,v 1.1 2015/02/25 09:26:18 monsieurp Exp $

EAPI=5

MODULE_AUTHOR=HAYASHI
MODULE_VERSION=1.26
inherit perl-module

DESCRIPTION="GNU Readline XS library wrapper"

SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~ia64 ~ppc ~sparc ~x86"
IUSE=""

DEPEND=">=sys-libs/readline-6.2"
RDEPEND="${DEPEND}"

mymake=( PASTHRU_DEFINE="-Dxrealloc=_rl_realloc -Dxmalloc=_rl_malloc -Dxfree=_rl_free" )

SRC_TEST="do parallel"
