//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import android.support.annotation.Nullable;

import java.util.Locale;

public enum uClientType {
    ANDROID_CREATOR(
        "35",
        14,
        "com.google.android.apps.youtube.creator",
        "25.14.100",
        "137.0.7121.0",
        "Pixel 9 Pro",
        "Google",
        "BP1A.250405.007",
        "Android",
        "15"
    ),
    ANDROID_UNPLUGGED(
        "34",
        29,
        "com.google.android.apps.youtube.unplugged",
        "9.14.1",
        "137.0.7121.0",
        "Google TV Streamer",
        "Google",
        "UTTK.241210.003",
        "Android",
        "14"
    ),
    ANDROID_VR(
        "35",
        28,
        "com.google.android.apps.youtube.vr.oculus",
        "1.62.27",
        "137.0.7121.0",
        "Quest 3S",
        "Oculus",
        "BP1A.250405.007",
        "Android",
        "15"
    );

    @Nullable
    public final String androidSDKVersion;
    public final int clientID;
    public final String clientVersion;
    @Nullable
    public final String cronetVersion;
    public final Locale defaultLocale;
    public final String deviceModel;
    public final String osBrand;
    @Nullable
    public final String osBuildID;
    public final String osName;
    public final String osVersion;
    public final String userAgent;


    uClientType(@Nullable String androidSDKVersion, int clientID, String clientPackageName, String clientVersion, @Nullable String cronetVersion, String deviceModel, String osBrand, @Nullable String osBuildID, String osName, String osVersion) {
        this.androidSDKVersion = androidSDKVersion;
        this.clientID = clientID;
        this.clientVersion = clientVersion;
        this.cronetVersion = cronetVersion;
        this.defaultLocale = Locale.getDefault();
        this.deviceModel = deviceModel;
        this.osBrand = osBrand;
        this.osBuildID = osBuildID;
        this.osName = osName;
        this.osVersion = osVersion;
        this.userAgent =
            String.format(
                "%s/%s (Linux; U; Android %s; %s; %s; Build/%s; Cronet/%s)",

                clientPackageName,
                clientVersion,
                osVersion,
                this.defaultLocale,
                deviceModel,
                osBuildID,
                cronetVersion
            );
    }
}