//Thanks to ReVanced/RvX Team for the original code

package uTools.VideoDetails;

public enum uVideoDetailsClients {
    ANDROID(
        "defaultAudioTrackID,actionButtons",
        3,
        "20.30.35",
        "com.google.android.youtube/20.30.35 (Linux; U; Android 15)"
    ),
    WEB_REMIX(
        "channelID",
        29,
        "1.20241218.01.00",
        "Mozilla/5.0 (iPad; CPU OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1,gzip(gfe)"
    );

    public final String infoToBindTo;
    public final int clientID;
    public final String clientVersion;
    public final String userAgent;

    uVideoDetailsClients(String infoToBindTo, int clientID, String clientVersion, String userAgent) {
        this.infoToBindTo = infoToBindTo;
        this.clientID = clientID;
        this.clientVersion = clientVersion;
        this.userAgent = userAgent;
    }
}