//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import android.support.annotation.Nullable;

import java.util.Locale;

public enum uClientType {
    ANDROID_CREATOR(
        "35",
        14,
        "com.google.android.apps.youtube.creator",
        "23.47.101",
        "132.0.6779.0",
        "Pixel 9 Pro Fold",
        "Google",
        "AP3A.241005.015.A2",
        "Android",
        "15"
    ),
    ANDROID_UNPLUGGED(
        "34",
        29,
        "com.google.android.apps.youtube.unplugged",
        "8.49.0",
        "132.0.6808.3",
        "Google TV Streamer",
        "Google",
        "UTT3.240625.001.K5",
        "Android",
        "14"
    ),
    ANDROID_VR(
        "32",
        28,
        "com.google.android.apps.youtube.vr.oculus",
        "1.61.48",
        "132.0.6808.3",
        "Quest 3",
        "Oculus",
        "SQ3A.220605.009.A1",
        "Android",
        "12"
    ),
    IOS_UNPLUGGED(
        null,
        33,
        "com.google.ios.youtubeunplugged",
        "8.49",
        null,
        "iPhone14,3",
        "Apple",
        null,
        "iOS",
        "18.2.22C152"
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

        String formedUserAgent = "";
        if (androidSDKVersion != null) {
            formedUserAgent =
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
        } else {
            formedUserAgent =
                String.format(
                    "%s/%s (%s; U; CPU iOS %s like Mac OS X; %s)",

                    clientPackageName,
                    clientVersion,
                    deviceModel,
                    osVersion
                        .replaceAll("(\\d+\\.\\d+\\.\\d+).*", "$1")
                        .replace(".", "_"),
                    this.defaultLocale
                );
        }

        this.userAgent = formedUserAgent;
    }
}