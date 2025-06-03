using System.Diagnostics;
using System.Reflection;
using System.Runtime.InteropServices;

namespace uDrop.Code
{
    public class uDropUtils
    {
        private static readonly bool isWindowsOS = RuntimeInformation.IsOSPlatform(OSPlatform.Windows);
        public static bool GetIsWindowsOS()
        {
            return isWindowsOS;
        }

        public static ProcessStartInfo GetProcessStartInfo(string command)
        {
            return new ProcessStartInfo
            {
                FileName = GetIsWindowsOS() ? "cmd.exe" : "/bin/bash",
                Arguments = GetIsWindowsOS() ? $"/C {command}" : $"-c \"{command}\"",
                RedirectStandardOutput = true,
                RedirectStandardError = true,
                UseShellExecute = false,
                CreateNoWindow = true
            };
        }

        public static string GetFullLibPath(string partialPath)
        {
            string fullPath = $"{APKUtils.uDropRootPath}{partialPath}";
            
            return GetIsWindowsOS() ? fullPath.Replace('/', '\\') : fullPath;
        }

        public static string GetOSLocalUserPath()
        {
            return GetIsWindowsOS()
                    ?
                        Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData)
                    :
                        $"{Environment.GetFolderPath(Environment.SpecialFolder.UserProfile)}/share";
        }

        public static string GetOSSpecificFullPath(string fullPath)
        {
            return GetIsWindowsOS() ? fullPath.Replace('/', Path.DirectorySeparatorChar) : fullPath;
        }

        public static void PrivateAPKPatches(string methodToCall)
        {
            string methodName;

            foreach (var method in Activator
                                    .CreateInstance(
                                        null!,
                                        $"{MethodBase
                                            .GetCurrentMethod()?
                                            .DeclaringType?
                                            .Namespace ?? string.Empty}.{Main_Class.apkInfo.Item2}"
                                    )?
                                    .Unwrap()?
                                    .GetType()
                                    .GetMethods(
                                        BindingFlags.NonPublic | BindingFlags.Static
                                    )!)
            {
                methodName = method.Name;

                if (!methodName.Equals(methodToCall))
                {
                    continue;
                }

                methodName = methodName.Replace("_", " ");

                methodName.StartPatchLog();

                ((List<bool>)method.Invoke(null, null)!).EndPatchLog(methodName);
            }
        }
    }
}