//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import java.util.Locale;

public enum uClientType {
    ANDROID_CREATOR(
        "35",
        14,
        "com.google.android.apps.youtube.creator",
        "25.16.100",
        "137.0.7145.0",
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
        "9.15.2",
        "137.0.7145.0",
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
        "1.63.56",
        "137.0.7145.0",
        "Quest 3S",
        "Oculus",
        "BP1A.250405.007",
        "Android",
        "15"
    );

    public final String androidSDKVersion;
    public final int clientID;
    public final String clientVersion;
    public final String cronetVersion;
    public final Locale defaultLocale = Locale.getDefault();
    public final String deviceModel;
    public final String osBrand;
    public final String osBuildID;
    public final String osName;
    public final String osVersion;
    public final String userAgent;
    uClientType(String androidSDKVersion, int clientID, String clientPackageName, String clientVersion, String cronetVersion, String deviceModel, String osBrand, String osBuildID, String osName, String osVersion) {
        this.androidSDKVersion = androidSDKVersion;
        this.clientID = clientID;
        this.clientVersion = clientVersion;
        this.cronetVersion = cronetVersion;
        this.deviceModel = deviceModel;
        this.osBrand = osBrand;
        this.osBuildID = osBuildID;
        this.osName = osName;
        this.osVersion = osVersion;
        this.userAgent = String.format(
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