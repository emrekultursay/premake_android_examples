
Example that demonstrates the use of the premake android-studio module from:
https://github.com/polymonster/premake-android-studio

It is a slightly modified version of the example provided by the above repo.


1. Use premake to generate an Android Studio project.

```
premake5.exe android-studio
```

2. Use Android Studio to import the generated Gradle project at `android/` directory.


3. Use Android Studio to Build, Run, Debug the app.

The app does not do anything interesting, so you might want to put a breakpoint in the C++ code
run the app under the debugger to make sure you have the app running correctly.
