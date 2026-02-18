using System.Diagnostics;
using System.Reflection;

namespace uDrop.Code
{
    public class Main_Class
    {
        public static Stopwatch executionTime = new();

        //--------------------------------General Patcher Settings--------------------------------//
        public static readonly (string, string, string, string, bool, bool, bool) apkInfo = (     //
            /* Developer Name */                                                                  //
            "google-inc",                                                                         //
            /* App Name */                                                                        //
            "YouTube",                                                                            //
            /* Patched App Name */                                                                //
            "uTube",                                                                              //
            /* App Version */                                                                     //
            "",                                                                                   //
            /* APK Downloader */                                                                  //
            true,                                                                                 //
            /* Include Non-Root Patch */                                                          //
            true,                                                                                 //
            /* Include Optional Patches */                                                        //
            false                                                                                 //
        );                                                                                        //
        public static readonly string uDropRootPath =                                             //
            AppDomain.CurrentDomain.BaseDirectory;                                                //
        private static readonly string firstRootFolder =                                          //
            $"{uDropRootPath}APKs";                                                               //
        public static readonly string firstCombinedRootFolders =                                  //
            uDropUtils.GetOSSpecificFullPath(                                                     //
                $"{                                                                               //
                    firstRootFolder                                                               //
                }/Original"                                                                       //
            );                                                                                    //
        public static readonly string secondCombinedRootFolders =                                 //
            uDropUtils.GetOSSpecificFullPath(                                                     //
                $"{                                                                               //
                    firstRootFolder                                                               //
                }/Modded"                                                                         //
            );                                                                                    //
        public static string apkDecompiledPath =                                                  //
            uDropUtils.GetOSSpecificFullPath(                                                     //
                $"{                                                                               //
                    firstCombinedRootFolders                                                      //
                }/{                                                                               //
                    apkInfo.Item2                                                                 //
                }"                                                                                //
            );                                                                                    //
        public static readonly string apkPath =                                                   //
            $"{apkDecompiledPath}.apk";                                                           //
        public static readonly string apkModdedPath =                                             //
            apkPath.Replace(                                                                      //
                uDropUtils.GetOSSpecificFullPath(                                                 //
                    $"{                                                                           //
                        firstCombinedRootFolders                                                  //
                    }/{                                                                           //
                        apkInfo.Item2                                                             //
                    }"                                                                            //
                ),                                                                                //
                                                                                                  //
                uDropUtils.GetOSSpecificFullPath(                                                 //
                    $"{                                                                           //
                        secondCombinedRootFolders                                                 //
                    }/{                                                                           //
                        apkInfo.Item3                                                             //
                    }"                                                                            //
                )                                                                                 //
            );                                                                                    //
        //----------------------------------------------------------------------------------------//

        public static async Task Main()
        {
            Console.Title = "uDrop";

            Process process = new();
            ProcessStartInfo startInfo = uDropUtils.GetOSSpecificProcessStartInfo("java -version");
            process.StartInfo = startInfo;
            process.Start();
            _ = process.StandardOutput.ReadToEnd();
            string processError = process.StandardError.ReadToEnd();
            process.WaitForExit();

            if (!processError.Contains("version \""))
            {
                "Error: Java is not installed".QuitWithException();
            }

            executionTime.Start();

            foreach (var dir in new List<string> {
                                            firstCombinedRootFolders,

                                            secondCombinedRootFolders,

                                            APKUtils.GetLogsDirName()
                                        })
            {
                if (!Directory.Exists(dir))
                {
                    Directory.CreateDirectory(dir);
                }
            }





#pragma warning disable CS0162
            //-------------------------------------Fast Operations------------------------------------//
            switch ("")
            {
                case "recompile":
                    APKUtils.Decompile();

                    Log.Divider();
                    "\nPress any key to recompile".WarningLog();
                    Console.ReadKey();
                    APKUtils.Compile();
                    APKUtils.ZipAlign();
                    APKUtils.Sign();
                    APKUtils.TemporaryResourceRemoval();
                    goto END_CASE;
                case "decompile":
                    APKUtils.Decompile();
                    goto END_CASE;
                case "compile":
                    APKUtils.Compile();
                    APKUtils.ZipAlign();
                    APKUtils.Sign();
                    goto END_CASE;

                case "align":
                    APKUtils.ZipAlign();
                    goto case "sign";
                case "sign":
                    APKUtils.Sign();
                    goto END_CASE;

                case "split":
                    Console.WriteLine("".Split('L', ';')[1]);
                    goto END_CASE;

                case "debug":
                    APKUtils.Decompile();

                    uDropUtils.PrivateTypeMethodAPKPatches("Debug");

                    APKUtils.Compile();
                    APKUtils.ZipAlign();
                    APKUtils.Sign();
                    APKUtils.TemporaryResourceRemoval();
                    goto END_CASE;

                case "debug_p":
                    uDropUtils.PrivateTypeMethodAPKPatches("Debug_Patch");
                    goto END_CASE;

                case "debug_p_p":
                    YouTube.Background_Video_Playback();
                    goto END_CASE;

                case "":
                    break;

                default:
                    Log.ErrorLog("Error: Fast Operations field is wrong!");
                    return;





                END_CASE:
                    Log.Divider();

                    "\nDone!".WarningLog();

                    Console.ReadKey();
                    Environment.Exit(0);
                    break;
            }
            //----------------------------------------------------------------------------------------//
#pragma warning restore CS0162





            await APKDownloader.GetLastAPK();





            bool callNextMethods = false;
            foreach (var method in new APKUtils().GetType().GetMethods(
                        BindingFlags.Public | BindingFlags.Static
                    )
            ) {
                if (!callNextMethods && method.Name.Equals("Decompile"))
                {
                    callNextMethods = true;
                }


                if (callNextMethods)
                {
                    method.Invoke(null, null);
                }
            }
        }
    }
}