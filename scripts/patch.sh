#!/bin/bash

# TODO: Make it work nicely whenever we have some time
kernel_ver="4.4"
#diffs_dir="`dirname $0`/../diffs"
src_dir="/usr/src/kernel/kernel-$kernel_ver"

#zcat /proc/config.gz > $src_dir/.config

#for file in $(find $diffs_dir -type f); do
    #target_file=$(basename $(dirname $file))
    #echo "[*] Applying patch $(basename $file) to file $src_dir/$target_file"
    #while read -r line; do
        #if grep -- "$line" $src_dir/$target_file &>/dev/null; then continue; fi
        #echo "$line" >> $src_dir/$target_file
    #done < "$file"
#done

sudo sed -i 's/EXTRAVERSION =/EXTRAVERSION = -tegra/' $src_dir/Makefile
sudo cp `dirname $0`/../goldenconfig $src_dir/.config
