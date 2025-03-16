package uTools;

import static uTools.uBlocker.currentNavBarIndex;
import static uTools.uStreamSpoofing.uStreamingDataRequest.statsForNerdsClientName;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@SuppressLint("StaticFieldLeak")
@SuppressWarnings({"ConstantConditions", "SameParameterValue"})
public class uUtils {
    private static final ThreadPoolExecutor backgroundThreadPool = new ThreadPoolExecutor(
            1,
            Integer.MAX_VALUE,
            10,
            TimeUnit.SECONDS,
            new SynchronousQueue<>(),
            r -> {
                Thread t = new Thread(r);
                t.setPriority(Thread.MAX_PRIORITY);
                return t;
            });

    public static boolean ByteBufferContainsString(ByteBuffer byteBuffer, String str) {
        byte[] bArrSource = byteBuffer.array();
        byte[] bArrTarget = str.getBytes();

        for (int i = 0; i <= bArrSource.length - bArrTarget.length; i++) {
            if (Arrays.equals(
                Arrays.copyOfRange(bArrSource, i, i + bArrTarget.length),

                bArrTarget
            )) {
                return true;
            }
        }
        return false;
    }

    private static boolean isDarkTheme = false;
    public static boolean CheckDarkTheme() {
        return isDarkTheme;
    }

    public static String currentPlayerID = "";
    public static boolean CheckIsShortsPlayer() {
        return currentPlayerID.startsWith("8AEB");
    }

    enum EnumInitialization { NONE }

    public static Context appContext;
    public static Context GetAppContext() {
        if (appContext == null) {
            Log.e("uContext", "App Context is null");

            return null;
        } else {
            return appContext;
        }
    }

    public static String GetCurrentStreamClientName() { return statsForNerdsClientName; }

    private static long lithoActionDownStartTime = 0;
    public static long lithoActionDownDuration = 0;
    public static void SetLithoActionDownDuration(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case MotionEvent.ACTION_DOWN ->
                lithoActionDownStartTime = System.currentTimeMillis();

            case MotionEvent.ACTION_UP ->
                lithoActionDownDuration = System.currentTimeMillis() - lithoActionDownStartTime;
        }
    }

    private static Activity mainActivity;
    public static Activity GetMainActivity() {
        if (mainActivity == null) {
            Log.e("uActivity", "Main Activity is null");

            return null;
        } else {
            return mainActivity;
        }
    }

    public static Enum<?> playerType = EnumInitialization.NONE;
    public static Enum<?> GetPlayerType() {
        if (playerType == null) {
            Log.e("uPlayerType", "Player Type is null");

            return null;
        } else {
            return playerType;
        }
    }

    public static boolean isCommentsOrLiveChatPanelOpen = false;

    public static void SetNavBarIndexByMainActivity() {
        try {
            String intentAction = GetMainActivity().getIntent().getAction();

            switch (intentAction) {
                case "com.google.android.youtube.action.open.search":
                    currentNavBarIndex = -1;
                break;
                case "android.intent.action.MAIN":
                    currentNavBarIndex = 0;
                break;
                case "com.google.android.youtube.action.open.shorts":
                    currentNavBarIndex = 1;
                break;
                case "com.google.android.youtube.action.open.subscriptions":
                    currentNavBarIndex = 2;
                break;
            }
        } catch (Exception ignore) {}
    }

    private static WeakReference<Activity> mainActivityRef;
    public static Context GetMainActivityContext() {
        Context mainActivityContext = mainActivityRef.get();

        if (mainActivityContext == null) {
            Log.e("uContext", "Main Activity Context is null");

            return null;
        } else {
            return mainActivityContext;
        }
    }

    public static void HideImageView(ImageView imageView) {
        imageView.setVisibility(View.GONE);
    }

    public static void HideInstanceViewByLayoutParams(View view) {
        if (view instanceof ViewGroup) {
            view.setLayoutParams(new ViewGroup.LayoutParams(1, 1));
        }
    }

    public static void HideView(View view) {
        view.setVisibility(View.GONE);
    }

    public static void HideViewByLinearLayoutParams(View view) {
        view.setLayoutParams(new LinearLayout.LayoutParams(0, 0));
    }

    public static void HideViewGroupByLayoutParams(ViewGroup viewGroup) {
        viewGroup.setLayoutParams(new ViewGroup.LayoutParams(0, 0));
    }

    public static void HideViewGroupByMarginLayout(ViewGroup viewGroup) {
        viewGroup.setVisibility(View.GONE);
    }

    public static boolean IsCurrentlyOnMainThread() {
        return Looper.getMainLooper().isCurrentThread();
    }

    public static void RunOnMainThread(@NonNull Runnable runnable) {
        RunOnMainThreadDelayed(runnable, 0);
    }

    public static void RunOnMainThreadDelayed(@NonNull Runnable runnable, long delayMillis) {
        Runnable loggingRunnable = () -> {
            try {
                runnable.run();
            } catch (Exception ignore) {}
        };
        new Handler(Looper.getMainLooper()).postDelayed(loggingRunnable, delayMillis);
    }

    public static void RunOnMainThreadNowOrLater(@NonNull Runnable runnable) {
        if (IsCurrentlyOnMainThread()) {
            runnable.run();
        } else {
            RunOnMainThread(runnable);
        }
    }

    public static void SetMainActivity(Activity activity) {
        mainActivity = activity;

        mainActivityRef = new WeakReference<>(activity);
    }

    public static void SetSystemTheme(Enum<?> value) {
        isDarkTheme = Integer.valueOf(value.ordinal()).equals(1);
    }
    public static void SetAppTheme(boolean value) {
        isDarkTheme = value;
    }

    public static Toast GetNewToast(@NonNull String messageToToast) {
        Objects.requireNonNull(messageToToast);

        return Toast.makeText(GetAppContext(), messageToToast, Toast.LENGTH_LONG);
    }

    @NonNull
    public static <T> Future<T> SubmitOnBackgroundThread(@NonNull Callable<T> call) {
        return backgroundThreadPool.submit(call);
    }
}

