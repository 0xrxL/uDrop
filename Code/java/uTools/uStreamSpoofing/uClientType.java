//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import android.support.annotation.Nullable;

public enum uClientType {
    ANDROID_UNPLUGGED(
        29,
        "34",
        "8.49.0",
        "Google TV Streamer",
        "14",
        "com.google.android.apps.youtube.unplugged/%s (Linux; U; Android %s; GB) gzip"
    ),
    ANDROID_VR(
        28,
        "34",
        "1.61.48",
        "Quest 3",
        "14",
        "com.google.android.apps.youtube.vr.oculus/%s (Linux; U; Android %s; GB) gzip"
    );

    public final int id;
    @Nullable
    public final String androidSdkVersion;
    public final String appVersion;
    public final String model;
    public final String osVersion;
    public final String userAgent;


    uClientType(int id, @Nullable String androidSdkVersion, String appVersion, String model, String osVersion, String userAgent) {
        this.id = id;
        this.androidSdkVersion = androidSdkVersion;
        this.appVersion = appVersion;
        this.model = model;
        this.osVersion = osVersion;
        String formedUserAgent = "";
        if (userAgent.contains("Linux")) {
            formedUserAgent = String.format(
                                userAgent,
                                appVersion,
                                osVersion
                            );
        } else if (userAgent.contains("like Mac OS X")) {
            formedUserAgent = String.format(
                                userAgent,
                                appVersion,
                                osVersion
                                    .replaceAll("(\\d+\\.\\d+\\.\\d+).*", "$1")
                                    .replace(".", "_")
                            );
        }
        this.userAgent = formedUserAgent;
    }
}