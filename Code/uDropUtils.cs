using System.Diagnostics;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;

namespace uDrop.Code
{
    public class uDropUtils
    {
        private static readonly bool isWindowsOS = RuntimeInformation.IsOSPlatform(OSPlatform.Windows);
        public static bool GetIsWindowsOS()
        {
            return isWindowsOS;
        }

        public static ProcessStartInfo GetOSSpecificProcessStartInfo(string command)
        {
            return new ProcessStartInfo
            {
                FileName = GetIsWindowsOS() ? "cmd.exe" : "/bin/bash",
                Arguments = $"{(GetIsWindowsOS() ? "/C" : "-c")} \"{command}\"",
                RedirectStandardOutput = true,
                RedirectStandardError = true,
                UseShellExecute = false,
                CreateNoWindow = true
            };
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
            string windowsSeparator = "\\";
            string linuxSeparator = "/";

            if ((GetIsWindowsOS() && fullPath.Contains(linuxSeparator))
                                    ||
                (!GetIsWindowsOS() && fullPath.Contains(windowsSeparator)))
            {
                return uRegex.GetOSSpecificFullPath().Replace(fullPath, GetIsWindowsOS() ? windowsSeparator : linuxSeparator);
            }
            
            return fullPath;
        }

        public static void PrivateTypeMethodAPKPatches(string methodToCall)
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

                ((List<(bool, bool)>)method.Invoke(null, null)!).EndPatchLog(methodName);
            }
        }
    }
}