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

import com.hankcs.algorithm.AhoCorasickDoubleArrayTrie;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;
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

    private static String GetuUtilsClassName() {
        return uUtils.class.getSimpleName();
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

    public static AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> InitializeNewBlockList(AbstractMap.SimpleEntry<Set<String>, String> blockList) {
        AhoCorasickDoubleArrayTrie<String> corasickObject = new AhoCorasickDoubleArrayTrie<>();

        File file = new File(appContext.getFilesDir(), blockList.getValue());

        boolean generateAutomatonData = false;

        try (
            FileInputStream fis = new FileInputStream(file);
            ObjectInputStream ois = new ObjectInputStream(fis)
        ) {
            corasickObject.load(ois);

            ois.close();

            Log.d(
                GetuUtilsClassName(),

                String.format("%s Aho-Corasick file succesfully loaded!", file.getName())
            );
        } catch (ClassNotFoundException | IOException e) {
            Log.d(
                GetuUtilsClassName(),

                e.toString()
            );

            generateAutomatonData = true;
        }

        if (generateAutomatonData) {
            corasickObject
            .build(
                new HashMap<>() {{
                    for (String filter : blockList.getKey()) {
                        put(filter, filter);
                    }
                }}
            );

            try (
                FileOutputStream fos = new FileOutputStream(file);
                ObjectOutputStream oos = new ObjectOutputStream(fos)
            ) {
                corasickObject.save(oos);

                oos.flush();
                oos.close();

                Log.d(
                    GetuUtilsClassName(),

                    String.format("%s Aho-Corasick file succesfully saved!", file.getName())
                );
            } catch (IOException e) {
                Log.d(
                    GetuUtilsClassName(),

                    e.toString()
                );
            }
        }

        return new AbstractMap.SimpleEntry<>(corasickObject, blockList.getKey().size());
    }
    public static boolean SearchInSetCorasick(String value, AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> corasickObject, entries entriesEnum) {
        List<AhoCorasickDoubleArrayTrie.Hit<String>> foundResults =
            corasickObject.getKey().parseText(value);

        return switch (entriesEnum.name()) {
            case "ANY" ->
                !foundResults.isEmpty();
            case "ALL" ->
                new HashSet<>() {{
                    for (AhoCorasickDoubleArrayTrie.Hit<String> hit : foundResults) {
                        add(hit.value);
                    }
                }}.size()
                    ==
                corasickObject.getValue();
            default ->
                false;
        };
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
