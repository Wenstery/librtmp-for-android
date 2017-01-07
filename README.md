# libRTMPForAndroid

Easy to build librtmp for android from rtmpdump.You can get the latest source here:

   Git clone git://git.ffmpeg.org/rtmpdump

At first,config NDK env on your PC(linux host,such as ubuntu develop env) 

Build steps:

1  cd android/jni

2  modify build_android.sh,set your own NDK path at line 2.

3  ./build_android.sh

As a result,librtmp.so,libssl.so and libcrypto.so will be created in dir android/jni/libs.
   
libcrypto.so and libssl.so is the dependencies of librtmp.so,you can get more information about them here:

   https://github.com/aluvalasuman/OpenSSL1.0.1cForAndroid
   
Have fun!
