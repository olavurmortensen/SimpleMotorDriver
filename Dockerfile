FROM ubuntu:18.04 AS yocto-build-env

RUN apt-get update && apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping libsdl1.2-dev xterm
RUN apt-get install -y locales
#RUN apt-get update && apt-get install -y build-essential chrpath curl diffstat gcc-multilib gawk git-core locales zstd liblz4-tool \
#                                         texinfo unzip wget xterm cpio file python python3 openssh-client iputils-ping iproute2 \
#                                         python3-distutils python3-pip python3-pexpect python3-git python3-jinja2 python3-subunit \
#                                         gawk socat xz-utils libegl1-mesa libsdl1.2-dev pylint3 mesa-common-dev debianutils screen rsync sharutils \
#                                         && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

#RUN git clone git://git.yoctoproject.org/poky -b dunfell


