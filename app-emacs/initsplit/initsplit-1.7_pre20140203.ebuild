# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-emacs/initsplit/initsplit-1.7_pre20140203.ebuild,v 1.1 2014/02/20 12:25:30 ulm Exp $

EAPI=5

inherit readme.gentoo elisp

DESCRIPTION="Split customizations into different files"
HOMEPAGE="http://www.emacswiki.org/emacs/InitSplit"
# taken from https://github.com/dabrahams/${PN}
SRC_URI="http://dev.gentoo.org/~ulm/distfiles/${P}.el.xz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

SITEFILE="50${PN}-gentoo.el"
DOC_CONTENTS="Initsplit is not enabled as a site default. Add the following
	line to your ~/.emacs file to enable configuration file splitting:
	\n\t(load \"initsplit\")
	\n\nIf you want configuration files byte-compiled, also add this line:
	\n\t(add-hook 'after-save-hook 'initsplit-byte-compile-files t)"