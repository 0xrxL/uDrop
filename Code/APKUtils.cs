using Newtonsoft.Json;
using System.Diagnostics;
using System.Dynamic;
using System.IO.Compression;
using System.Reflection;

namespace uDrop.Code
{
    public class APKUtils
    {
        private static bool patchingFailed = false;
        public static void SetPatchingFailed(bool value)
        {
            patchingFailed = value;
        }

        private static readonly List<string> consoleOutput = [];
        public static void SetConsoleOutput(string outValue, ConsoleColor printColor)
        {
            Console.ForegroundColor = printColor;
            Console.Write(outValue);
            Console.ForegroundColor = ConsoleColor.White;

            consoleOutput.Add(outValue);
        }

        public static readonly string uDropRootPath =
            AppDomain.CurrentDomain.BaseDirectory;
        private static readonly string libsPath =
            "Libs";
        private static readonly string integrationsRootPath =
            "APKIntegrations";
        private static readonly string integrationsPath =
            uDropUtils.GetOSSpecificFullPath($"{integrationsRootPath}/{Main_Class.apkInfo.Item2.ToLower()}");
        private static readonly string integrationsArchivePath =
            $"{integrationsPath}.zip";

        private static readonly string logsDirName =
            "PatchingLogs";
        public static string GetLogsDirName()
        {
            return logsDirName;
        }

        private static readonly string signKeyFolderName =
            "SignKey";
        public static string GetSignKeyFolderName()
        {
            return signKeyFolderName;
        }
            

        private static List<string> SmaliPaths = [];
        private static int SmaliPathsCount = 0;
        public static void SetSmaliPaths()
        {
            SmaliPaths = [..
                            Directory.GetFiles(
                                Main_Class.apkDecompiledPath,

                                "*.*",

                                SearchOption.AllDirectories
                            )
                            .Where(f => f.EndsWith(".xml") || f.EndsWith(".smali"))
                        ];

            SmaliPathsCount = SmaliPaths.Count();
        }
        public static List<string> GetSmaliPaths()
        {
            return SmaliPaths;
        }
        public static int GetSmaliPathsCount()
        {
            return SmaliPathsCount;
        }

        public static bool Decompile()
        {
            string installedFrameworkPath = $"{uDropUtils.GetOSLocalUserPath()}/apktool/framework/";
            if (Directory.Exists(installedFrameworkPath))
            {
                "\nRemoving Previous Building Framework...".StartProcessLog();

                Directory.Delete(installedFrameworkPath, true);

                "\nSuccesfully Done".EndProcessLog(true);
            }

            string apktoolPath = uDropUtils.GetFullLibPath($"{libsPath}/apktool.jar");
            while (!File.Exists(apktoolPath))
            {
                ("\nError: APKTool not found" +
                "\nPress any key to close the patcher.")
                    .QuitWithException();
            }

            Process process;
            ProcessStartInfo startInfo;
            string processError;

            string frameworkPath = uDropUtils.GetFullLibPath($"{libsPath}/framework-res.apk");
            if (File.Exists(frameworkPath))
            {
                "\nInstalling Building Framework...".StartProcessLog();

                process = new Process();
                startInfo = uDropUtils.GetProcessStartInfo($"java -jar {apktoolPath} if {frameworkPath}");
                process.StartInfo = startInfo;
                process.Start();

                while (!process.StandardOutput.EndOfStream)
                {
                    $"\n{process.StandardOutput.ReadLine()}".NormalLog();
                }

                _ = process.StandardOutput.ReadToEnd();
                processError = process.StandardError.ReadToEnd();

                if (processError.Length.Equals(0))
                {
                    "\nBuilding Framework succesfully installed".EndProcessLog(true);
                }
                else
                {
                    string LogFileName = "LastAPKToolFrameworkErrors.txt";

                    File.WriteAllText(uDropUtils.GetOSSpecificFullPath($"{GetLogsDirName()}/{LogFileName}"), processError);

                    ("\nBuilding Framework installation failed!" +
                    $"\nCheck '{GetLogsDirName()}/{LogFileName}' for further informations." +
                    "\nPress any key to close the patcher.")
                        .QuitWithException();
                }

                process.Close();
            }

            "\nUnpacking APK...".StartProcessLog();

            process = new();
            startInfo = uDropUtils.GetProcessStartInfo(
                            $"java -jar {
                                apktoolPath
                            } d -f {
                                Main_Class.apkPath
                            } -o {
                                Main_Class.apkDecompiledPath
                            }"
                        );
            process.StartInfo = startInfo;
            process.Start();

            while (!process.StandardOutput.EndOfStream)
            {
                $"\n{process.StandardOutput.ReadLine()}".NormalLog();
            }

            _ = process.StandardOutput.ReadToEnd();
            processError = process.StandardError.ReadToEnd();

            if (processError.Length.Equals(0))
            {
                "\nAPK succesfully unpacked".EndProcessLog(true);
            }
            else
            {
                string LogFileName = "LastAPKToolUnpackingErrors.txt";

                File.WriteAllText(uDropUtils.GetOSSpecificFullPath($"{GetLogsDirName()}/{LogFileName}"), processError);

                ("\nUnpacking APK failed!" +
                $"\nCheck '{GetLogsDirName()}/{LogFileName}' for further informations." +
                "\nPress any key to close the patcher.")
                    .QuitWithException();
            }

            process.Close();

            return true;
        }

        public static void SmaliBalance()
        {
            "\nBalancing Smali Folders...".StartProcessLog();

            List<string> dirs = SmaliUtils.GetSmaliFolders();
            int currentDirsCount = dirs.Count();
            int originalDirsCount = currentDirsCount;
            string rootDirPath = uDropUtils.GetOSSpecificFullPath(
                                    $"{Directory.GetParent(dirs.First())!.FullName}"
                                );
            int maxDirFilesAmount = 4000;
            bool isCurrentDirOversized;
            string nextDirName;
            bool isNextDirExisting;
            int currentDirIndex = 0;
            int currentDirFilesCount;
            int nextDirIndex;

            while (currentDirIndex < currentDirsCount)
            {
                Stack<string> currentDirFiles = new(
                                                    Directory.GetFiles(
                                                        dirs[currentDirIndex],

                                                        "*.smali*",

                                                        SearchOption.TopDirectoryOnly
                                                    )
                                                    .OrderBy(
                                                        f => f
                                                    )
                                                );
                currentDirFilesCount = currentDirFiles.Count();
                nextDirIndex = currentDirIndex + 1;

                isCurrentDirOversized = currentDirFilesCount > maxDirFilesAmount;
                nextDirName = $"{rootDirPath}/smali_classes{nextDirIndex + 1}";
                isNextDirExisting = Directory.Exists(nextDirName);

                if (isCurrentDirOversized)
                {
                    if (!isNextDirExisting)
                    {
                        dirs.Add(nextDirName);

                        Directory.CreateDirectory(dirs.Last());
                    }

                    while (currentDirFilesCount > maxDirFilesAmount)
                    {
                        string dirFileToMove = currentDirFiles.Pop();

                        File.Move(
                            dirFileToMove,

                            dirFileToMove.Replace(dirs[currentDirIndex], dirs[nextDirIndex])
                        );

                        currentDirFilesCount--;
                    }
                }

                $"\n{
                    new DirectoryInfo(dirs[currentDirIndex]).Name
                } ---> {
                    (currentDirsCount <= originalDirsCount
                    ?
                        isCurrentDirOversized
                        ?
                            "Fixed"
                        :
                            "Passed"
                    :
                        "New")
                }".PatchLog();

                currentDirsCount += isCurrentDirOversized && !isNextDirExisting ? 1 : 0;
                currentDirIndex++;
            }

            "\nSmali Folders succesfully balanced".EndProcessLog(true);
        }

        public static void Integrations()
        {
            if (!Directory.Exists(integrationsPath))
            {
                Directory.CreateDirectory(integrationsPath);
            }

            bool archivedIntegrations = false;

            string[] integrationRootPathFiles() {
                                                return Directory.GetFiles(
                                                    integrationsRootPath,

                                                    "*.*",

                                                    SearchOption.AllDirectories
                                                );
                                            };
            string[] integrationPathFiles() {
                                                return Directory.GetFiles(
                                                    integrationsPath,

                                                    "*.*",

                                                    SearchOption.AllDirectories
                                                );
                                            };

            if (integrationRootPathFiles().Length.Equals(0) && integrationPathFiles().Length.Equals(0))
            {
                return;
            }
            else
            {
                if (File.Exists(integrationsArchivePath))
                {
                    archivedIntegrations = true;

                    "\nExtracting Integrations...".StartProcessLog();

                    try
                    {
                        ZipFile.ExtractToDirectory(integrationsArchivePath, integrationsRootPath, true);
                    }
                    catch
                    {
                        "\nError: Integrations extraction failed".QuitWithException();
                    }
                }
            }

            if (File.Exists(integrationsArchivePath))
            {
                File.Delete(integrationsArchivePath);
            }

            string startMessage = "\nApplying Integrations...";
            if (!archivedIntegrations)
            {
                startMessage.StartProcessLog();
            }
            else
            {
                startMessage.NormalLog();
            }

            string integrationFileDestinationPath;
            int integrationFilesCount = 0;
            foreach (var integrationPathFile in integrationPathFiles())
            {
                integrationFileDestinationPath =
                    integrationPathFile.Replace(integrationsPath, Main_Class.apkDecompiledPath);

                Directory.CreateDirectory(Directory.GetParent(integrationFileDestinationPath)!.FullName);
                File.Copy(integrationPathFile, integrationFileDestinationPath, true);

                integrationFilesCount++;
                
            }

            $"\n{integrationFilesCount} Files Copied".PatchLog();

            "\nIntegrations succesfully applied".EndProcessLog(true);
        }

        public static void APKPatches()
        {
            string methodName;

            foreach (var method in Activator
                                    .CreateInstance(
                                        null!,
                                        $"{MethodBase
                                            .GetCurrentMethod()?
                                            .DeclaringType?
                                            .Namespace?? string.Empty
                                        }.{
                                            Main_Class.apkInfo.Item2
                                        }"
                                    )?
                                    .Unwrap()?
                                    .GetType()
                                    .GetMethods(
                                        BindingFlags.Public | BindingFlags.Static
                                    )!)
            {
                methodName = method.Name.Replace("_", " ");

                methodName.StartPatchLog();

                ((List<bool>)method.Invoke(null, null)!).EndPatchLog(methodName);
            }
        }

        public static void UnusedLibsRemoval()
        {
            "\nRemoving Unused Libraries...".StartProcessLog();

            string libDirPath = uDropUtils.GetOSSpecificFullPath($"{Main_Class.apkDecompiledPath}/lib");

            if (!Directory.Exists(libDirPath))
            {
                ("\nError: lib dir not found" +
                "\nPress any key to close the patcher.")
                    .QuitWithException();
            }

            bool removedLibs = false;
            foreach (var lib in new string[] { "armeabi-v7a", "x86" })
            {
                string libPath = uDropUtils.GetOSSpecificFullPath($"{libDirPath}/{lib}");

                if (Directory.Exists(libPath))
                {
                    Directory.Delete(libPath, true);

                    removedLibs = true;

                    $"\n{lib} ---> Removed".PatchLog();
                }
            }

            ($"\n{(removedLibs
                ?
                    "Unused libraries succesfully removed"
                :
                    "No unused libraries found")}").EndProcessLog(true);
        }

        public static bool Compile()
        {
            if (patchingFailed)
            {
                DoneMessage();
            }

            string apktoolPath = uDropUtils.GetFullLibPath($"{libsPath}/apktool.jar");
            while (!File.Exists(apktoolPath))
            {
                ("\nError: APKTool not found" +
                "\nPress any key to close the patcher.")
                    .QuitWithException();
            }

            "\nRebuilding APK...".StartProcessLog();

            Process process = new();
            ProcessStartInfo startInfo =
                uDropUtils.GetProcessStartInfo($"java -jar {apktoolPath} b {Main_Class.apkDecompiledPath} -o {Main_Class.apkModdedPath}");
            process.StartInfo = startInfo;
            process.Start();

            while (!process.StandardOutput.EndOfStream)
            {
                $"\n{process.StandardOutput.ReadLine()}".NormalLog();
            }

            _ = process.StandardOutput.ReadToEnd();
            string processError = process.StandardError.ReadToEnd();

            if (processError.Length.Equals(0))
            {
                "\nAPK succesfully rebuilt".EndProcessLog(true);
            }
            else
            {
                string LogFileName = "LastAPKToolRebuildingErrors.txt";

                File.WriteAllText(uDropUtils.GetOSSpecificFullPath($"{GetLogsDirName()}/{LogFileName}"), processError);

                ("\nRebuilding APK failed!" +
                $"\nCheck '{GetLogsDirName()}/{LogFileName}' for further informations." +
                "\nPress any key to close the patcher.")
                    .QuitWithException();
            }

            process.Close();

            return true;
        }

        public static void ZipAlign()
        {
            string zipalignPath = uDropUtils.GetFullLibPath($"{libsPath}/zipalign.jar");
            while (!File.Exists(zipalignPath))
            {
                ("\nError: ZipAlign not found" +
                "\nPress any key to close the patcher.")
                    .QuitWithException();
            }

            "\nAPK alignment...".StartProcessLog();

            string alignedAPKPath = $"{Main_Class.apkModdedPath}_aligned";

            if (File.Exists(Main_Class.apkModdedPath))
            {
                File.Move(Main_Class.apkModdedPath, alignedAPKPath, true);
            }

            Process process = new();
            ProcessStartInfo startInfo =
                uDropUtils.GetProcessStartInfo($"java -jar {zipalignPath} {alignedAPKPath} {Main_Class.apkModdedPath}");
            process.StartInfo = startInfo;
            process.Start();
            _ = process.StandardOutput.ReadToEnd();
            string processError = process.StandardError.ReadToEnd();
            process.WaitForExit();

            if (File.Exists(alignedAPKPath))
            {
                File.Delete(alignedAPKPath);
            }

            if (processError.Length.Equals(0))
            {
                "\nAPK succesfully aligned".EndProcessLog(true);
            }
            else
            {
                "\nAPK alignment failed".EndProcessLog(false);
            }

            process.Close();
        }

        public static void Sign()
        {
            if (!Directory.Exists(signKeyFolderName))
            {
                Directory.CreateDirectory(signKeyFolderName);
            }

            Process process;

            bool signKeyFilesExists = false;
            string[] signKeyFilePaths = [
                                            uDropUtils.GetOSSpecificFullPath($"{uDropRootPath}{signKeyFolderName}/signKey.keystore"),
                                            uDropUtils.GetOSSpecificFullPath($"{uDropRootPath}{signKeyFolderName}/signKeyInfo.json")
                                        ];
            if (signKeyFilePaths.All(File.Exists))
            {
                signKeyFilesExists = true;
            }
            else if (signKeyFilePaths.Any(File.Exists))
            {
                ("\nError: 'sign.keystore' or 'signKeyInfo.json' not found" +
                "\nCheck your signature files or delete the remaining to create new ones" +
                "\nPress any key to close the patcher.")
                    .QuitWithException();
            }
            else
            {
                string keyToolPath = uDropUtils.GetFullLibPath($"{libsPath}/keygen.jar");
                if (!File.Exists(keyToolPath))
                {
                    ("\nError: KeyGen tool not found" +
                    "\nPress any key to close the patcher.")
                        .QuitWithException();
                }

                string[] randomStrings =
                    [..
                        Enumerable.Range(0, 8).Select(_ =>
                            new string(
                                [..
                                    Enumerable.Range(0, 10).Select(_ =>
                                        (char)('a' + new Random().Next(0, 26))
                                    )
                                ]
                            )
                        )
                    ];

                string[] randomSignCredentials = randomStrings[0..2]; //Alias + Pass
                string[] randomSignDName = randomStrings[2..8]; //Owner Sign Key Info

                process = new()
                {
                    StartInfo = uDropUtils.GetProcessStartInfo(
                                    $"java -jar {
                                        keyToolPath
                                    } keystore {
                                        signKeyFilePaths[0]
                                    } {
                                        randomSignCredentials[1]
                                    } {
                                        randomSignCredentials[0]
                                    } 'CN={
                                        randomSignDName[0]
                                    }, O={
                                        randomSignDName[0]
                                    }, OU={
                                        randomSignDName[0]
                                    }, L={
                                        randomSignDName[0]
                                    }, ST={
                                        randomSignDName[0]
                                    }, C={
                                        randomSignDName[0]
                                    }'"
                                )
                };
                process.Start();
                process.WaitForExit();
                process.Close();

                File.WriteAllText(
                    signKeyFilePaths[1],
                    JsonConvert.SerializeObject(
                        new
                        {
                            Alias = randomSignCredentials[0],
                            Pass = randomSignCredentials[1]
                        },
                        Formatting.Indented
                    )
                );

                signKeyFilesExists = true;
            }

            if (signKeyFilesExists)
            {
                string signKeyInfoData = File.ReadAllText(signKeyFilePaths[1]);
                dynamic signKeyInfoDeserialized = new ExpandoObject();
                if (!string.IsNullOrEmpty(signKeyInfoData))
                {
                    signKeyInfoDeserialized = JsonConvert.DeserializeObject(signKeyInfoData)!;

                    if (signKeyInfoDeserialized.Alias.Equals(null) || signKeyInfoDeserialized.Pass.Equals(null))
                    {
                        ("\nError: Alias or Pass is missing in 'signKeyInfo.json'" +
                        "\nPress any key to close the patcher.")
                            .QuitWithException();
                    }
                }
                else
                {
                    ("\nError: 'signKeyInfo.json' is empty" +
                    "\nPress any key to close the patcher.")
                        .QuitWithException();
                }

                string apksignerPath = uDropUtils.GetFullLibPath($"{libsPath}/apksigner.jar");
                while (!File.Exists(apksignerPath))
                {
                    ("\nError: APKSigner not found" +
                    "\nPress any key to close the patcher.")
                        .QuitWithException();
                }

                "\nAPK signing...".StartProcessLog();

                process = new()
                {
                    StartInfo = uDropUtils.GetProcessStartInfo(
                                    $"java -jar {
                                        apksignerPath
                                    } sign --ks {
                                        signKeyFilePaths[0]
                                    } --ks-key-alias {
                                        signKeyInfoDeserialized.Alias
                                    } --ks-pass pass:{
                                        signKeyInfoDeserialized.Pass
                                    } {
                                        Main_Class.apkModdedPath
                                    }"
                                )
                };
                process.Start();
                _ = process.StandardOutput.ReadToEnd();
                string processError = process.StandardError.ReadToEnd();
                process.WaitForExit();

                if (processError.Length.Equals(0))
                {
                    "\nAPK succesfully signed".EndProcessLog(true);
                }
                else
                {
                    "\nAPK signing failed".EndProcessLog(false);
                }

                process.Close();
            }
        }

        public static void TemporaryResourceRemoval()
        {
            "\nRemoving Temporary Resources...".StartProcessLog();

            if (Directory.Exists(Main_Class.apkDecompiledPath))
            {
                Directory.Delete(Main_Class.apkDecompiledPath, true);
            }

            "\nTemporary Resources succesfully removed".EndProcessLog(true);
        }

        public static void DoneMessage()
        {
            Log.Divider();

            if (!patchingFailed)
            {
                string LogFileName = "lastSuccesfullyPatching.txt";

                File.WriteAllLines(uDropUtils.GetOSSpecificFullPath($"{GetLogsDirName()}/{LogFileName}"), consoleOutput);

                Process.Start(
                    uDropUtils.GetIsWindowsOS()
                    ?
                        "explorer.exe"
                    :
                        "xdg-open",

                    Main_Class.secondCombinedRootFolders
                );

                Main_Class.executionTime.Stop();

                ($"\nPatching successfully done in {(int) (Main_Class.executionTime.Elapsed.TotalMinutes * 100 / 100)} minutes!" +
                $"\nCheck '{GetLogsDirName()}/{LogFileName}' for further informations." +
                "\nPress any key to close the patcher.")
                    .SuccessLog();
            }
            else
            {
                string LogFileName = "lastFailedPatching.txt";

                File.WriteAllLines(uDropUtils.GetOSSpecificFullPath($"{GetLogsDirName()}/{LogFileName}"), consoleOutput);

                ("\nPatching failed!" +
                $"\nCheck '{GetLogsDirName()}/{LogFileName}' for further informations." +
                "\nPress any key to close the patcher.")
                    .ErrorLog();
            }

            Console.ReadKey();
            Environment.Exit(0);
        }
    }
}
