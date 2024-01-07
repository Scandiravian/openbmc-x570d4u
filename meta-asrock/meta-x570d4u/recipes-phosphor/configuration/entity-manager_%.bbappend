FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"
SRC_URI:append = " file://1u4lw-x570.json \
                   file://x570d4u.json \
		"
do_install:append() {
     install -d ${D}/usr/share/entity-manager/configurations

     install -m 0444 ${WORKDIR}/1u4lw-x570.json ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/x570d4u.json ${D}/usr/share/entity-manager/configurations
}
