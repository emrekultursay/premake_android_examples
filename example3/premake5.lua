#!lua

workspace "MySolution"
  -- This mimics the Android Studio defaults. We have:
  --   2 build variants: Debug and Release
  --   4 ABIs: arm64 (arm64-v8a), arm (armeabi-v7a), x86, x86_64
  configurations { "Debug", "Release" }
  platforms { "ARM64", "ARM", "x86", "x64" }

  -- Build for Android.
  -- system "android"

  -- Put the solution to this directory.
  location "vs2017"

  -- Debug configuration has symbols enabled.
  configuration "Debug"
    defines {"DEBUG"}
    symbols "On"

  -- Release configuration has optimizations turned on.
  configuration "Release"
    defines {"NDEBUG"}
    optimize "On"

-- Describes native-lib library.
project "native-lib"
  kind "ConsoleApp"
  -- Build an .so file.
  kind "SharedLib"

  -- Compile C++ files.
  language "C++"

  -- Put the library project to this directory.
  location "vs2017/native-lib/"

  -- The C++ files to use when building native-lib.so.
  files {
    "src/cpp/lib/lib.cpp",
  }

-- Describes the packaging step 
project "com.example.myapp"
  -- Build an APK file
  kind "Packaging"

  -- Put the APK packaging project to this directory
  location "vs2017/com.example.myapp/"

  -- The dependent project are built first.
  dependson {
    "native-lib"
  }

  -- This adds the listed projects into the "references" section in Visual Studio.
  links {
    "native-lib"
  }

  -- Files included in the build, some are about configuration, others are sources/resources.
  -- Premake plugin for Android packaging recognizes some special files.
  files {
    -- ANT build configuration.
	  "build.xml",

    -- ANT project configuration.
	  "project.properties",

    -- Manifest file.
	  "AndroidManifest.xml",

    -- Java source files.
    "src/java/com/example/myapp/MainActivity.java",
  }



