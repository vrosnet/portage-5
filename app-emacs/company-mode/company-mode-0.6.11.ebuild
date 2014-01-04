# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-emacs/company-mode/company-mode-0.6.11.ebuild,v 1.1 2014/01/01 17:44:25 ulm Exp $

EAPI=5

inherit elisp

DESCRIPTION="In-buffer completion front-end"
HOMEPAGE="http://company-mode.github.com/"
SRC_URI="https://github.com/${PN}/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ropemacs +semantic"

# Note: company-mode supports many backends, and we refrain from including
# them all in RDEPEND. Only depend on things that are needed at build time.
DEPEND="|| ( app-emacs/nxml-mode >=virtual/emacs-23 )
	ropemacs? ( app-emacs/pymacs )
	semantic? ( virtual/emacs-cedet )"
RDEPEND="${DEPEND}
	ropemacs? ( dev-python/ropemacs )"

SITEFILE="50${PN}-gentoo.el"

src_prepare() {
	# Disable backends that require extra dependencies, unless they are
	# selected by the respective USE flag

	elog "Removing pysmell backend"
	rm company-pysmell.el || die

	if ! use ropemacs; then
		elog "Removing ropemacs backend, as requested by USE=-ropemacs"
		rm company-ropemacs.el || die
	fi

	if ! use semantic; then
		elog "Removing semantic backend, as requested by USE=-semantic"
		rm company-semantic.el || die
	fi
}