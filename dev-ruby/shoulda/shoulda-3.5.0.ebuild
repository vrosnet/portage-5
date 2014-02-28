# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/shoulda/shoulda-3.5.0.ebuild,v 1.1 2014/02/21 09:25:21 graaff Exp $

EAPI=5

USE_RUBY="ruby19"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="Making tests easy on the fingers and eyes"
HOMEPAGE="http://thoughtbot.com/projects/shoulda"
SRC_URI="https://github.com/thoughtbot/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="3"
KEYWORDS="~amd64"
IUSE=""

# This now more or less a meta-gem and it only contains features for
# integration tests using Appraisals, which we don't currently package.
RESTRICT=test

ruby_add_rdepend ">=dev-ruby/shoulda-context-1.0.1
	>=dev-ruby/shoulda-matchers-1.4.1"