//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

public class uRoute {
    private final String route;
    private final Method method;
    private final int paramCount;

    public uRoute(Method method, String route) {
        this.method = method;
        this.route = route;
        this.paramCount = CountMatches(route, '{');

        if (paramCount != CountMatches(route, '}')) {
            throw new IllegalArgumentException("Not enough parameters");
        }
    }

    public CompiledRoute Compile(String... params) {
        if (params.length != paramCount) {
            throw new IllegalArgumentException(
                String.format(
                    "Error compiling route [%s], incorrect amount of parameters provided. Expected: %s, provided: %s",

                    route,
                    paramCount,
                    params.length
                )
            );
        }

        StringBuilder compiledRoute = new StringBuilder(route);
        for (String param : params) {
            int paramStart = compiledRoute.indexOf("{");
            int paramEnd = compiledRoute.indexOf("}");
            compiledRoute.replace(paramStart, paramEnd + 1, param);
        }
        return new CompiledRoute(this, compiledRoute.toString());
    }

    public static class CompiledRoute {
        private final uRoute baseRoute;
        private final String compiledRoute;

        private CompiledRoute(uRoute baseRoute, String compiledRoute) {
            this.baseRoute = baseRoute;
            this.compiledRoute = compiledRoute;
        }

        public String getCompiledRoute() {
            return compiledRoute;
        }

        public Method getMethod() {
            return baseRoute.method;
        }
    }

    private int CountMatches(CharSequence seq, char c) {
        int count = 0;
        for (int i = 0; i < seq.length(); i++) {
            if (seq.charAt(i) == c)
                count++;
        }

        return count;
    }

    public Method GetMethod() {
        return method;
    }

    public enum Method {
        POST
    }
}