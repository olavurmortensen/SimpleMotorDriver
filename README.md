# Simple Motor Driver

Build the Docker image
```
sudo docker build . -t simple_motor_driver
```

Run the image interactively
```
sudo docker run -it -v $(pwd)/build:/build simple_motor_driver
```

Prepare Yocto for build
```
git clone git://git.yoctoproject.org/poky -b dunfell
cd poky
git clone https://git.yoctoproject.org/meta-raspberrypi/ -b dunfell
source oe-init-build-env
```

Add the following lines to `build/poky/build/conf/local.conf`
```
machine ?= "raspberrypi3"
IMAGE_FSTYPES = "tar.xz ext3 rpi-sdimg"
```

Add `/build/poky/meta-raspberrypi` to the `BBLAYERS` list in `build/poky/build/conf/bblayers.conf`.

In order to be able to run `bitbake` as root in the Docker image, remove the following line from `build/poky/meta/conf/sanity.conf`
```
INHERIT += "sanity"
```

Build image
```
bitbake core-image-minimal
```
