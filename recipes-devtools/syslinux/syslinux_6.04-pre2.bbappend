
COMPATIBLE_HOST:class-target = '(x86_64|i.86|aarch64).*-(linux|freebsd.*)'

do_install:class-target() {
        oe_runmake_call firmware="bios" install INSTALLROOT="${D}" || true

        install -d ${D}${datadir}/syslinux/
        install -m 644 ${S}/bios/core/ldlinux.sys ${D}${datadir}/syslinux/
        install -m 644 ${S}/bios/core/ldlinux.bss ${D}${datadir}/syslinux/
}
