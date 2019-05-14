#!/bin/bash -e

mkdir -p app/libs/armeabi-v7a/
mkdir -p app/libs/arm64-v8a/
mkdir -p app/libs/x86/
cp "../vs2017/ARM/Debug/libnative-lib.so" app/libs/armeabi-v7a/
cp "../vs2017/ARM64/Debug/libnative-lib.so" app/libs/arm64-v8a/
cp "../vs2017/x86/Debug/libnative-lib.so" app/libs/x86/

./gradlew assembleDebug
