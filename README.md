

This repo contains several examples that show different ways to use [Premake](https://premake.github.io/)
to generate projects that can be used to build Android apps in C++ (using different build tools).


In example 1, the built-in `android` module of premake is used to generate a Visual Studio 2017 project
for Android. The developer uses VS to develop their native Android app, and build `.so` libraries for
Android. The example includes a checked-in Gradle project which packages the built `.so` files
into an APK.

In example 2, the third-party `android-studio`  module of premake is used to generate a Gradle project.
The generated Gradle project contains gradle and CMake files that point to the Java, C++, and other
resource files to include. The developer can import the Gradle project into Android Studio, and
develop/package their app there.

