This example demonstrates how to build an Android app with C++ using premake, Visual Studio,
and Gradle; on Windows.

1. Run `premake5.exe` to generate a Visual Studio 2017 project:

```
premake5.exe vs2017
```

based on the configuration defined in the `premake5.lua` file.

2. Open the project `vs2017/MySolution.sln` with Visual Studio 2017.

3. Use Visual Studio to build `native-lib.so` for `ARM32`, `ARM64`, and `X86` ABIs for Android.
To select a particular configuration, use "Build | Configuration Manager" and change either the
configuration or the platform. The build generates shared libraries at location:


```vs2017/$ABI/$CONFIG/libnative-lib.so1```

4. Use the provided Gradle project under `android/` to package the app. The `build.sh` script
first copies files from VS output directories to the Gradle project directory (this can probably
be done in a nicer way using the postbuildcommands in premake). It then invokes the
`gradlew assembleDebug` command to generate an APK.


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
