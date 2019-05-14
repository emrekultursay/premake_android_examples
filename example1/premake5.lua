#!lua

workspace "MySolution"
  configurations { "Debug", "Release" }
  platforms { "arm64", "arm", "x86" }
  system "android"
  location "vs2017"

project "native-lib"
  system "android"
  kind "SharedLib"
  language "C++"
  location "vs2017/native-lib/"
  files {
    "src/lib/lib.cpp"
  }

  configuration "Debug"
    defines {"DEBUG"}
    symbols "On"
  configuration "Release"
    defines {"NDEBUG"}
    optimize "On"

  filter "platforms:arm64"
    architecture "arm64"
  filter "platforms:arm"
    architecture "arm"
  filter "platforms:x86"
    architecture "x86"


