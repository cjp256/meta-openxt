SELINUX_RELEASE = "20130423"

SRC_URI = "http://userspace.selinuxproject.org/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"

include selinux_common.inc
