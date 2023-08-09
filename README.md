# Android Kernel for Samsung Exynos9611 (Samsung Galaxy M31)

Kernel for Android 12

Based on `SM-M315F_SWA_12_Opensource.zip` from [Samsung's OpenSource project](https://opensource.samsung.com/uploadSearch?searchValue=m315)

## Build Script
Ensure you have:
1. Git
2. Wget

Easiest way to build the kernel is to run:
```bash
$ ./build_kernel.sh
```

## Build Manually
#### 1. Toolchain
While in the root folder of this repo, run:
```bash
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 toolchain

cd toolchain && git checkout android-12.1.0_r27 && cd ..
```  

#### 2. Clang
While in the root folder of this repo, run:
```bash
# or use curl if you want
wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/1c1069109f294e9ffbdc1ff8541394ab4b5d941d/clang-r416183b1.tar.gz

mkdir clang && tar xzvf clang-r416183b1.tar.gz -C ./clang
```

#### 3. Build

While in the root folder of this repo, run:
```bash
# optionally clean by running: make clean
chown -R $(whoami) *
make exynos9610-m31nsxx_defconfig

make
```


Linux kernel
============

This file was moved to Documentation/admin-guide/README.rst

Please notice that there are several guides for kernel developers and users.
These guides can be rendered in a number of formats, like HTML and PDF.

In order to build the documentation, use ``make htmldocs`` or
``make pdfdocs``.

There are various text files in the Documentation/ subdirectory,
several of them using the Restructured Text markup notation.
See Documentation/00-INDEX for a list of what is contained in each file.

Please read the Documentation/process/changes.rst file, as it contains the
requirements for building and running the kernel, and information about
the problems which may result by upgrading your kernel.
