#include "main.h" // main.h includes jni and log to test cmake include dirs
#include <string>

extern "C"
JNIEXPORT void JNICALL Java_com_as_example_MainActivity_hello_1cpp(JNIEnv *env, jclass clazz)
{
#ifdef DEBUG
    __android_log_write(ANDROID_LOG_INFO, "CPP", "oh hai!, I'm c++ (Debug Mode)");
#else
    __android_log_write(ANDROID_LOG_INFO, "CPP", "oh hai!, I'm c++ (Release Mode)");
#endif
}