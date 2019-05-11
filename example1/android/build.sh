#!/bin/bash -e

mkdir -p app/libs/armeabi-v7a/
mkdir -p app/libs/arm64-v8a/
mkdir -p app/libs/x86/
cp ../vs2017/ARM/DebugArm32/libnative-lib.so app/libs/armeabi-v7a/
cp ../vs2017/ARM64/DebugArm64/libnative-lib.so app/libs/arm64-v8a/
cp ../vs2017/x86/DebugX86/libnative-lib.so app/libs/x86/

./gradlew assembleDebug
