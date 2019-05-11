This example demonstrates how to build an Android app with C++ using premake, Visual Studio, and Gradle.

1. Run premake5 to generate a Visual Studio 2017 project:

```
premake5.exe vs2017
```

2. Use Visual Studio to build native-lib.so for arm32, arm64, and x86 binaries for Android.
To switch from one configuration to another, use "Build | Configuration Manager". The build
generates shared libraries at `vs2017/$ABI/$CONFIG/libnative-lib.so1`.


3. Use the Gradle project to package the app. The `build.sh` script copies files from VS output
directories to the Gradle project directory (this can be done by postbuildcommands as well), and
then invokes `gradlew assembleDebug` to generate an APK.


In short:

```
cd example1
# Step 1: Premake
premake5.exe vs2017
# Step 2: Use VS to build native-lib.so for 3 ABIs.
#   This step is manual.
# Step 3: Package APK.
cd android/
./build.sh
```
