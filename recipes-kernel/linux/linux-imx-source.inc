# change source repo on internal one with proper patches for current board
SRCBRANCH = "rm-n8mmi_smc-imx_5.4.47_2.2.0"
KERNEL_SRC = "git://git@gitpct.epam.com/Dmytro_Rozzuvailo/linux-imx.git;protocol=ssh"
SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
SRCREV="${AUTOREV}"