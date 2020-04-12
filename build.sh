#!/bin/bash
export CCACHE_DISABLE=1
export ARCH=arm
export SUBARCH=arm
export LD_LIBRARY_PATH="/run/media/tfonda/HDD/android/lolz_clang/lib"

make ARCH=arm lineageos_bacon_defconfig CC=/run/media/tfonda/HDD/android/lolz_clang/bin/clang HOSTCC=/run/media/tfonda/HDD/android/lolz_clang/bin/clang CROSS_COMPILE=/run/media/tfonda/HDD/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabi/bin/arm-linux-gnueabi-

make -j5 CC=/run/media/tfonda/HDD/android/lolz_clang/bin/clang HOSTCC=/run/media/tfonda/HDD/android/lolz_clang/bin/clang CROSS_COMPILE=/run/media/tfonda/HDD/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabi/bin/arm-linux-gnueabi-

../dtbToolCM -2 -o ../AnyKernel3/dt -s 2048 -p scripts/dtc/ arch/arm/boot/
../dtbToolCM -2 -o ../AnyKernel3/dtb -s 2048 -p scripts/dtc/ arch/arm/boot/

cp arch/arm/boot/zImage ../AnyKernel3/
cd ../AnyKernel3
zip -r ../$1 anykernel.sh dt dtb META-INF/ tools/ zImage
