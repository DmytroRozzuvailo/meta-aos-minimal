# meta-aos-minimal

How to build:

```bash
repo init -u git@gitpct.epam.com:Dmytro_Rozzuvailo/zephyr-manifest.git -b rm_n8mmi_smc_zeus -m imx-5.4.47-2.2.0.xml
repo sync
DISTRO=fsl-imx-wayland MACHINE=imx8mmevk source zephyr-setup-release.sh -b $project
cp -r ../meta-aos-minimal/doc/* conf
bitbake aos-image-minimal
```
