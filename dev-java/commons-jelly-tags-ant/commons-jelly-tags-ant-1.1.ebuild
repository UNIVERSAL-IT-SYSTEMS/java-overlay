# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit java-pkg commons-jelly-tags

DESCRIPTION=""
HOMEPAGE=""
# svn co http://svn.apache.org/repos/asf/jakarta/commons/proper/jelly/tags/commons-jelly-tags-ant-1.1/
# tar cjvf commons-jelly-tags-ant-1.1.tar.bz2 commons-jelly-tags-ant-1.1
#SRC_URI="mirror://gentoo/${P}.tar.bz2"
SLOT="1"

KEYWORDS="~x86"

RDEPEND="dev-java/commons-grant"

commons-jelly-tags_fix-jars() {
	java-pkg_jar-from commons-grant
}
