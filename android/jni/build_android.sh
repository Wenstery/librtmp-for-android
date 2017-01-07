#!/bin/bash
NDK=/home/client/android-ndk/android-ndk-r10e #change this to your own NDK path.
export PATH=$NDK:$PATH
CUR_PATH=$(pwd)
cd ./third_party/OpenSSL1.0.1cForAndroid
ndk-build
cp $(pwd)/libs/armeabi/libcrypto.so $CUR_PATH/libs
cp $(pwd)/libs/armeabi/libssl.so $CUR_PATH/libs
cd $CUR_PATH
ndk-build
