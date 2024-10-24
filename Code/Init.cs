using System.Diagnostics;
using System.Reflection;

namespace uDrop.Code
{
    public class Init
    {
        //--------------------------------General Patcher Settings--------------------------------//
        public static readonly (string, string, string, string, bool) projectInfo = (             //
            /* Dev Company */                                                                     //
                "google-inc",                                                                     //
            /* App Name */                                                                        //
                "YouTube",                                                                        //
            /* Patched App Name */                                                                //
                "uTube",                                                                          //
            /* App Version */                                                                     //
                "",                                                                               //
            /* APK Downloader */                                                                  //
                true                                                                              //
        );                                                                                        //
        private static readonly string firstRootFolder =                                          //
            "APKs";                                                                               //
        public static readonly string firstCombinedRootFolders =                                  //
            $"{firstRootFolder}\\Original";                                                       //
        public static readonly string secondCombinedRootFolders =                                 //
            $"{firstRootFolder}\\Modded";                                                         //
        public static string apkDecompiledPath =                                                  //
            $"{                                                                                   //
            firstCombinedRootFolders                                                              //
            }\\{                                                                                  //
            projectInfo.Item2                                                                     //
            }";                                                                                   //
        public static readonly string apkPath =                                                   //
            $"{apkDecompiledPath}.apk";                                                           //
        public static readonly string apkModdedPath =                                             //
            apkPath.Replace(                                                                      //
                $"{                                                                               //
                    firstCombinedRootFolders                                                      //
                }\\{                                                                              //
                    projectInfo.Item2                                                             //
                }",                                                                               //
                                                                                                  //
                $"{                                                                               //
                    secondCombinedRootFolders                                                     //
                }\\{                                                                              //
                    projectInfo.Item3                                                             //
                }"                                                                                //
            );                                                                                    //
        //----------------------------------------------------------------------------------------//

        public static async Task Main()
        {
            Console.Title = "uDrop";

            foreach (var dir in new List<string> {
                                            firstCombinedRootFolders,
                                            secondCombinedRootFolders,
                                            APKUtils.logsDirName
                                        })
            {
                if (!Directory.Exists(dir))
                {
                    Directory.CreateDirectory(dir);
                }
            };

            Process process = new();
            ProcessStartInfo startInfo = new()
            {
                WindowStyle = ProcessWindowStyle.Hidden,
                FileName = "cmd.exe",
                Arguments = $"/C java -version",
                RedirectStandardOutput = true,
                RedirectStandardError = true
            };
            process.StartInfo = startInfo;
            process.Start();
            _ = process.StandardOutput.ReadToEnd();
            string processError = process.StandardError.ReadToEnd();
            process.WaitForExit();

            if (processError.Length.Equals(0))
            {
                "Error: Java is not installed".QuitWithException();
            }




            //-------------------------------------Fast Operations------------------------------------//
#pragma warning disable CS0162
            switch ("")
            {
                case "align":
                    APKUtils.ZipAlign();
                    goto case "sign";
                case "sign":
                    APKUtils.Sign();
                    goto END_CASE;

                case "split":
                    Console.WriteLine("".Split('L', ';')[1]);
                    goto END_CASE;

                case "rebuild":
                    APKUtils.Decompile();

                    ConsoleLog.Divider();
                    "Press any key to recompile".WarningLog(false);
                    Console.ReadKey();
                    goto case "build";
                case "build":
                    APKUtils.Compile();
                    APKUtils.ZipAlign();
                    APKUtils.Sign();
                    APKUtils.TemporaryResourceRemoval();
                    goto END_CASE;

                case "test":
                    YouTube_Patches.Test();
                    goto END_CASE;

                case "test2":
                    YouTube_Patches.Next_In_Queue_Flyout_Button_Removal();
                    goto END_CASE;

                case "debug":
                    APKUtils.Decompile();

                    ConsoleLog.Divider();

                    YouTube_Patches.Debug();

                    APKUtils.Compile();
                    APKUtils.ZipAlign();
                    APKUtils.Sign();
                    APKUtils.TemporaryResourceRemoval();
                    goto END_CASE;

                case "debug2":
                    ConsoleLog.Divider();

                    YouTube_Patches.Debug();
                    goto END_CASE;

                case "open":
                    apkDecompiledPath = "C:\\Users\\PC\\Videos\\BatchApkTool\\_INPUT_APK\\uTube";

                    string[] filesToOpen = [
                        "",
                        "",
                        "",
                        "",
                        "",
                    ];
                    foreach (var fileToOpen in filesToOpen)
                    {
                        if (!string.IsNullOrEmpty(fileToOpen))
                        {
                            Process.Start("notepad.exe", $"{fileToOpen}.smali".GetSmaliFileFullPath());
                        }
                    }

                    Environment.Exit(0);
                    break;





                END_CASE:
                    ConsoleLog.Divider();

                    "OK".WarningLog(false);

                    Console.ReadKey();
                    Environment.Exit(0);
                    break;
            }
#pragma warning restore CS0162





            await Downloader.GetLastAPK();

            bool excludeGetSetMethods = true;
            foreach (var method in new APKUtils().GetType().GetMethods(
                        BindingFlags.Public | BindingFlags.Static
                    ))
            {
                if (method.Name.Equals("Decompile"))
                {
                    excludeGetSetMethods = false;
                }
                if (!excludeGetSetMethods)
                {
                    method.Invoke(null, null);
                }
            }
        }
    }
}