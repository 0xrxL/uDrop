package uTools.VideoDetails;

import static uTools.uUtils.GetAppVersion;

import android.os.Build;

public enum uVideoDetailsClients {
    ANDROID(
        "defaultAudioTrackID,saveVideoToWatchLater",
        String.valueOf(Build.VERSION.SDK_INT),
        3,
        "com.google.android.youtube",
        GetAppVersion(),
        "132.0.6779.0",
        Build.MODEL,
        Build.MANUFACTURER,
        Build.DISPLAY,
        "Android",
        Build.VERSION.RELEASE,
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
    public final String androidSDKVersion;
    public final int clientID;
    public final String clientVersion;
    public final String cronetVersion;
    public final String deviceMake;
    public final String deviceModel;
    public final String osBuildID;
    public final String osName;
    public final String osVersion;
    public final String userAgent;
    uVideoDetailsClients(String infoToBindTo, String androidSDKVersion, int clientID, String clientPackageName, String clientVersion, String cronetVersion, String deviceMake, String deviceModel, String osBuildID, String osName, String osVersion, String userAgent) {
        this.infoToBindTo = infoToBindTo;
        this.androidSDKVersion = androidSDKVersion;
        this.clientID = clientID;
        this.clientVersion = clientVersion;
        this.cronetVersion = cronetVersion;
        this.deviceMake = deviceMake;
        this.deviceModel = deviceModel;
        this.osBuildID = osBuildID;
        this.osName = osName;
        this.osVersion = osVersion;

        this.userAgent =
            userAgent == null
            ?
                String.format(
                    "%s/%s (Linux; U; Android %s; %s; Build/%s; Cronet/%s)",

                    clientPackageName,
                    clientVersion,
                    osVersion,
                    deviceModel,
                    osBuildID,
                    cronetVersion
                )
            :
                userAgent;
    }
}
