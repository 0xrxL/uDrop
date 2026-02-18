package uTools;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
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
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

@SuppressWarnings({"ConstantConditions", "DiscouragedApi", "SameParameterValue"})
public class uUtils {
    private static String GetClassName() {
        return uUtils.class.getSimpleName();
    }

    public enum Entries {
        ANY,
        ALL
    }

    enum EnumInitialization { NONE }

    public static class MakeToast {
        private Toast toastObj;
        private final String message;
        private final Handler handlerObj = new Handler(Looper.getMainLooper());

        public MakeToast(String message) {
            this.message = message;
        }

        public void ShowToast() {
            this.handlerObj.post(() -> {
                if (this.toastObj == null) {
                    this.toastObj = Toast.makeText(GetAppContext(), this.message, Toast.LENGTH_LONG);
                }

                this.toastObj.show();
            });
        }

        public void HideToast() {
            this.handlerObj.post(() -> {
                if (this.toastObj != null) {
                    this.toastObj.cancel();
                }
            });
        }
    }





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
            Log.e(
                GetClassName(),

                "App Context is null"
            );

            return null;
        } else {
            return appContext;
        }
    }

    public static final ThreadPoolExecutor BackgroundThreadPool = new ThreadPoolExecutor(
        1,
        20,
        10 * 1000,
        TimeUnit.MILLISECONDS,
        new SynchronousQueue<>(),
        r -> {
            Thread t = new Thread(r);
            t.setPriority(Thread.MAX_PRIORITY);
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

    public static void ClearAppCache() {
        Stack<File> dirs =
            new Stack<>() {{
                push(GetAppContext().getCacheDir());
            }};

        if (dirs.isEmpty()
                ||
            !dirs.peek().isDirectory()
        ) {
            return;
        }

        Set<File> cacheFilesToDelete = new HashSet<>();
        long cacheSize = 0;

        while (!dirs.isEmpty()) {
            File[] filesAndDirs = dirs.pop().listFiles();

            if (filesAndDirs != null) {
                for (File fileOrDir : filesAndDirs) {
                    cacheSize += fileOrDir.length();

                    if (fileOrDir.isFile()) {
                        if (!fileOrDir.getAbsolutePath().contains(GetClassName())) {
                            cacheFilesToDelete.add(fileOrDir);
                        }
                    } else {
                        dirs.push(fileOrDir);
                    }
                }
            }
        }

        long gigabytesThreshold = (long) (0.85 * 1024 * 1024 * 1024);

        if (cacheSize < gigabytesThreshold
                ||
            cacheFilesToDelete.isEmpty()
        ) {
            return;
        }

        for (File cacheFileToClean : cacheFilesToDelete) {
            if (!cacheFileToClean.delete()) {
                Log.e(
                    GetClassName(),

                    String.format(
                        "Cannot delete file: %s",

                        cacheFileToClean.getAbsolutePath()
                    )
                );
            }
        }
    }

    private static boolean commentsPanelOpen = false;
    public static void SetCommentsPanelOpen(boolean value) {
        commentsPanelOpen = value;
    }
    public static boolean GetCommentsPanelOpen() {
        return commentsPanelOpen;
    }

    public static int GetResourceIdentifier(String type, String resourceIdentifierName) {
        return GetAppContext().getResources().getIdentifier(resourceIdentifierName, type, GetAppContext().getPackageName());
    }

    public static void DismissVideoPlayer() {}

    private static boolean videoChannelOpen = false;
    public static void SetVideoChannelOpen(boolean value) {
        videoChannelOpen = value;
    }
    public static boolean GetVideoChannelOpen() {
        return videoChannelOpen;
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

    public static String GetAppVersion() {
        try {
            return GetAppContext()
                    .getPackageManager()
                    .getPackageInfo(GetAppContext().getPackageName(), 0)
                    .versionName;
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                "Cannot get the current app version name"
            );
        }

        return "";
    }

    public static int GetDrawableInt(String name) {
        try {
            return GetAppContext()
                    .getResources()
                    .getIdentifier(name, "drawable", GetAppContext().getPackageName());
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                String.format("Cannot get the requested drawable %s", name)
            );

            return -1;
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

    public static AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> InitializeNewBlockList(AbstractMap.SimpleEntry<Set<String>, String> blockList) {
        File automatonDataFolder = new File(GetAppContext().getCacheDir(), GetClassName());
        if (!automatonDataFolder.exists() && !automatonDataFolder.mkdirs()) {
            Log.e(
                GetClassName(),

                "Cannot create Aho-Corasick automaton data folder"
            );
        }

        File automatonData = new File(automatonDataFolder, blockList.getValue());

        AhoCorasickDoubleArrayTrie<String> corasickObject = null;
        boolean generateAutomatonData = false;

        try (
            FileInputStream fis = new FileInputStream(automatonData);
            ObjectInputStream ois = new ObjectInputStream(fis)
        ) {
            corasickObject = new AhoCorasickDoubleArrayTrie<>();

            corasickObject.load(ois);

            ois.close();

            Log.d(
                GetClassName(),

                String.format("%s Aho-Corasick file succesfully loaded!", automatonData.getName())
            );
        } catch (ClassNotFoundException | IOException e) {
            Log.e(
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
                FileOutputStream fos = new FileOutputStream(automatonData);
                ObjectOutputStream oos = new ObjectOutputStream(fos)
            ) {
                corasickObject.save(oos);

                oos.flush();
                oos.close();

                Log.d(
                    GetClassName(),

                    String.format("%s Aho-Corasick file succesfully saved!", automatonData.getName())
                );
            } catch (IOException e) {
                Log.e(
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

    private static long lithoActionDownStartTime = 0;
    private static long lithoActionDownTotalDuration = 0;
    public static void SetLithoActionDownDuration(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case MotionEvent.ACTION_DOWN ->
                lithoActionDownStartTime = System.currentTimeMillis();

            case MotionEvent.ACTION_UP ->
                lithoActionDownTotalDuration = System.currentTimeMillis() - lithoActionDownStartTime;
        }
    }
    public static long GetLithoActionDownDuration() {
        return lithoActionDownTotalDuration;
    }

    private static WeakReference<Activity> mainActivity;
    public static Activity GetMainActivity() {
        if (mainActivity == null) {
            Log.e(
                GetClassName(),

                "Main Activity is null"
            );

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

    private static boolean navigationBarDelayFinished = true;
    public static void SetNavigationBarDelayFinished(boolean value) {
        navigationBarDelayFinished = value;
    }
    public static boolean GetNavigationBarDelayFinished() {
        return navigationBarDelayFinished;
    }
    private static final Handler navigationBarDelayHandler = new Handler(Looper.getMainLooper());
    public static boolean StartNavigationBarDelayTimer() {
        if (GetNavigationBarDelayFinished()) {
            navigationBarDelayHandler.postDelayed(() -> {
                SetNavigationBarDelayFinished(true);
            }, 300);
        }

        return GetNavigationBarDelayFinished();
    }

    public static void OpenNewVideo(String videoID) {
        try {
            Context context = GetMainActivity();

            Intent videoPlayerIntent = new Intent(
                Intent.ACTION_VIEW,

                Uri.parse(
                    String.format(
                        "https://www.youtube.com/watch?v=%s",

                        videoID
                    )
                )
            );
            videoPlayerIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            videoPlayerIntent.setPackage(context.getPackageName());

            context.startActivity(videoPlayerIntent);
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }
    }

    private static Enum<?> playerType = EnumInitialization.NONE;
    public static void SetPlayerType(Enum<?> value) {
        playerType = value;
    }
    public static Enum<?> GetPlayerType() {
        if (playerType == null) {
            Log.e(
                GetClassName(),

                "Player Type is null"
            );

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

    private static Enum<?> videoPlaybackStatus = EnumInitialization.NONE;
    public static void SetVideoPlaybackStatus(Enum<?> value) {
        videoPlaybackStatus = value;
    }
    public static Enum<?> GetVideoPlaybackStatus() {
        return videoPlaybackStatus;
    }
}
