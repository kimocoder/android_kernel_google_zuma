#!/bin/bash

#dts_dir="out/arch/arm64/boot/dts/vendor/qcom"

echo
echo "Clean Build Directory"
echo

#make clean && make mrproper

echo
echo "Issue Build Commands"
echo

mkdir -p out
export ARCH=arm64
export SUBARCH=arm64
export CLANG_PATH=~/tc/linux-x86/clang-r522817/bin
export CLANG_BIN_PATH=~/tc/linux-x86/clang-r522817/bin
export PATH=${CLANG_PATH}:${PATH}
#export DTC_EXT=dtc
export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=~/tc/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export CROSS_COMPILE_COMPAT=~/tc/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
#export LD_LIBRARY_PATH=~/tc/linux-x86/clang-r522817/lib64:$LD_LIBRARY_PATH
#export LDFLAGS="-fstack-protector-all"

export CLANG_AR=$CLANG_BIN_PATH/llvm-ar
export CLANG_CC=$CLANG_BIN_PATH/clang
export CLANG_LD=$CLANG_BIN_PATH/ld.lld
export CLANG_LDLTO=$CLANG_BIN_PATH/ld.lld
export CLANG_NM=$CLANG_BIN_PATH/llvm-nm



echo
echo "Set DEFCONFIG"
echo
make CC=$CLANG_CC LD=$CLANG_LD LDLTO=$CLANG_LD AR=$CLANG_AR NM=$CLANG_NM OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip O=out neutrino_defconfig

echo
echo "Build The Good Stuff"
echo

make CC=$CLANG_CC LD=$CLANG_LD LDLTO=$CLANG_LD AR=$CLANG_AR NM=$CLANG_NM OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip O=out -j8


#python3 scripts/mkdtboimg.py create out/dtbo.img --page_size=4096 $dts_dir/*.dtbo
