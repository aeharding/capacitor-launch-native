package dev.harding.plugins.launchnative;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "LaunchNative")
public class LaunchNativePlugin extends Plugin {

    private LaunchNative implementation = new LaunchNative();

    @PluginMethod
    public void attempt(PluginCall call) {
        String url = call.getString("url");

        JSObject ret = new JSObject();
        ret.put("completed", implementation.attempt(getContext(), url));
        call.resolve(ret);
    }

}
