# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/ruby-augeas/ruby-augeas-0.5.0.ebuild,v 1.1 2013/09/15 03:56:15 prometheanfire Exp $

EAPI=3
# jruby -> native extentions
USE_RUBY="ruby18 ruby19 ree18"

RUBY_FAKEGEM_DOCDIR="doc/site/api"
RUBY_FAKEGEM_EXTRADOC="NEWS README.rdoc"

inherit multilib ruby-fakegem

DESCRIPTION="Ruby bindings for Augeas"
HOMEPAGE="http://augeas.net/"
SRC_URI="http://download.augeas.net/ruby/${P}.gem"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=app-admin/augeas-1.1.0"
DEPEND="${RDEPEND}
		dev-libs/libxml2"

#RUBY_PATCHES=( ${P}-libxml2.patch )

each_ruby_configure() {
	${RUBY} -C ext/augeas extconf.rb || die
}

each_ruby_compile() {
	emake -C ext/augeas || die
}

each_ruby_install() {
	mv ext/augeas/_augeas$(get_modname) lib/ || die

	each_fakegem_install
}