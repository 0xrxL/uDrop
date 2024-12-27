//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import org.json.JSONObject;

import java.io.IOException;
import java.net.HttpURLConnection;

final class uPlayerRoutes {
    static String CreateInnertubeBody(uClientType clientType) {
    	JSONObject innerTubeBody = new JSONObject();

        try {
            JSONObject client = new JSONObject();
            client.put("clientName", clientType.name());
            client.put("clientVersion", clientType.appVersion);
            client.put("deviceModel", clientType.model);
            client.put("osVersion", clientType.osVersion);
            if (clientType.androidSdkVersion != null) {
                client.put("androidSdkVersion", clientType.androidSdkVersion);
                client.put("osName", "Android");
            } else {
                client.put("deviceMake", "Apple");
                client.put("osName", "iOS");
            }

            innerTubeBody.put("context", new JSONObject() {{
                put("client", client);
            }});
            innerTubeBody.put("contentCheckOk", true);
            innerTubeBody.put("racyCheckOk", true);
            innerTubeBody.put("videoId", "%s");
        } catch (Exception ignore) {}

        return innerTubeBody.toString();
    }

    private static final int CONNECTION_TIMEOUT_MILLISECONDS = 10 * 1000;
    /** @noinspection SameParameterValue*/
    static HttpURLConnection GetPlayerResponseConnectionFromRoute(uRoute.CompiledRoute route, uClientType clientType) throws IOException {
        var connection = uRequester.GetConnectionFromCompiledRoute(
                                "https://youtubei.googleapis.com/youtubei/v1/",
                                route
                            );
        connection.setRequestProperty("Content-Type", "application/json");
        connection.setRequestProperty("User-Agent", clientType.userAgent);
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
}