# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit java-pkg-2 java-ant-2

DATESTAMP="${PV##*pre}"
MY_P="${PN}-${DATESTAMP}"
DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://www.gentoo.org/~nichoj/distfiles/${MY_P}.tar.bz2"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=virtual/jdk-1.3
	dev-java/ant-core"
RDEPEND=">=virtual/jre-1.3"
S="${WORKDIR}/${MY_P}"

src_unpack() {
	unpack ${A}
	cd ${S}

	
	rm lib/*.jar
}

src_compile() {
	eant jar -Dversion=${PV}
}

src_install() {
	java-pkg_newjar build/dist/${P}.jar ${PN}.jar
}
