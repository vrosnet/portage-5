# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sci-libs/coinor-cgl/coinor-cgl-0.58.5.ebuild,v 1.2 2014/01/15 19:36:06 bicatali Exp $

EAPI=5

inherit autotools-utils multilib

MYPN=Cgl

DESCRIPTION="COIN-OR cutting-plane generators library"
HOMEPAGE="https://projects.coin-or.org/Cgl/"
SRC_URI="http://www.coin-or.org/download/source/${MYPN}/${MYPN}-${PV}.tgz"

LICENSE="EPL-1.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="doc examples static-libs test"

RDEPEND="
	sci-libs/coinor-clp:=
	sci-libs/coinor-dylp:=
	sci-libs/coinor-osi:=
	sci-libs/coinor-utils:=
	sci-libs/coinor-vol:="
DEPEND="${RDEPEND}
	virtual/pkgconfig
	doc? ( app-doc/doxygen[dot] )
	test? ( sci-libs/coinor-sample )"

S="${WORKDIR}/${MYPN}-${PV}/${MYPN}"

src_configure() {
	local myeconfargs=(
		--enable-dependency-linking
		$(use_with doc dot)
	)
	autotools-utils_src_configure
}

src_compile() {
	autotools-utils_src_compile all $(use doc && echo doxydoc)
}

src_test() {
	autotools-utils_src_test test
}

src_install() {
	use doc && HTML_DOC=("${BUILD_DIR}/doxydocs/html/")
	autotools-utils_src_install
	# already installed
	rm "${ED}"/usr/share/coin/doc/${MYPN}/{README,AUTHORS,LICENSE} || die
	if use examples; then
		insinto /usr/share/doc/${PF}
		doins -r examples
	fi
}