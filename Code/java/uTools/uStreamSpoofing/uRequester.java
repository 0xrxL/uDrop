//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public class uRequester {
    public static HttpURLConnection GetConnectionFromCompiledRoute(String apiUrl, uRoute.CompiledRoute route) throws IOException {
        String url = String.format(
            "%s%s",

            apiUrl,
            route.getCompiledRoute()
        );
        HttpURLConnection connection = (HttpURLConnection) new URL(url).openConnection();
        connection.setRequestMethod(route.getMethod().name());
        String agentString = String.format(
            "%s; uTube/%s (%s)",

            System.getProperty("http.agent"),
            uSpoofingUtils.GetAppVersionName(),
            uSpoofingUtils.GetAppVersionName()
        );
        connection.setRequestProperty("User-Agent", agentString);

        return connection;
    }
}