//Thanks to ReVanced/RvX Team for the original code

package uTools.VideoDetails;

public enum uWebClientType {
    M_WEB(
        2,
        "2.20241202.07.00"
    ),
    WEB_REMIX(
        29,
        "1.20241218.01.00"
    );

    public final int clientID;
    public final String clientVersion;
    public final String userAgent;

    uWebClientType(int clientID, String clientVersion) {
        this.clientID = clientID;
        this.clientVersion = clientVersion;
        this.userAgent = "Mozilla/5.0 (iPad; CPU OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1,gzip(gfe)";
    }
}