#!/bin/bash

export ARCH=arm64
export PLATFORM_VERSION=12
export ANDROID_MAJOR_VERSION=s

# toolchain
sudo echo "Starting build script!"
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 toolchain
cd toolchain
git checkout android-12.1.0_r27
cd ..

# clang
wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/1c1069109f294e9ffbdc1ff8541394ab4b5d941d/clang-r416183b1.tar.gz
mkdir clang && tar xzvf clang-r416183b1.tar.gz -C ./clang

# build
sudo chown $(whoami) *
make ARCH=arm64 CONFIG_SECTION_MISMATCH_WARN_ONLY=y exynos9610-m31nsxx_defconfig
make ARCH=arm64 CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j16