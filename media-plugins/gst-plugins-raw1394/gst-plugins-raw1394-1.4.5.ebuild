# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-plugins/gst-plugins-raw1394/gst-plugins-raw1394-1.4.5.ebuild,v 1.1 2015/01/02 08:32:11 leio Exp $

EAPI="5"

GST_ORG_MODULE=gst-plugins-good
inherit gstreamer

DESCRIPTION="GStreamer plugin to capture firewire video"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="
	>=media-libs/libiec61883-1.2.0-r1[${MULTILIB_USEDEP}]
	>=sys-libs/libraw1394-2.1.0-r1[${MULTILIB_USEDEP}]
	>=sys-libs/libavc1394-0.5.4-r1[${MULTILIB_USEDEP}]
"
DEPEND="${RDEPEND}"

GST_PLUGINS_BUILD="dv1394"
GST_PLUGINS_BUILD_DIR="raw1394"
