# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Plucene/Plucene-1.250.0-r2.ebuild,v 1.1 2014/12/03 00:50:03 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=TMTM
MODULE_VERSION=1.25
inherit perl-module

DESCRIPTION="Plucene - the Perl lucene port"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND="virtual/perl-Memoize
		dev-perl/Tie-Array-Sorted
		dev-perl/Encode-compat
		dev-perl/File-Slurp
		dev-perl/Class-Virtual
		dev-perl/Class-Accessor
		virtual/perl-Time-Piece
		virtual/perl-File-Spec
		>=virtual/perl-Scalar-List-Utils-1.13
		dev-perl/Lingua-Stem
		dev-perl/Bit-Vector-Minimal
		dev-perl/IO-stringy"
DEPEND="${RDEPEND}
		>=virtual/perl-Test-Harness-2.30
		>=virtual/perl-Module-Build-0.28"

SRC_TEST="do"

src_install() {
	perl-module_src_install
	rm -rf "${ED}"/usr/bin
	rm -rf "${ED}"/usr/share/man
	insinto /usr/share/doc/${PF}/examples
	doins bin/*
	docompress -x /usr/share/doc/${PF}/examples
}
