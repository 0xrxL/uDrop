//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import java.util.Objects;

public enum uClientType {
    ANDROID(
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
    ANDROID_CREATOR(
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
    ANDROID_VR(
        "29",
        28,
        "com.google.android.apps.youtube.vr.oculus",
        "1.47.48",
        " Cronet/113.0.5672.24;",
        "Quest 3",
        " Oculus;",
        " Build/QQ3A.200805.001;",
        "Android",
        " 10;",
        false,
        null
    ),
    VISIONOS(
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

    public final String androidSDKVersion;
    public final int clientID;
    public final String clientVersion;
    public final String deviceMake;
    public final String deviceModel;
    public final String osName;
    public final String osVersion;
    public final boolean useAuth;
    public String userAgent = "";
    uClientType(String androidSDKVersion, int clientID, String clientPackageName, String clientVersion, String cronetVersion, String deviceMake, String deviceModel, String osBuildID, String osName, String osVersion, boolean useAuth, String userAgent) {
        this.androidSDKVersion = androidSDKVersion;
        this.clientID = clientID;
        this.clientVersion = clientVersion;
        this.deviceMake = deviceMake;
        this.deviceModel = deviceModel;
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