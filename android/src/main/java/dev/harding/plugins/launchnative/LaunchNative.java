package dev.harding.plugins.launchnative;

import android.util.Log;

public class LaunchNative {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
