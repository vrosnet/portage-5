# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Nmap-Parser/Nmap-Parser-1.310.0.ebuild,v 1.1 2013/08/17 14:25:27 patrick Exp $

EAPI=5

MODULE_AUTHOR=APERSAUD
MODULE_VERSION=1.31
inherit perl-module

DESCRIPTION="Nmap::Parser - parse nmap scan data with perl"
HOMEPAGE="http://nmapparser.wordpress.com/ http://code.google.com/p/nmap-parser/ ${HOMEPAGE}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Storable
	>=dev-perl/XML-Twig-3.16"
DEPEND="${RDEPEND}"

SRC_TEST="do"