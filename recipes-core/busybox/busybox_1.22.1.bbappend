PR = "openxt-01"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

# TODO: Do we still need mountall?  what about configure and install additions?
SRC_URI += "\
  file://mountall \
"

do_configure_prepend () {
    if [ "${TARGET_ARCH}" = "avr32" ] ; then
        sed -i s:CONFIG_FEATURE_OSF_LABEL=y:CONFIG_FEATURE_OSF_LABEL=n: ${WORKDIR}/defconfig
    fi

    # Enable ftpget and ftpput.
    for i in CONFIG_FTPGET \
        CONFIG_FTPPUT \
        CONFIG_FEATURE_FTPGETPUT_LONG_OPTIONS ; do
        sed -i "s/^# $i is not set\$/$i=y/" ${WORKDIR}/defconfig
    done
}

do_install_append() {
    install -m 0644 ${WORKDIR}/mdev.conf ${D}${sysconfdir}/
    install -d ${D}${sysconfdir}/init.d/
    install -d ${D}${sysconfdir}/mdev
    install -m 0755 ${WORKDIR}/find-touchscreen.sh ${D}${sysconfdir}/mdev/
    install -m 0755 ${WORKDIR}/mdev ${D}${sysconfdir}/init.d/
    # SELinux doesn't like busybox links
    install -d ${D}${base_sbindir}
    cp -a ${D}${base_bindir}/busybox ${D}${base_sbindir}/udhcpc
    grep -v '/udhcpc' ${D}${sysconfdir}/busybox.links.nosuid > ${S}/busybox.links.nosuid.tmp
    install -m 0644 ${S}/busybox.links.nosuid.tmp ${D}${sysconfdir}/busybox.links.nosuid
}
