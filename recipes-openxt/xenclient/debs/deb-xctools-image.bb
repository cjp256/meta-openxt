LICENSE = "GPL"
COMPATIBLE_MACHINE = "(openxt-dom0)"

DISTROS = "wheezy"

DEB_IMAGE_INSTALL = "\
        deb-libv4v \
        deb-xc-pvdrivers-dkms \
        deb-xenmou-dkms \
        deb-libxenstore \
        deb-xenstore-client-tools \
        deb-xblanker \
    "
DEB_NAME = "xc-tools"
DEB_DESC="Metapackage for XenClient Tools"
DEB_DESC_EXT="This is a metapackage for XC Tools"
DEB_SECTION="misc"
DEB_PKG_MAINTAINER = "Citrix Systems <customerservice@citrix.com>"


DEPENDS="${DEB_IMAGE_INSTALL}"

do_configure() {
    :
}
do_compile() {
    :
}

inherit xenclient-deb-repo
