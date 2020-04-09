export ARCH=arm
export SUBARCH=arm
make O=out ARCH=arm lineageos_bacon_defconfig

#PATH="${PWD}/bin:${PWD}/toolchain/bin:${PATH}" \
make -j$(nproc --all) O=out \
                      CC=/home/xawlw/kernel/lolz/bin/clang \
                      HOSTCC=/home/xawlw/kernel/lolz/bin/clang \
                      CROSS_COMPILE=/home/xawlw/xtnd/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-linaro-7/bin/arm-linux-gnueabi-