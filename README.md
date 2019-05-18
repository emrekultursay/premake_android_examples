

This repo contains examples that show some ways to use [Premake](https://premake.github.io/)
to generate projects that can be used to build Android apps in C++.

In example 1, the built-in `android` module of premake is used to dynamically generate a Visual Studio
2017 project for Android. You can use this VS project to develop a native Android app, and build `.so`
libraries for Android. The example includes a checked-in Gradle project which packages the
built `.so` files into an APK. Once the app is packaged, you can import the APK into Android Studio
and run/debug/profile it.

In example 2, the third-party `android-studio`  module of premake is used to generate an Android-Gradle
project. The generated Gradle project contains gradle and CMake files that point to the Java, C++, and
other resource files to include. You can import the Gradle project into Android Studio, and
build/develop/package/debug the app there.

In example 3, the built-in `android` module of premake is used to dynamically generate a Visual Studio 2017
project for Android, similar to example 1. Unlike example 1, this example also demonstrates how to use
packaging `kind` of Premake, which generates a Visual Studio `.androidproj` project. This project is capable
of building Java code, and packaging APKs using ANT build system.
