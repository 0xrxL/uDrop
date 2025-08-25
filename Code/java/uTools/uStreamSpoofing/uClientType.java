//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

public enum uClientType {
    ANDROID_CREATOR(
        "36",
        14,
        "com.google.android.apps.youtube.creator",
        "25.30.100",
        "140.0.7322.0",
        "Pixel 9 Pro XL",
        "Google",
        "BP2A.250705.008",
        "Android",
        "16"
    ),
    ANDROID_UNPLUGGED(
        "36",
        29,
        "com.google.android.apps.youtube.unplugged",
        "9.30.0",
        "140.0.7322.0",
        "Google TV Streamer",
        "Google",
        "BT2A.250323.001.A4",
        "Android",
        "16"
    ),
    ANDROID_VR(
        "32",
        28,
        "com.google.android.apps.youtube.vr.oculus",
        "1.65.09",
        "140.0.7322.0",
        "Quest 3S",
        "Oculus",
        "SQ3A.220605.009.A1",
        "Android",
        "12"
    );

    public final String androidSDKVersion;
    public final int clientID;
    public final String clientVersion;
    public final String deviceModel;
    public final String osBrand;
    public final String osName;
    public final String osVersion;
    public final String userAgent;
    uClientType(String androidSDKVersion, int clientID, String clientPackageName, String clientVersion, String cronetVersion, String deviceModel, String osBrand, String osBuildID, String osName, String osVersion) {
        this.androidSDKVersion = androidSDKVersion;
        this.clientID = clientID;
        this.clientVersion = clientVersion;
        this.deviceModel = deviceModel;
        this.osBrand = osBrand;
        this.osName = osName;
        this.osVersion = osVersion;
        this.userAgent = String.format(
                            "%s/%s (Linux; U; Android %s; %s; Build/%s; Cronet/%s)",

                            clientPackageName,
                            clientVersion,
                            osVersion,
                            deviceModel,
                            osBuildID,
                            cronetVersion
                        );
    }
}