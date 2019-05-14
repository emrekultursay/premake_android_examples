#!lua

workspace "MySolution"
  -- This mimics the Android Studio defaults. We have:
  --   2 build variants: Debug and Release
  --   4 ABIs: arm64 (arm64-v8a), arm (armeabi-v7a), x86, x86_64
  configurations { "Debug", "Release" }
  platforms { "arm64", "arm", "x86", "x86_64" }

  -- Build for Android.
  system "android"

  -- Put the solution to this directory.
  location "vs2017"

-- Describes native-lib library.
project "native-lib"
  -- Build an .so file.
  kind "SharedLib"

  -- Compile C++ files.
  language "C++"

  -- Put the library project to this directory.
  location "vs2017/native-lib/"

  -- The C++ files to use when building native-lib.so.
  files {
    "src/lib/lib.cpp"
  }

  -- Debug configuration has symbols enabled.
  configuration "Debug"
    defines {"DEBUG"}
    symbols "On"

  -- Release configuration has optimizations turned on.
  configuration "Release"
    defines {"NDEBUG"}
    optimize "On"

