//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import android.support.annotation.NonNull;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class uSpoofingUtils {
    private static final ThreadPoolExecutor BackgroundThreadPool = new ThreadPoolExecutor(
        3,
        Integer.MAX_VALUE,
        10,
        TimeUnit.SECONDS,
        new SynchronousQueue<>(),
        r -> {
            Thread t = new Thread(r);
            t.setPriority(Thread.MAX_PRIORITY);
            return t;
        }
    );

    public static String GetAppVersionName() {
        return "1.0";
    }

    @NonNull
    public static <T> Future<T> SubmitOnBackgroundThread(@NonNull Callable<T> call) {
        return BackgroundThreadPool.submit(call);
    }
}