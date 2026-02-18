package uTools.uStreamSpoofing;

import android.util.Log;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.List;

public final class uPlayerRoutes {
    private static String GetClassName() {
        return uPlayerRoutes.class.getSimpleName();
    }

    public static final List<String> requestKeys = Arrays.asList(
        "Authorization",
        "X-GOOG-API-FORMAT-VERSION",
        "X-Goog-Visitor-Id"
    );
    private static final int HTTP_TIMEOUT_MILLISECONDS = 10 * 1000;
    public static HttpURLConnection GetPlayerResponseConnectionFromRoute(uRoute.CompiledRoute route, List<Object> clientTypeInfo) {
        try {
            HttpURLConnection connection = (HttpURLConnection) new URL(
                String.format(
                    "https://youtubei.googleapis.com/youtubei/v1/%s",

                    route.getCompiledRoute()
                )
            ).openConnection();
            connection.setRequestMethod(route.getMethod().name());
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setRequestProperty("User-Agent", (String) clientTypeInfo.get(0));
            connection.setRequestProperty("X-YouTube-Client-Name", (String) clientTypeInfo.get(1));
            connection.setRequestProperty("X-YouTube-Client-Version", (String) clientTypeInfo.get(2));

            connection.setUseCaches(false);
            connection.setDoOutput(true);

            connection.setConnectTimeout(HTTP_TIMEOUT_MILLISECONDS);
            connection.setReadTimeout(HTTP_TIMEOUT_MILLISECONDS);

            return connection;
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }

        return null;
    }
}
