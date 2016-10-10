# $OpenBSD$

COMMENT =		flexible logging library

DISTNAME =		logging-2.1.0
CATEGORIES =		devel
HOMEPAGE =		http://rubygems.org/gems/logging
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =   Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-little-plugger,${MODRUBY_FLAVOR}>=1.1,<1.2 \
			converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.10,<2.0

# MIGHT MISS little-plugger rubygem

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
