package uTools;

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

@SuppressWarnings({"ConstantConditions", "SameParameterValue"})
public class uUtils {
    private static String GetClassName() {
        return uUtils.class.getSimpleName();
    }

    public enum Entries {
        ANY,
        ALL
    }

    enum EnumInitialization { NONE }





    private static boolean accountTabOpen = false;
    public static void SetAccountTabOpen(boolean value) {
        accountTabOpen = value;
    }
    public static boolean GetAccountTabOpen() {
        return accountTabOpen;
    }

    private static Context appContext;
    public static void SetAppContext(Context value) {
        appContext = value;
    }
    public static Context GetAppContext() {
        if (appContext == null) {
            Log.e("uContext", "App Context is null");

            return null;
        } else {
            return appContext;
        }
    }

    public static final ThreadPoolExecutor BackgroundThreadPool = new ThreadPoolExecutor(
        1,
        1,
        20 * 1000,
        TimeUnit.MILLISECONDS,
        new SynchronousQueue<>(),
        r -> {
            Thread t = new Thread(r);
            t.setPriority(GetThreadMinPriority());
            return t;
        }
    );

    public static boolean ByteBufferContainsString(ByteBuffer bArrSource, Set<String> blockList, Entries entriesEnum) {
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

    private static boolean captionsButton = false;
    public static void SetCaptionsButton(boolean value) {
        captionsButton = value;
    }
    public static boolean GetCaptionsButton() {
        return captionsButton;
    }

    private static boolean commentsPanelOpen = false;
    public static void SetCommentsPanelOpen(boolean value) {
        commentsPanelOpen = value;
    }
    public static boolean GetCommentsPanelOpen() {
        return commentsPanelOpen;
    }

    private static boolean communityPostsAccessible = false;
    public static void SetCommunityPostsAccessible(boolean value) {
        communityPostsAccessible = value;
    }
    public static boolean GetCommunityPostsAccessible() {
        return communityPostsAccessible;
    }

    private static boolean darkTheme = false;
    public static boolean GetDarkTheme() {
        return darkTheme;
    }
    public static void SetSystemTheme(Enum<?> value) {
        darkTheme = (value.ordinal() == 1);
    }
    public static void SetAppTheme(boolean value) {
        darkTheme = value;
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

    private static boolean hideWelcomeAndRules = false;
    public static void SetHideWelcomeAndRules(boolean value) {
        hideWelcomeAndRules = value;
    }
    public static boolean GetHideWelcomeAndRules() {
        return hideWelcomeAndRules;
    }

    public static AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> InitializeNewBlockList(AbstractMap.SimpleEntry<Set<String>, String> blockList) {
        AhoCorasickDoubleArrayTrie<String> corasickObject = null;

        File file = new File(appContext.getFilesDir(), blockList.getValue());

        boolean generateAutomatonData = false;

        try (
            FileInputStream fis = new FileInputStream(file);
            ObjectInputStream ois = new ObjectInputStream(fis)
        ) {
            corasickObject = new AhoCorasickDoubleArrayTrie<>();

            corasickObject.load(ois);

            ois.close();

            if (blockList
                    .getKey()
                    .stream()
                    .filter(corasickObject::matches)
                    .count()
                        ==
                blockList
                    .getKey()
                    .size())
            {
                Log.d(
                    GetClassName(),

                    String.format("%s Aho-Corasick file succesfully loaded!", file.getName())
                );
            } else {
                generateAutomatonData = true;
            }
        } catch (ClassNotFoundException | IOException e) {
            Log.d(
                GetClassName(),

                e.toString()
            );

            generateAutomatonData = true;
        }

        if (generateAutomatonData) {
            corasickObject = new AhoCorasickDoubleArrayTrie<>();

            corasickObject
                .build(
                    blockList
                        .getKey()
                        .stream()
                        .collect(
                            Collectors
                                .toMap(
                                    filter -> filter,

                                    filter -> filter
                                )
                        )
                );

            try (
                FileOutputStream fos = new FileOutputStream(file);
                ObjectOutputStream oos = new ObjectOutputStream(fos)
            ) {
                corasickObject.save(oos);

                oos.flush();
                oos.close();

                Log.d(
                    GetClassName(),

                    String.format("%s Aho-Corasick file succesfully saved!", file.getName())
                );
            } catch (IOException e) {
                Log.d(
                    GetClassName(),

                    e.toString()
                );
            }
        }

        return new AbstractMap.SimpleEntry<>(corasickObject, blockList.getKey().size());
    }

    public static <T> LinkedHashMap<String, T> InitializeStreamCache() {
        return new LinkedHashMap<>() {
            @Override
            protected boolean removeEldestEntry(Map.Entry eldest) {
                return size() > 16;
            }
        };
    }

    private static long lithoActionDownDuration = 0;
    private static long lithoActionDownStartTime = 0;
    public static void SetLithoActionDownDuration(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case MotionEvent.ACTION_DOWN ->
                lithoActionDownStartTime = System.currentTimeMillis();

            case MotionEvent.ACTION_UP ->
                lithoActionDownDuration = System.currentTimeMillis() - lithoActionDownStartTime;
        }
    }
    public static long GetLithoActionDownDuration() {
        return lithoActionDownDuration;
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

    private static boolean navigationBarActionDown = false;
    public static void SetNavigationBarActionDown(boolean value) {
        navigationBarActionDown = value;
    }
    public static boolean GetNavigationBarActionDown() {
        return navigationBarActionDown;
    }

    private static Enum<?> navigationBarPivot = EnumInitialization.NONE;
    public static void SetNavigationBarPivot(Enum<?> value) {
        navigationBarPivot = value;
    }
    public static Enum<?> GetNavigationBarPivot() {
        return navigationBarPivot;
    }

    public static Toast GetNewToast(@NonNull String messageToToast) {
        Objects.requireNonNull(messageToToast);

        return Toast.makeText(GetAppContext(), messageToToast, Toast.LENGTH_LONG);
    }

    private static Enum<?> playerType = EnumInitialization.NONE;
    public static void SetPlayerType(Enum<?> value) {
        playerType = value;
    }
    public static Enum<?> GetPlayerType() {
        if (playerType == null) {
            Log.e("uPlayerType", "Player Type is null");

            return null;
        } else {
            return playerType;
        }
    }

    private static ByteBuffer protoBufferComponents;
    public static void SetProtoBufferComponents(ByteBuffer value) {
        protoBufferComponents = value;
    }
    public static ByteBuffer GetProtoBufferComponents() {
        return protoBufferComponents;
    }

    private static String statsForNerdsClientName = "";
    public static String GetStatsForNerdsClientName() {
        return statsForNerdsClientName;
    }
    public static void SetStatsForNerdsClientName(String value) {
        statsForNerdsClientName = value;
    }

    public static int GetThreadMinPriority() {
        return Thread.MIN_PRIORITY;
    }

    public static boolean SearchInSetCorasick(String value, AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> corasickObject, Entries entriesEnum) {
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

    private static Enum<?> topBarPivot = EnumInitialization.NONE;
    public static void SetTopBarPivot(Enum<?> value) {
        topBarPivot = value;
    }
    public static Enum<?> GetTopBarPivot() {
        return topBarPivot;
    }
}
