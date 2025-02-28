//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import static uTools.uStreamSpoofing.uRequester.GetConnectionFromCompiledRoute;

import org.json.JSONObject;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

import uTools.VideoDetails.uWebClientType;

public final class uPlayerRoutes {
    static String CreateInnertubeBody(uClientType clientType, String videoID) {
    	JSONObject innerTubeBody = new JSONObject();

        try {
            JSONObject client = new JSONObject();
            client.put("clientName", clientType.name());
            client.put("clientVersion", clientType.clientVersion);
            client.put("deviceMake", clientType.osBrand);
            client.put("deviceModel", clientType.deviceModel);
            client.put("hl", clientType.defaultLocale.getLanguage());
            client.put("gl", clientType.defaultLocale.getCountry());
            client.put("osName", clientType.osName);
            client.put("osVersion", clientType.osVersion);
            if (clientType.androidSDKVersion != null) {
                client.put("androidSdkVersion", clientType.androidSDKVersion);
                if (clientType.gmsCoreVersionCode != null) {
                    client.put("gmscoreVersionCode", clientType.gmsCoreVersionCode);
                }
            }

            innerTubeBody.put("context", new JSONObject() {{
                put("client", client);
            }});
            innerTubeBody.put("contentCheckOk", true);
            innerTubeBody.put("racyCheckOk", true);
            innerTubeBody.put("videoId", videoID);
        } catch (Exception ignore) {}

        return innerTubeBody.toString();
    }

    public static byte[] CreateWebInnertubeBody(uWebClientType webClientType, String videoID) {
        JSONObject innerTubeBody = new JSONObject();

        try {
            JSONObject client = new JSONObject();
            client.put("clientName", webClientType.name());
            client.put("clientVersion", webClientType.clientVersion);

            JSONObject context = new JSONObject();
            context.put("client", client);

            JSONObject lockedSafetyMode = new JSONObject();
            lockedSafetyMode.put("lockedSafetyMode", false);

            JSONObject user = new JSONObject();
            user.put("user", lockedSafetyMode);

            innerTubeBody.put("context", context);
            innerTubeBody.put("contentCheckOk", true);
            innerTubeBody.put("racyCheckOk", true);
            innerTubeBody.put("videoId", videoID);
        } catch (Exception ignore) {}

        return innerTubeBody.toString().getBytes(StandardCharsets.UTF_8);
    }

    public static HttpURLConnection GetPlayerResponseConnectionFromRoute(uRoute.CompiledRoute route, uClientType clientType) throws IOException {
        return GetPlayerResponseConnectionFromRoute(
            route,

            Arrays.asList(
                clientType.userAgent,
                String.valueOf(clientType.clientID),
                clientType.clientVersion
            )
        );
    }
    public static HttpURLConnection GetVideoDetailsResponseConnectionFromRoute(uRoute.CompiledRoute route, uWebClientType webClientType) throws IOException {
        return GetPlayerResponseConnectionFromRoute(
            route,

            Arrays.asList(
                webClientType.userAgent,
                String.valueOf(webClientType.clientID),
                webClientType.clientVersion
            )
        );
    }
    private static final int CONNECTION_TIMEOUT_MILLISECONDS = 10 * 1000;
    /** @noinspection SameParameterValue*/
    public static HttpURLConnection GetPlayerResponseConnectionFromRoute(uRoute.CompiledRoute route, List<Object> clientTypeInfo) throws IOException {
        HttpURLConnection connection = GetConnectionFromCompiledRoute(
                                            "https://youtubei.googleapis.com/youtubei/v1/",
                                            route
                                        );
        connection.setRequestProperty("Content-Type", "application/json");
        connection.setRequestProperty("User-Agent", (String) clientTypeInfo.get(0));
        connection.setRequestProperty("X-YouTube-Client-Name", (String) clientTypeInfo.get(1));
        connection.setRequestProperty("X-YouTube-Client-Version", (String) clientTypeInfo.get(2));

        connection.setUseCaches(false);
        connection.setDoOutput(true);
        connection.setConnectTimeout(CONNECTION_TIMEOUT_MILLISECONDS);
        connection.setReadTimeout(CONNECTION_TIMEOUT_MILLISECONDS);

        return connection;
    }

    static final uRoute.CompiledRoute GET_STREAMING_DATA = new uRoute(
        uRoute.Method.POST,
        String.format(
            "%s%s%s",

            "player",
            "?fields=streamingData",
            "&alt=proto"
        )
    ).Compile();

    public static final uRoute.CompiledRoute GET_VIDEO_DETAILS = new uRoute(
        uRoute.Method.POST,
        String.format(
            "%s%s%s",

            "player",
            "?prettyPrint=false",
            "&fields=videoDetails.channelId"
        )
    ).Compile();
}