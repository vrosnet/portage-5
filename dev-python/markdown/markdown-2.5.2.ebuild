# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/markdown/markdown-2.5.2.ebuild,v 1.1 2014/12/04 05:15:18 patrick Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1

MY_PN="Markdown"
MY_P=${MY_PN}-${PV}

DESCRIPTION="Python implementation of the markdown markup language"
HOMEPAGE="http://www.freewisdom.org/projects/python-markdown http://pypi.python.org/pypi/Markdown"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="|| ( BSD GPL-2 )"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~ia64 ~ppc ~sparc ~x86 ~amd64-linux ~ppc-macos ~x64-macos ~x86-linux ~x86-macos"
IUSE="doc test pygments"

DEPEND="test? ( dev-python/nose[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}] )"
# source cites pytidylib however from testruns it appears optional
RDEPEND="pygments? ( dev-python/pygments[${PYTHON_USEDEP}] )"

S="${WORKDIR}/${MY_P}"

python_compile_all() {
	use doc && esetup.py build_docs
}

python_test() {
	cp -r -l run-tests.py tests "${BUILD_DIR}"/ || die
	pushd "${BUILD_DIR}" > /dev/null
	"${PYTHON}" run-tests.py || die "Tests fail with ${EPYTHON}"
	popd > /dev/null
}

python_install_all() {
	# make use doc do a doc build
	use doc && local HTML_DOCS=( "${BUILD_DIR}"/docs/. )

	distutils-r1_python_install_all
}
