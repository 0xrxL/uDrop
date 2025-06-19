//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

public final class uPlayerRoutes {
    private static final int HTTP_TIMEOUT_MILLISECONDS = 20 * 1000;
    public static String appVersionName = "1.0";
    public static HttpURLConnection GetPlayerResponseConnectionFromRoute(uRoute.CompiledRoute route, List<Object> clientTypeInfo) {
        try {
            HttpURLConnection connection = (HttpURLConnection) new URL(
                String.format(
                    "%s%s",

                    "https://youtubei.googleapis.com/youtubei/v1/",
                    route.getCompiledRoute()
                )
            ).openConnection();
            connection.setRequestMethod(route.getMethod().name());
            connection.setRequestProperty(
                "User-Agent",

                String.format(
                    "%s; uTube/%s (%s)",

                    System.getProperty("http.agent"),
                    appVersionName,
                    appVersionName
                )
            );
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setRequestProperty("User-Agent", (String) clientTypeInfo.get(0));
            connection.setRequestProperty("X-YouTube-Client-Name", (String) clientTypeInfo.get(1));
            connection.setRequestProperty("X-YouTube-Client-Version", (String) clientTypeInfo.get(2));

            connection.setUseCaches(false);
            connection.setDoOutput(true);

            connection.setConnectTimeout(HTTP_TIMEOUT_MILLISECONDS);
            connection.setReadTimeout(HTTP_TIMEOUT_MILLISECONDS);

            return connection;
        } catch (IOException | RuntimeException ignore) {}

        return null;
    }
}