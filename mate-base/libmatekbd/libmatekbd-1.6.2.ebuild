# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/mate-base/libmatekbd/libmatekbd-1.6.2.ebuild,v 1.1 2014/02/28 13:15:03 tomwij Exp $

EAPI="5"

GCONF_DEBUG="no"
GNOME2_LA_PUNT="yes"

inherit gnome2 versionator

MATE_BRANCH="$(get_version_component_range 1-2)"

SRC_URI="http://pub.mate-desktop.org/releases/${MATE_BRANCH}/${P}.tar.xz"
DESCRIPTION="MATE keyboard configuration library"
HOMEPAGE="http://mate-desktop.org"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64"

IUSE="X test"

RDEPEND=">=dev-libs/glib-2.18:2
	sys-libs/glibc:2.2
	x11-libs/cairo:0
	>=x11-libs/gdk-pixbuf-2.18:2
	>=x11-libs/gtk+-2.18:2
	x11-libs/libX11:0
	>=x11-libs/libxklavier-5.0:0
	x11-libs/pango:0
	virtual/libintl:0"

DEPEND="${RDEPEND}
	sys-devel/gettext:0
	>=dev-util/intltool-0.35:0
	virtual/pkgconfig:0"

src_configure() {
	gnome2_src_configure \
		--with-gtk=2.0 \
		$(use_enable test tests) \
		$(use_with X x)
}

DOCS="AUTHORS ChangeLog NEWS README"