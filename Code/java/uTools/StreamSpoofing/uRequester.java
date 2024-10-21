//Thanks to Revanced Team for the original code

package uTools.StreamSpoofing;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public class uRequester {
    public static HttpURLConnection getConnectionFromCompiledRoute(String apiUrl, uRoute.CompiledRoute route) throws IOException {
        String url = String.format(
            "%s%s",

            apiUrl,
            route.getCompiledRoute()
        );
        HttpURLConnection connection = (HttpURLConnection) new URL(url).openConnection();
        connection.setRequestMethod(route.getMethod().name());
        String agentString = String.format(
            "%s%s%s%s%s%s",

            System.getProperty("http.agent"),
            "; uTube/",
            uUtils.getAppVersionName(),
            " (",
            uUtils.getAppVersionName(),
            ")"
        );
        connection.setRequestProperty("User-Agent", agentString);

        return connection;
    }
}