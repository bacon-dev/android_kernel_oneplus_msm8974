#!/bin/bash
export ARCH=arm
export SUBARCH=arm
CLANG=/home/xawlw/kernel/lolz/bin/clang
GCC=/home/xawlw/xtnd/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-linaro-7/bin/arm-linux-gnueabi-
make lineageos_bacon_defconfig \
	 CC=$CLANG \
	 HOSTCC=$CLANG \
	 CROSS_COMPILE=$GCC

make -j$(nproc --all) CC=$CLANG \
                      HOSTCC=$CLANG \
                      CROSS_COMPILE=$GCC
