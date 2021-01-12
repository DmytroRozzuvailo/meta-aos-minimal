VIRTUAL-RUNTIME_dev_manager ?= "busybox-mdev"
DEPENDS = "u-boot-mkimage-native"

PACKAGE_INSTALL = "initramfs-framework-base busybox"

# Do not pollute the initrd image with rootfs features
IMAGE_FEATURES = ""

# Set compatible with imx8mmevk machine
COMPATIBLE_HOST = "(aarch64).*-linux"

IMAGE_CMD_cpio_append () {
   IMAGE_FULL_NAME=${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.cpio
   uboot-mkimage -A arm -O linux -T ramdisk -C gzip -n "uInitramfs" \
                 -d ${IMGDEPLOYDIR}/${IMAGE_FULL_NAME} ${IMGDEPLOYDIR}/uInitramfs
}

