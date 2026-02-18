package uTools.uStreamSpoofing;

import java.util.Objects;

public enum uClientType {
    Android_No_SDK(
        "ANDROID",
        null,
        3,
        "com.google.android.youtube",
        "20.05.46",
        "",
        "",
        "",
        "",
        "Android",
        " 16;",
        false,
        null
    ),
    Android_Studio(
        "ANDROID_CREATOR",
        "35",
        14,
        "com.google.android.apps.youtube.creator",
        "23.47.101",
        " Cronet/132.0.6779.0;",
        "Pixel 9 Pro Fold",
        " Google;",
        " Build/AP3A.241005.015.A2;",
        "Android",
        " 15;",
        true,
        null
    ),
    Android_VR_AV1(
        "ANDROID_VR",
        "34",
        28,
        "com.google.android.apps.youtube.vr.oculus",
        "1.54.20",
        " Cronet/122.0.6238.3;",
        "Quest 3",
        " Oculus;",
        " Build/UP1A.231005.007.A1;",
        "Android",
        " 14;",
        false,
        null
    ),
    Android_VR_No_AV1(
        Android_VR_AV1.clientName,
        "29",
        Android_VR_AV1.clientID,
        Android_VR_AV1.clientPackageName,
        "1.47.48",
        " Cronet/113.0.5672.24;",
        Android_VR_AV1.deviceMake,
        Android_VR_AV1.deviceModel,
        " Build/QQ3A.200805.001",
        Android_VR_AV1.osName,
        " 10;",
        false,
        null
    ),
    Vision_OS(
        "VISIONOS",
        null,
        101,
        null,
        "0.1",
        null,
        "RealityDevice14,1",
        "Apple",
        null,
        "visionOS",
        "1.3.21O771",
        false,
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15"
    );

    public final String clientName;
    public final String androidSDKVersion;
    public final int clientID;
    public final String clientPackageName;
    public final String clientVersion;
    public final String cronetVersion;
    public final String deviceMake;
    public final String deviceModel;
    public final String osBuildID;
    public final String osName;
    public final String osVersion;
    public final boolean useAuth;
    public String userAgent = "";
    uClientType(String clientName, String androidSDKVersion, int clientID, String clientPackageName, String clientVersion, String cronetVersion, String deviceMake, String deviceModel, String osBuildID, String osName, String osVersion, boolean useAuth, String userAgent) {
        this.clientName = clientName;
        this.androidSDKVersion = androidSDKVersion;
        this.clientID = clientID;
        this.clientPackageName = clientPackageName;
        this.clientVersion = clientVersion;
        this.cronetVersion = cronetVersion;
        this.deviceMake = deviceMake;
        this.deviceModel = deviceModel;
        this.osBuildID = osBuildID;
        this.osName = osName;
        this.osVersion = osVersion;
        this.useAuth = useAuth;

        if (userAgent == null) {
            if (Objects.equals(osName, "Android")) {
                this.userAgent =
                    String.format(
                        "%s/%s (Linux; U; Android%s%s%s%s) gzip",

                        clientPackageName,
                        clientVersion,
                        osVersion,
                        deviceModel,
                        osBuildID,
                        cronetVersion
                    );
            }
        } else {
            this.userAgent = userAgent;
        }
    }
}
