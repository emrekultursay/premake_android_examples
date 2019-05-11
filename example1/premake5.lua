#!lua

workspace "MySolution"
  configurations {
    "DebugArm64", "DebugArm32", "DebugX86",
  }
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
  configuration "DebugArm32"
    defines {"DEBUG"}
    symbols "On"
  configuration "DebugArm64"
    defines {"DEBUG"}
    symbols "On"
  configuration "DebugX86"
     defines {"DEBUG"}
     symbols "On"
  filter "configurations:DebugArm32"
    architecture "arm"
  filter "configurations:DebugArm64"
    architecture "arm64"
  filter "configurations:DebugX86"
    architecture "x86"


