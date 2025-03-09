#!/bin/sh

export PREFIX=$THEOS/toolchain/Xcode11.xctoolchain/usr/bin/

make clean
make package FINALPACKAGE=1

make clean
make package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=rootless

make clean
make package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=roothide

export -n PREFIX
