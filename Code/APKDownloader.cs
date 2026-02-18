using HtmlAgilityPack;
using System.Diagnostics;
using System.Security.Cryptography;
using System.Text.RegularExpressions;

namespace uDrop.Code
{
    public class APKDownloader
    {
        public static async Task GetLastAPK()
        {
            if (!Main_Class.apkInfo.Item5)
            {
                return;
            }

            string lastMD5OriginalFilePath = uDropUtils.GetOSSpecificFullPath($"{Main_Class.firstCombinedRootFolders}/lastMD5Original.txt");

            if (File.Exists(Main_Class.apkPath) &&
                File.Exists(lastMD5OriginalFilePath) &&
                File.ReadAllText(lastMD5OriginalFilePath).Contains(GetSavedMD5()))
            {
                return;
            }

            Log.Divider();

            string lastVersion = "";
            string webMD5Value = "";
            string directPackageDownloadURL = "";
            bool fileIntegrityOK = false;

            try
            {
                string websiteURL = "https://www.apkmirror.com";
                string appSectionURL = $"{websiteURL}/apk/{Main_Class.apkInfo.Item1.ToLower()}/{Main_Class.apkInfo.Item2.ToLower()}/";

                lastVersion = Main_Class.apkInfo.Item4;
                bool getLastVersion = lastVersion.Equals("");
                HtmlWeb hw = new();

                if (getLastVersion)
                {
                    "\nGetting last version".NormalLog();
                    "\n".NormalLog();

                    HtmlNodeCollection versionNodes = hw
                                                        .Load(appSectionURL)
                                                        .DocumentNode
                                                        .SelectNodes("//h5");

                    Dictionary<int, string> versionsList = [];

                    foreach (HtmlNode versionNode in versionNodes)
                    {
                        string versionNodeInner = versionNode.InnerText;

                        if (!versionNodeInner.Contains("APK Mirror"))
                        {
                            Match match = uRegex.GetLastAPKRegex().Match(versionNodeInner);

                            if (match.Success)
                            {
                                versionsList.Add(
                                    int.Parse(match.Value.Replace(".", "")),

                                    match.Value
                                );
                            }
                        }
                        else
                        {
                            break;
                        }
                    }

                    lastVersion = versionsList.OrderByDescending(e => e.Key).First().Value;

                    $"\n{lastVersion}".SuccessLog();
                    "\n".NormalLog();
                    "\n".NormalLog();
                }
                else
                {
                    $"\nGetting version {lastVersion}".NormalLog();
                    "\n".NormalLog();
                }

                string versionURL = $"{appSectionURL}{Main_Class.apkInfo.Item2.ToLower()}-{lastVersion}-release/";

                List<HtmlNode> versionPackageNode = [];

                versionPackageNode = [..
                                        hw
                                        .Load(versionURL)
                                        .DocumentNode
                                        .SelectNodes("//span[contains(@class, 'apkm-badge')]")
                                        .Where(f => f.InnerHtml.Equals("APK"))
                                    ];

                if (versionPackageNode.Count.Equals(0))
                {
                    "Error: Cannot download the APK package".QuitWithException();
                }
                else if (!getLastVersion)
                {
                    "\nSuccesfully Done".SuccessLog();
                    "\n".NormalLog();
                    "\n".NormalLog();
                }

                string versionPackageURL = websiteURL +
                                            versionPackageNode[0]
                                            .ParentNode
                                            .SelectSingleNode(".//a")
                                            .GetAttributeValue("href", "null")
                                            .Replace("&amp;", "&");

                HtmlNode downloadPageNode = hw
                                            .Load(versionPackageURL)
                                            .DocumentNode
                                            .SelectSingleNode("//a[contains(@class, 'downloadButton')]");

                "\nGetting package MD5".NormalLog();

                HtmlNode md5Node = hw
                                    .Load(versionPackageURL)
                                    .DocumentNode
                                    .SelectSingleNode("//div[@id='safeDownload']");

                string safeDownloadNodeText = md5Node
                                                .InnerHtml
                                                .Trim('\n', ' ');

                webMD5Value = safeDownloadNodeText[(safeDownloadNodeText.IndexOf("MD5:") + 4)..];
                webMD5Value = webMD5Value[(webMD5Value.IndexOf('>') + 1)..];
                webMD5Value = webMD5Value[..webMD5Value.IndexOf('<')];

                "\n".SuccessLog();
                "\nSuccesfully Done".SuccessLog();
                "\n".NormalLog();
                "\n".NormalLog();

                "\nDownloading package".NormalLog();
                "\n".SuccessLog();
                "\n".SuccessLog();

                string packageDownloadURL = websiteURL +
                                            downloadPageNode
                                                .GetAttributeValue("href", "null")
                                                .Replace("&amp;", "&");

                directPackageDownloadURL = websiteURL +
                                                    hw
                                                    .Load(
                                                        packageDownloadURL
                                                    )
                                                    .DocumentNode
                                                    .SelectSingleNode("//a[@rel='nofollow']")
                                                    .GetAttributeValue("href", "null")
                                                    .Replace("&amp;", "&");
            }
            catch (Exception e)
            {
                e.ToString().QuitWithException();
            }

            while (!fileIntegrityOK)
            {
                try
                {
                    Log.ClearCurrentLine();

                    HttpClient httpClient = new();

                    httpClient.DefaultRequestHeaders.UserAgent.ParseAdd("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36");
                    httpClient.DefaultRequestHeaders.Add("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8");

                    using HttpResponseMessage response = await httpClient
                                                                .GetAsync(
                                                                    directPackageDownloadURL,
                                                                    HttpCompletionOption.ResponseHeadersRead
                                                                );
                    long totalBytes = response.Content.Headers.ContentLength ?? -1;
                    using Stream contentStream = await response
                                                        .Content
                                                        .ReadAsStreamAsync(),
                                                        fileStream = new FileStream(
                                                                            Main_Class.apkPath,
                                                                            FileMode.Create,
                                                                            FileAccess.Write,
                                                                            FileShare.None,
                                                                            8192,
                                                                            true
                                                                        );
                    long totalBytesRead = 0;
                    byte[] buffer = new byte[8192];
                    int bytesRead;
                    double progressPercentage = 0;
                    int progressPercentageInt;

                    while ((bytesRead = await contentStream.ReadAsync(buffer)) > 0)
                    {
                        await fileStream.WriteAsync(buffer.AsMemory(0, bytesRead));

                        totalBytesRead += bytesRead;
                        if (totalBytes != -1)
                        {
                            progressPercentage = (double)totalBytesRead / totalBytes * 100;

                            progressPercentageInt = (int)progressPercentage;

                            DownloadProgression((int)progressPercentage, totalBytesRead, totalBytes);
                        }
                    }
                }
                catch (Exception e)
                {
                    string LogFileName = "LastDownloaderErrors.txt";

                    File.WriteAllText(uDropUtils.GetOSSpecificFullPath($"{APKUtils.GetLogsDirName()}/{LogFileName}"), e.ToString());

                    ($"Error: Unable to download APK" +
                    $"\nCheck '{APKUtils.GetLogsDirName()}/{LogFileName}' for further informations.")
                        .QuitWithException();
                }

                Log.ClearCurrentLine();

                if (webMD5Value.Equals(GetSavedMD5()))
                {
                    File.WriteAllText(lastMD5OriginalFilePath, webMD5Value);

                    "Succesfully Done".SuccessLog();

                    fileIntegrityOK = true;
                }
                else
                {
                    if (File.Exists(Main_Class.apkPath))
                    {
                        File.Delete(Main_Class.apkPath);
                    }

                    "Error: Integrity check fail. Retrying!".ErrorLog();

                    Thread.Sleep(1000);
                }

                Thread.Sleep(1000);
            }
        }
        private static string GetSavedMD5()
        {
            return File.Exists(Main_Class.apkPath)
                    ?
                    BitConverter
                    .ToString(MD5.HashData(File.ReadAllBytes(Main_Class.apkPath)))
                    .Replace("-", "")
                    .ToLower()
                    :
                    "";
        }

        private static readonly Stopwatch downloadSpeedStopWatch = new();
        private static readonly Stopwatch progressBarUpdateStopWatch = new();
        private static string progressBar = "";
        private static readonly int maxProgressPercentage = 100;
        private static readonly int progressBarSize = 5;
        private static readonly float megabytesValueScale = 1024f * 1024f;
        public static void DownloadProgression(int progressPercentage, long megaBytes, long totalMegaBytes)
        {
            if (progressPercentage <= 0)
            {
                downloadSpeedStopWatch.Start();

                progressBarUpdateStopWatch.Start();
            }
            else if (progressPercentage >= maxProgressPercentage)
            {
                downloadSpeedStopWatch.Stop();

                progressBarUpdateStopWatch.Stop();
            }

            if (progressBarUpdateStopWatch.ElapsedMilliseconds > 50)
            {
                Log.ClearCurrentLine();

                progressBar = "(";
                for (int i = 1; i <= maxProgressPercentage / progressBarSize; i++)
                {
                    progressBar += i <= progressPercentage / progressBarSize ? "█" : "░";
                }
                progressBar += ")";

                $"{
                    progressPercentage
                }% {
                    string.Join("", progressBar)
                } {
                    Math.Round(megaBytes / megabytesValueScale)
                }MB of {
                    Math.Round(totalMegaBytes / megabytesValueScale)
                }MB at {
                    Math.Round(megaBytes / megabytesValueScale / downloadSpeedStopWatch.Elapsed.TotalSeconds)
                }MB/s"
                    .NormalLog();

                progressBarUpdateStopWatch.Restart();
            }
        }
    }
}