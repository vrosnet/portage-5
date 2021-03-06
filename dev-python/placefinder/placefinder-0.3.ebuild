# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/placefinder/placefinder-0.3.ebuild,v 1.1 2014/09/06 11:14:04 idella4 Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy )

inherit distutils-r1

MY_PN="${PN}"-py

DESCRIPTION="Yahoo! BOSS PlaceFinder Python Client"
HOMEPAGE=" https://github.com/adampresley/placefinder-py"
SRC_URI="mirror://pypi/${PN:0:1}/${MY_PN}/${MY_PN}-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/${MY_PN}-${PV}"
