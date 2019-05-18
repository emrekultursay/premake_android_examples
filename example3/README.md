This example demonstrates how to build an Android app with C++ using premake entirely
inside Visual Studio; on Windows.

1. Run `premake5.exe` to generate a Visual Studio 2017 project:

```
premake5.exe vs2017
```

based on the configuration defined in the `premake5.lua` file.

2. Open the project `vs2017/MySolution.sln` with Visual Studio 2017.

3. Use Visual Studio to build/deploy/debug the `com.example.myapp` Android.

