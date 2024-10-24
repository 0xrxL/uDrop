package uTools;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

public class uDebug {
    public static void printBooleanWithMethod(boolean value) {
        String message = "uBoolean";

        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();
        if (stackTraceElements.length > 3) {
            Log.d(
                    message,

                    String.format(
                            "Called from method: %s%s",

                            stackTraceElements[3].toString(),
                            "\n"
                    )
            );
        }

        Log.d(message, String.valueOf(value));
    }

    public static void printByteArrayWithMethod(byte[] value) {
        String message = "uByteArray";

        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();
        if (stackTraceElements.length > 3) {
            Log.d(
                    message,

                    String.format(
                            "Called from method: %s%s",

                            stackTraceElements[3].toString(),
                            "\n"
                    )
            );
        }

        char[] hexChars = new char[value.length * 2];
        char[] hexArray = "0123456789ABCDEF".toCharArray();
        for (int j = 0; j < value.length; j++) {
            int v = value[j] & 255;
            hexChars[j * 2] = hexArray[v >>> 4];
            hexChars[(j * 2) + 1] = hexArray[v & 15];
        }

        Log.d(message, Arrays.toString(hexChars));
    }

    public static void printByteBufferWithMethod(ByteBuffer value) {
        String message = "uByteBuffer";

        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();
        if (stackTraceElements.length > 3) {
            Log.d(
                    message,

                    String.format(
                            "Called from method: %s%s",

                            stackTraceElements[3].toString(),
                            "\n"
                    )
            );
        }

        if (value != null) {
            String valueToString = new String(value.array(), StandardCharsets.UTF_8);
            if (valueToString.isEmpty()) {
                Log.d(message, "-- null --");
            } else {
                Log.d(message, valueToString);
            }
        } else {
            Log.d(message, "-- null --");
        }

    }

    public static void printDoubleWithMethod(double value) {
        String message = "uDouble";

        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();
        if (stackTraceElements.length > 3) {
            Log.d(
                    message,

                    String.format(
                            "Called from method: %s%s",

                            stackTraceElements[3].toString(),
                            "\n"
                    )
            );
        }

        Log.d(message, String.valueOf(value));
    }

    public static void printFloatWithMethod(float value) {
        String message = "uFloat";

        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();
        if (stackTraceElements.length > 3) {
            Log.d(
                    message,

                    String.format(
                            "Called from method: %s%s",

                            stackTraceElements[3].toString(),
                            "\n"
                    )
            );
        }

        Log.d(message, String.valueOf(value));
    }

    public static void printIntWithMethod(int value) {
        String message = "uInt";

        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();
        if (stackTraceElements.length > 3) {
            Log.d(
                    message,

                    String.format(
                            "Called from method: %s%s",

                            stackTraceElements[3].toString(),
                            "\n"
                    )
            );
        }

        Log.d(message, String.valueOf(value));
    }

    public static void printLongWithMethod(long value) {
        String message = "uLong";

        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();
        if (stackTraceElements.length > 3) {
            Log.d(
                    message,

                    String.format(
                            "Called from method: %s%s",

                            stackTraceElements[3].toString(),
                            "\n"
                    )
            );
        }

        Log.d(message, String.valueOf(value));
    }

    public static void printStringWithMethod(String value) {
        String message = "uString";

        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();
        if (stackTraceElements.length > 3) {
            Log.d(
                    message,

                    String.format(
                            "Called from method: %s%s",

                            stackTraceElements[3].toString(),
                            "\n"
                    )
            );
        }

        if (value != null && !value.isEmpty()) {
            Log.d(message, value);
        } else {
            Log.d(message, "-- null --");
        }
    }

    public static void printStringBuilderWithMethod(StringBuilder value) {
        String message = "uStringBuilder";

        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();
        if (stackTraceElements.length > 3) {
            Log.d(
                    message,

                    String.format(
                            "Called from method: %s%s",

                            stackTraceElements[3].toString(),
                            "\n"
                    )
            );
        }

        if (value != null && value.capacity() > 0) {
            Log.d(message, value.toString());
        } else {
            Log.d(message, "-- null --");
        }
    }

    public static void printMethod() {
        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();
        if (stackTraceElements.length > 3) {
            Log.d(
                    "uMethod",

                    String.format(
                            "Called from method: %s%s",

                            stackTraceElements[3].toString(),
                            "\n"
                    )
            );
        }
    }

    public static void printStackTrace() {
        String message = "uStack";

        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();
        if (stackTraceElements.length <= 3) {
            Log.d(message, "Couldn't locate the method called from.");
        } else {
            Log.d(
                    message,

                    String.format(
                            "Called from method: %s%s",

                            stackTraceElements[3].toString(),
                            "\n"
                    )
            );
        }
    }

    public static void getViewParentID(View value) {
        Object parent = value.getParent();
        if (parent != null) {
            Log.d("uView", String.valueOf(((View) parent).getId()));
        } else {
            Log.d("uView", String.valueOf(0));
        }
    }

    public static void getViewParentName(View value) {
        ViewParent parent = value.getParent();
        if (parent != null) {
            Log.d("uView", parent.toString());
        } else {
            Log.d("uView", "-- null --");
        }
    }
}
