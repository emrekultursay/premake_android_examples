// The package name is com.as.example, and the Java file is at the com/as/example directory. However,
// Android Studio does not like the "com.as.example" package, because the file is directly included from
// the innermost directory.
// This happens because the current premake android-studio extension does not have a way of
// adding a Java package (i.e., the outermost package), but only accepts pointing to leaf source
// files. Thus, we can only add "java.srcDirs = ["com/as/example/MainActivity.java"].
package com.as.example;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

// This is an empty activity. We cannot use a more complicated activity because the premake android-studio
// extension currently does not support copying custom XML files to proper paths
// (e.g., res/layout/activity_main.xml, values.xml, etc).
public class MainActivity extends Activity {

	static 
	{
		System.loadLibrary("app"); // load c or c++ lib
	}

	@Override
	protected void onCreate(Bundle arg0) {
		Log.d("Hello world!", "I'm Java");

		hello_cpp(); // call c or c++ function 

		super.onCreate(arg0);
	}

	public static native int hello_cpp(); // declare c or c++ function (synonymous with c's extern)
}
