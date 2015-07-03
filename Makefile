# $OpenBSD: Makefile,v 1.1.1.1 2015/04/16 17:41:17 sebastia Exp $

COMMENT =		flexible logging library

DISTNAME =		logging-1.8.2
CATEGORIES =		devel
HOMEPAGE =		http://rubygems.org/gems/logging
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =   Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		converters/ruby-multi_json,{MODRUBY_FLAVOR}

# MIGHT MISS little-plugger rubygem

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
