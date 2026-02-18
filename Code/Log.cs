using System.Text.RegularExpressions;

namespace uDrop.Code
{
    public static class Log
    {
        public static readonly (int, int) initConsoleSize = (Console.WindowWidth, Console.WindowHeight);

        public static void Divider()
        {
            "\n".NormalLog();
            $"\n{new string('~', initConsoleSize.Item1)}".WarningLog();
            "\n".NormalLog();
        }

        public static void StartPatchLog(this string patchName)
        {
            Divider();
            $"\nApplying {patchName}...".NormalLog();
            "\n".NormalLog();
        }
        public static void EndPatchLog(this List<(bool, bool)> subPatchResults, string patchName)
        {
            "\n".NormalLog();

            List<string> disabledSubPatches =
                [..
                    subPatchResults
                        .Select((disabled, index) => disabled.Item1 ? index.ToString() : "")
                        .Where(empty => !String.IsNullOrEmpty(empty))
                ];
            List<string> failedSubPatches =
                [..
                    subPatchResults
                        .Select((failed, index) => failed.Item2 ? index.ToString() : "")
                        .Where(empty => !String.IsNullOrEmpty(empty))
                ];

            if (failedSubPatches.Count.Equals(0))
            {
                $"\n{
                    patchName
                } succesfully applied {
                    (disabledSubPatches.Count > 0 ? $", with disabled subpatch: {{ {string.Join(", ", disabledSubPatches)} }}" : "")
                }".SuccessLog();
            }
            else
            {
                APKUtils.SetPatchingFailed(true);

                $"\nFailed to apply {
                    patchName
                }, there was an error with subpatch: {{ {string.Join(", ", failedSubPatches)} }}".ErrorLog();

                return;
            }
        }

        public static void StartProcessLog(this string message)
        {
            Divider();
            message.NormalLog();
            "\n".NormalLog();
        }
        public static void EndProcessLog(this string message, bool success)
        {
            "\n".NormalLog();

            if (success)
            {
                message.SuccessLog();
            }
            else
            {
                message.ErrorLog();
            }
        }

        public static void NormalLog(this string message)
        {
            Print(message, ConsoleColor.Gray);
        }

        public static void WarningLog(this string message)
        {
            Print(message, ConsoleColor.Yellow);
        }

        public static void ErrorLog(this string message)
        {
            Print(message, ConsoleColor.Red);
        }

        public static void PatchLog(this string message)
        {
            Print(message, ConsoleColor.Cyan);
        }
        public static void PatchLog(string path, string patch, string patchedAtLine)
        {
            string message = $"\n{path.GetSmaliFileLastPath()} ";
            message += !String.IsNullOrEmpty(patch) ? $"---> {patch} " : "";
            message += !String.IsNullOrEmpty(patchedAtLine) ? $"---> {patchedAtLine}" : "";

            Print(message, ConsoleColor.Cyan);
        }

        public static void SuccessLog(this string message)
        {
            Print(message, ConsoleColor.Green);
        }

        private static readonly string breakSym = "\n";
        private static string messageLineWithoutBreak = "";
        private static int messageLineWithoutBreakLength = 0;
        private static bool isMessageLineStartWithBreakSym = false;
        private static void Print(string message, ConsoleColor printColor)
        {
            if (!String.IsNullOrWhiteSpace(message))
            {
                foreach (string messageLine in Regex.Split(message, $@"(?={breakSym})").Where(str => !string.IsNullOrEmpty(str)))
                {
                    isMessageLineStartWithBreakSym = messageLine.TrimStart(' ').StartsWith(breakSym);

                    messageLineWithoutBreak = messageLine.Replace(breakSym, "");
                    messageLineWithoutBreakLength = messageLineWithoutBreak.Length;
                    
                    if (messageLineWithoutBreakLength <= initConsoleSize.Item1)
                    {
                        APKUtils.SetConsoleOutput(
                            $"{
                                (isMessageLineStartWithBreakSym ? breakSym : "")
                            }{
                                new string(' ', (initConsoleSize.Item1 - messageLineWithoutBreakLength) / 2)
                            }{
                                messageLineWithoutBreak
                            }",

                            printColor
                        );
                    }
                }
            }
            else
            {
                APKUtils.SetConsoleOutput(
                    message,

                    printColor
                );
            }
        }
        public static void ClearCurrentLine()
        {
            Console.Write($"\r{new string(' ', initConsoleSize.Item1)}\r");
        }

        public static void QuitWithException(this string message)
        {
            $"\n{message}".ErrorLog();
            "\nPress any key to close the patcher".ErrorLog();
            Console.ReadKey();
            Environment.Exit(0);
        }
    }
}