//Thanks to ReVanced/RvX Team for the original code

package uTools.VideoDetails;

import android.support.annotation.Nullable;

public enum uVideoDetailsClients {
    ANDROID(
        "defaultAudioTrackID,actionButtons",
        "36",
        3,
        "com.google.android.apps.youtube",
        "20.30.35",
        "140.0.7322.0",
        "Pixel 9 Pro XL",
        "Google",
        "BP2A.250705.008",
        "Android",
        "16",
        null
    ),
    WEB_REMIX(
        "channelID",
        null,
        29,
        null,
        "1.20241218.01.00",
        null,
        null,
        null,
        null,
        null,
        null,
        "Mozilla/5.0 (iPad; CPU OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1,gzip(gfe)"
    );

    public final String infoToBindTo;
    @Nullable
    public final String androidSDKVersion;
    public final int clientID;
    public final String clientVersion;
    @Nullable
    public final String cronetVersion;
    @Nullable
    public final String deviceModel;
    @Nullable
    public final String osBrand;
    @Nullable
    public final String osBuildID;
    @Nullable
    public final String osName;
    @Nullable
    public final String osVersion;
    public final String userAgent;
    uVideoDetailsClients(String infoToBindTo, @Nullable String androidSDKVersion, int clientID, @Nullable String clientPackageName, @Nullable String clientVersion, @Nullable String cronetVersion, @Nullable String deviceModel, @Nullable String osBrand, @Nullable String osBuildID, @Nullable String osName, @Nullable String osVersion, String userAgent) {
        this.infoToBindTo = infoToBindTo;
        this.androidSDKVersion = androidSDKVersion;
        this.clientID = clientID;
        this.clientVersion = clientVersion;
        this.cronetVersion = cronetVersion;
        this.deviceModel = deviceModel;
        this.osBrand = osBrand;
        this.osBuildID = osBuildID;
        this.osName = osName;
        this.osVersion = osVersion;
        this.userAgent =
            deviceModel == null
            ?
                userAgent
            :
                String.format(
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