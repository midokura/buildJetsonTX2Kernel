#!/bin/bash

l4t_version="28.1"
usage="
[-] Missing argument. Possible arguments are:

    getkernelsources      | Get latest kernel sources for L4T (Linux for Tegra) $l4t_version
    patchkernel           | Apply patches in ${0}/diffs
    makekernel            | Compile kernel with all modules
    copyimage             | Copy generated image to \`/boot/Image\`
    all                   | Do all of the above

"

function usage() {
    echo "$usage" >&2
    exit 1
}

if [ -z $1 ]; then
    usage
fi

case "$1" in
    getkernelsources)
        ./scripts/getKernelSources.sh
        ;;
    patchkernel)
        ./scripts/patch.sh
        ;;
    makekernel)
        ./scripts/makeKernel.sh
        ;;
    copyimage)
        ./scripts/copyImage.sh
        ;;
    all)
        ./scripts/getKernelSources.sh
        ./scripts/patch.sh
        ./scripts/makeKernel.sh
        ./scripts/copyImage.sh
        ;;
    *)
        usage
        ;;
esac

