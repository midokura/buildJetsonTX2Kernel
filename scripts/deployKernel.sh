#!/bin/bash
git clone https://github.com/midokura/buildJetsonTX2Kernel.git /home/nvidia/buildJetsonTX2Kernel
cd buildJetsonTX2Kernel
./getKernelSources.sh
./makeKernel.sh
./copyImage.sh
