DESCRIPTION = "A dbus service that listens to desktop notification requests and displays them"
HOMEPAGE = "http://www.galago-project.org/"
SECTION = "x11"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
DEPENDS = "gettext dbus gtk+ libsexy gconf libwnck"
PR = "r1"

SRC_URI = "http://www.galago-project.org/files/releases/source/${PN}/${P}.tar.gz \
           file://notification-daemon-fix-text-color.diff;patch=1 \
           file://fix-wrapped-text-truncation.diff;patch=1"
SRC_URI[md5sum] = "7fa369bff1031acbe4ca41f03bee7d02"
SRC_URI[sha256sum] = "53d2f92c3d14423b49c2ff077855cf3987d38def963c82fd26fba5de379ca540"

EXTRA_OECONF = "--disable-binreloc"

inherit autotools pkgconfig

FILES_${PN} = "\
  ${libexecdir}/notification-daemon \
  ${datadir}/dbus-1/services/ \
  ${libdir}/notification-daemon-1.0/engines/libstandard.so \
  ${sysconfdir}/gconf/schemas/notification-daemon.schemas \
"
