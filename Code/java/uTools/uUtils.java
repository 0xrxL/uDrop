package uTools;

import static uTools.uBlocker.currentNavBarIndex;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.pkware.ahocorasick.AhoCorasickResult;
import com.pkware.ahocorasick.StringAhoCorasick;

import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.AbstractMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.stream.Stream;

@SuppressWarnings({"ConstantConditions", "SameParameterValue"})
public class uUtils {
    public enum entries {
        ANY,
        ALL
    }

    public static boolean ByteBufferContainsString(ByteBuffer bArrSource, Set<String> blockList, entries entriesEnum) {
        int entriesFound = 0;
        int bArrSourceLimit = bArrSource.limit();

        for (String filter : blockList) {
            byte[] bArrTarget = filter.getBytes();
            int bArrTargetLength = bArrTarget.length;

            for (int i = 0; i <= bArrSourceLimit - bArrTargetLength; i++) {
                if (bArrSource.get(i) == bArrTarget[0]) {
                    int j = 0;

                    while (j < bArrTargetLength && bArrSource.get(i + j) == bArrTarget[j]) {
                        j++;
                    }

                    if (j == bArrTargetLength) {
                        entriesFound++;

                        break;
                    }
                }
            }
        }

        return switch (entriesEnum.name()) {
            case "ANY" -> entriesFound > 0;
            case "ALL" -> entriesFound == blockList.size();
            default -> false;
        };
    }

    public static Context appContext;
    public static Context GetAppContext() {
        if (appContext == null) {
            Log.e("uContext", "App Context is null");

            return null;
        } else {
            return appContext;
        }
    }

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

    private static WeakReference<Activity> mainActivity;
    public static Activity GetMainActivity() {
        if (mainActivity == null) {
            Log.e("uActivity", "Main Activity is null");

            return null;
        } else {
            return mainActivity.get();
        }
    }
    public static void SetMainActivity(Activity activity) {
        mainActivity = new WeakReference<>(activity);
    }
    public static Context GetMainActivityContext() {
        Context mainActivityContext = mainActivity.get();

        if (mainActivityContext == null) {
            Log.e("uContext", "Main Activity Context is null");

            return null;
        } else {
            return mainActivityContext;
        }
    }

    enum EnumInitialization { NONE }
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

    public static <T> LinkedHashMap<String, T> InitializeCache() {
        return new LinkedHashMap<>() {
            @Override
            protected boolean removeEldestEntry(Map.Entry eldest) {
                return size() > 16;
            }
        };
    }

    public static AbstractMap.SimpleEntry<StringAhoCorasick, Integer> InitializeNewBlockList(Set<String> blockList) {
        StringAhoCorasick corasickObject = new StringAhoCorasick();
        corasickObject.addAll(blockList);
        corasickObject.build();

        return new AbstractMap.SimpleEntry<>(corasickObject, blockList.size());
    }

    private static boolean isDarkTheme = false;
    public static boolean CheckDarkTheme() {
        return isDarkTheme;
    }
    public static void SetSystemTheme(Enum<?> value) {
        isDarkTheme = (value.ordinal() == 1);
    }
    public static void SetAppTheme(boolean value) {
        isDarkTheme = value;
    }

    public static void SetNavBarIndexByMainActivity() {
        currentNavBarIndex = switch (GetMainActivity().getIntent().getAction()) {
            case "com.google.android.youtube.action.open.search" -> -1;
            case "com.google.android.youtube.action.open.shorts" -> 1;
            case "com.google.android.youtube.action.open.subscriptions" -> 2;
            default -> 0;
        };
    }

    public static Toast GetNewToast(@NonNull String messageToToast) {
        Objects.requireNonNull(messageToToast);

        return Toast.makeText(GetAppContext(), messageToToast, Toast.LENGTH_LONG);
    }

    public static boolean SearchInSetCorasick(String value, AbstractMap.SimpleEntry<StringAhoCorasick, Integer> corasickObject, entries entriesEnum) {
        Stream<AhoCorasickResult<String>> foundResults = corasickObject.getKey().parse(value);

        return switch (entriesEnum.name()) {
            case "ANY" ->
                foundResults.findAny().isPresent();
            case "ALL" ->
                foundResults.map(AhoCorasickResult::getValue).distinct().count()
                    ==
                corasickObject.getValue();
            default ->
                false;
        };
    }

    public static final ThreadPoolExecutor BackgroundThreadPool = new ThreadPoolExecutor(
        1,
        1,
        20 * 1000,
        TimeUnit.MILLISECONDS,
        new SynchronousQueue<>(),
        r -> {
            Thread t = new Thread(r);
            t.setPriority(Thread.MAX_PRIORITY);
            return t;
        }
    );

    private static String statsForNerdsClientName = "";
    public static String GetStatsForNerdsClientName() {
        return statsForNerdsClientName;
    }
    public static void SetStatsForNerdsClientName(String value) {
        statsForNerdsClientName = value;
    }
}
