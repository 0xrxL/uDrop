//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import android.support.annotation.Nullable;

import java.util.Locale;

public enum uClientType {
    ANDROID_CREATOR(
        "35",
        14,
        "com.google.android.apps.youtube.creator",
        "25.08.100",
        "135.0.7037.2",
        "Pixel 9 Pro Fold",
        "244738035",
        "Google",
        "AP3A.241005.015.A2",
        "Android",
        "15"
    ),
    ANDROID_UNPLUGGED(
        "34",
        29,
        "com.google.android.apps.youtube.unplugged",
        "9.08.0",
        "135.0.7037.2",
        "Google TV Streamer",
        "244336107",
        "Google",
        "UTT3.240625.001.K5",
        "Android",
        "14"
    ),
    ANDROID_VR(
        "34",
        28,
        "com.google.android.apps.youtube.vr.pico",
        "1.62.27",
        "135.0.7037.2",
        "A9210",
        null,
        "Pico",
        "UKQ1.240321.001",
        "Android",
        "14"
    );

    @Nullable
    public final String androidSDKVersion;
    public final int clientID;
    public final String clientVersion;
    @Nullable
    public final String cronetVersion;
    public final Locale defaultLocale;
    public final String deviceModel;
    @Nullable
    public final String gmsCoreVersionCode;
    public final String osBrand;
    @Nullable
    public final String osBuildID;
    public final String osName;
    public final String osVersion;
    public final String userAgent;


    uClientType(@Nullable String androidSDKVersion, int clientID, String clientPackageName, String clientVersion, @Nullable String cronetVersion, String deviceModel, @Nullable String gmsCoreVersionCode, String osBrand, @Nullable String osBuildID, String osName, String osVersion) {
        this.androidSDKVersion = androidSDKVersion;
        this.clientID = clientID;
        this.clientVersion = clientVersion;
        this.cronetVersion = cronetVersion;
        this.defaultLocale = Locale.getDefault();
        this.deviceModel = deviceModel;
        this.gmsCoreVersionCode = gmsCoreVersionCode;
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