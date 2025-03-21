//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import android.support.annotation.Nullable;

import java.util.Locale;

public enum uClientType {
    ANDROID_CREATOR(
        "35",
        14,
        "com.google.android.apps.youtube.creator",
        "25.11.100",
        "136.0.7069.0",
        "Pixel 9 Pro Fold",
        "Google",
        "BP1A.250305.020.A2",
        "Android",
        "15"
    ),
    ANDROID_UNPLUGGED(
        "34",
        29,
        "com.google.android.apps.youtube.unplugged",
        "9.11.1",
        "136.0.7069.0",
        "Google TV Streamer",
        "Google",
        "UTTK.241210.003",
        "Android",
        "14"
    ),
    ANDROID_VR(
        "32",
        28,
        "com.google.android.apps.youtube.vr.oculus",
        "1.62.27",
        "136.0.7069.0",
        "Quest 3S",
        "Oculus",
        "SQ3A.220605.009.A1",
        "Android",
        "12"
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