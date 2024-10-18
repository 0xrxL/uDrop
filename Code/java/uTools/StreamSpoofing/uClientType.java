//Thanks to Revanced Team for the original code

package uTools.StreamSpoofing;

import android.support.annotation.Nullable;

public enum uClientType {
    IOS(
        5,
        "iPhone17,2",
        "18.0.22A3354",
        "com.google.ios.youtube/19.38.2 (iPhone; U; CPU iOS 18_0 like Mac OS X)",
        null,
        "19.38.2"
    );

    public final int id;
    public final String model;
    public final String osVersion;
    public final String userAgent;
    @Nullable
    public final String androidSdkVersion;
    public final String appVersion;

    uClientType(int id, String model, String osVersion, String userAgent, @Nullable String androidSdkVersion, String appVersion) {
        this.id = id;
        this.model = model;
        this.osVersion = osVersion;
        this.userAgent = userAgent;
        this.androidSdkVersion = androidSdkVersion;
        this.appVersion = appVersion;
    }
}