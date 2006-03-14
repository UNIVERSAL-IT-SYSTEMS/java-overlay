# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit jboss-4

DESCRIPTION="Transaction module for JBoss Application Server"
SRC_URI="${BASE_URL}/${P}-gentoo.tar.bz2 ${ECLASS_URI}"
IUSE="jikes"
SLOT="4"
KEYWORDS="~amd64 ~x86"

COMMON_DEPEND="dev-java/log4j
	=dev-java/commons-beanutils-1.6*
	dev-java/commons-codec
	dev-java/commons-collections
	dev-java/commons-digester
	dev-java/commons-discovery
	dev-java/commons-fileupload
	dev-java/commons-httpclient
	=dev-java/commons-lang-2.0*
	dev-java/commons-logging
	dev-java/concurrent-util
	=dev-java/jboss-module-j2ee-${PV}*
	=dev-java/jboss-module-common-${PV}*
	=dev-java/jboss-module-system-${PV}*
	=dev-java/jboss-module-jmx-${PV}*"
DEPEND=">=virtual/jdk-1.3 ${COMMON_DEPEND}"
RDEPEND=">=virtual/jre-1.3 ${COMMON_DEPEND}"
