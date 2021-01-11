FILESEXTRAPATHS_append := "${THISDIR}/${PN}:"

SRC_URI_append = " \
    file://0001-load-initramfs.patch \
    file://0001-add-userdata-partition.patch \
"

