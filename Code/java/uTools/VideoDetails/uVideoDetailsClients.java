//Thanks to ReVanced/RvX Team for the original code

package uTools.VideoDetails;

public enum uVideoDetailsClients {
    ANDROID(
        "defaultAudioTrackID,actionButtons",
        "33",
        3,
        "com.google.android.apps.youtube",
        "20.40.41",
        "143.0.7460.0",
        "Pixel 7a",
        "Google",
        "TQ3A.230901.001.C3",
        "Android",
        "13",
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