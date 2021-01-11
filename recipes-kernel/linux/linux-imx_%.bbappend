require linux-imx-source.inc

FILESEXTRAPATHS_prepend := "${THISDIR}/configs:"

SRC_URI += "\
    file://enable_bridge.cfg \
    file://enable_cgroups.cfg \
    file://enable_container.cfg \
    file://enable_iptables.cfg \
    file://enable_netem.cfg \
    file://enable_serial.cfg \
    file://enable_squashfs.cfg \
    file://enable_tun.cfg \
    file://enable_quota.cfg \
"

# kernel.bbclass does not support kernel configuration fragments
# as kernel-yocto.bbclass does, so merge fragments manually
# using kernel's native facilities
do_configure_append() {
    # merge configuration fragments
    ${S}/scripts/kconfig/merge_config.sh -m -O ${B} ${B}/.config ${WORKDIR}/*.cfg
    # re-run kernel configuration to apply fragments
    ${KERNEL_CONFIG_COMMAND}
}

COMPATIBLE_MACHINE = "(imx8mmevk)"