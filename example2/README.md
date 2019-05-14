
This is an example that demonstrates the use of the premake android-studio
module from:

  https://github.com/polymonster/premake-android-studio

This example is a slightly modified version of the example provided by the above
repo. (Specifically, the Java file/class name and path, application name are different, 
and the lua script explicitly points to the manifest file).


1. (Prerequisite) To install the premake-android-studio extension, download the code in
the following repo:

  https://github.com/polymonster/premake-android-studio
  
And then, copy the `android_studio/` folder to `~/.premake/` location.


2. Use premake to generate an Android Studio project.

```
premake5.exe android-studio
```

3. Use Android Studio to import the generated Gradle project at `android/` directory. You
can also directly build from the command line, but you will need to copy over gradle wrapper, 
and create a `local.properties` file.

4. Use Android Studio to Build, Run, Debug the app.

The app does not do anything interesting, it does not have any UI. So, you might want to put
a breakpoint in the C++ code run the app under the debugger to make sure you have the app
running correctly.
