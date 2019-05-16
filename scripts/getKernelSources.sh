#!/bin/bash
apt-add-repository universe
apt-get update
apt-get install qt5-default pkg-config -y
cd /usr/src
wget https://developer.download.nvidia.com/embedded/L4T/r32_Release_v1.0/jax-tx2/BSP/JAX-TX2-public_sources.tbz2
tar -xvf JAX-TX2-public_sources.tbz2 sources/kernel_src-tx2.tbz2
exit 0
tar -xvf sources/kernel_src-tx2.tbz2
cd kernel/kernel-4.4
#zcat /proc/config.gz > .config
#patch -p0 < /home/nvidia/buildJetsonTX2Kernel/diffs/kernelconfig/config.patch
#patch -p0 < /home/nvidia/buildJetsonTX2Kernel/diffs/kernelconfig/docker.patch
cp /home/nvidia/buildJetsonTX2Kernel/diffs/kernelconfig/golden_kernelconfig .config
patch -p0 < /home/nvidia/buildJetsonTX2Kernel/diffs/kernelconfig/makefile.patch
