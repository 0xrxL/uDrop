using HtmlAgilityPack;
using System.Diagnostics;
using System.Security.Cryptography;

namespace uDrop.Code
{
    public class Downloader
    {
        public static async Task GetLastAPK()
        {
            if (!Init.projectInfo.Item5)
            {
                return;
            }

            string lastMD5OriginalFilePath = $"{Init.firstCombinedRootFolders}\\lastMD5Original.txt";

            if (File.Exists(Init.apkPath) &&
                File.Exists(lastMD5OriginalFilePath) &&
                File.ReadAllText(lastMD5OriginalFilePath).Contains(GetMD5()))
            {
                return;
            }

            ConsoleLog.Divider();

            string lastVersion = "";
            string webMD5Value = "";
            bool fileIntegrityOK = false;

            string websiteURL = "https://www.apkmirror.com";
            string appSectionURL = $"{websiteURL}/apk/{Init.projectInfo.Item1.ToLower()}/{Init.projectInfo.Item2.ToLower()}/";

            lastVersion = Init.projectInfo.Item4;

            HtmlWeb hw = new();

            if (lastVersion.Equals(""))
            {
                "Getting last version".NormalLog(false);
                "".NormalLog(false);

                HtmlNodeCollection versionsNodes = hw
                                                    .Load(appSectionURL)
                                                    .DocumentNode
                                                    .SelectNodes("//h5");

                List<int> versionsList = [];

                for (int i = 0; i < versionsNodes.Count; i++)
                {
                    if (!versionsNodes[i].InnerText.Contains("APK Mirror"))
                    {
                        versionsList.Add(
                            int.Parse(
                                versionsNodes[i]
                                .InnerText
                                .Where(char.IsDigit)
                                .ToArray()
                            )
                        );
                    }
                    else
                    {
                        break;
                    }
                }

                lastVersion = versionsList
                                .Max()
                                .ToString()
                                .Insert(2, ".")
                                .Insert(5, ".");

                lastVersion.SuccessLog(false);
                "".NormalLog(false);
                "".NormalLog(false);
            }
            else
            {
                $"Getting version {lastVersion}".NormalLog(false);
                "".NormalLog(false);
                "".NormalLog(false);
            }

            string versionURL = $"{appSectionURL}{Init.projectInfo.Item2.ToLower()}-{lastVersion}-release/";

            List<HtmlNode> versionPackageNode = hw
                                    .Load(versionURL)
                                    .DocumentNode
                                    .SelectNodes("//span[contains(@class, 'apkm-badge')]")
                                        .Where(f => f.InnerHtml.Equals("APK"))
                                        .ToList();

            if (versionPackageNode.Count.Equals(0))
            {
                "Error: APK package is not available yet"
                    .QuitWithException();
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

            "Getting package MD5".NormalLog(false);

            HtmlNode md5Node = hw
                                .Load(versionPackageURL)
                                .DocumentNode
                                .SelectSingleNode("//div[@id='safeDownload']");

            string safeDownloadNodeText = md5Node
                                            .InnerHtml
                                            .Replace("\n", "")
                                            .Replace(" ", "");

            webMD5Value = safeDownloadNodeText[(safeDownloadNodeText.IndexOf("MD5:") + 4)..];
            webMD5Value = webMD5Value[(webMD5Value.IndexOf('>') + 1)..];
            webMD5Value = webMD5Value[..webMD5Value.IndexOf('<')];

            "".SuccessLog(false);
            "Succesfully Done".SuccessLog(false);
            "".NormalLog(false);
            "".NormalLog(false);

            "Downloading package".NormalLog(false);
            "".SuccessLog(false);

            string packageDownloadURL = websiteURL +
                                        downloadPageNode
                                            .GetAttributeValue("href", "null")
                                            .Replace("&amp;", "&");

            string directPackageDownloadURL = websiteURL +
                                                hw
                                                .Load(
                                                    packageDownloadURL
                                                )
                                                .DocumentNode
                                                .SelectSingleNode("//a[@rel='nofollow']")
                                                .GetAttributeValue("href", "null")
                                                .Replace("&amp;", "&");

            while (!fileIntegrityOK)
            {
                try
                {
                    using HttpClient client = new();

                    using HttpResponseMessage response = await client.GetAsync(
                                                                directPackageDownloadURL,
                                                                HttpCompletionOption.ResponseHeadersRead
                                                            );
                    long totalBytes = response.Content.Headers.ContentLength ?? -1;
                    using Stream contentStream = await response.Content.ReadAsStreamAsync(),
                                  fileStream = new FileStream(
                                                    Init.apkPath,
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
                    DownloadProgress dP = new();

                    while ((bytesRead = await contentStream.ReadAsync(buffer)) > 0)
                    {
                        await fileStream.WriteAsync(buffer.AsMemory(0, bytesRead));
                        totalBytesRead += bytesRead;
                        if (totalBytes != -1)
                        {
                            progressPercentage = (double)totalBytesRead / totalBytes * 100;
                            progressPercentageInt = (int)progressPercentage;
                            dP.Progression((int)progressPercentage, totalBytesRead, totalBytes);
                        }
                    }
                }
                catch (Exception e)
                {
                    string LogFileName = "LastDownloaderErrors.txt";

                    File.WriteAllText($"{APKUtils.logsDirName}\\{LogFileName}", e.ToString());

                    ($"Error: Unable to download APK\n" +
                    $"Check '{APKUtils.logsDirName}\\{LogFileName}' for further informations\n" +
                    "Press any key to close the patcher.")
                        .QuitWithException();
                }

                if (webMD5Value.Equals(GetMD5()))
                {
                    File.WriteAllText(lastMD5OriginalFilePath, webMD5Value);

                    "Succesfully Done".SuccessLog(false);

                    fileIntegrityOK = true;
                }
                else
                {
                    if (File.Exists(Init.apkPath))
                    {
                        File.Delete(Init.apkPath);
                    }

                    "Error: Integrity check fail. Retrying!".ErrorLog(true);

                    Thread.Sleep(1000);
                }

                Thread.Sleep(1000);
            }
        }
        private static string GetMD5()
        {
            return File.Exists(Init.apkPath)
                    ?
                    BitConverter
                    .ToString(MD5.HashData(File.ReadAllBytes(Init.apkPath)))
                    .Replace("-", "")
                    .ToLower()
                    :
                    "";
        }
    }

    public class DownloadProgress
    {
        public bool inProgress = true;
        private bool printOnConsole = false;
        private readonly Stopwatch stopWatch = new();
        private int progressPercentage = 0;
        private readonly int maxProgressPercentage = 100;
        private string megaBytes = "";
        private double tempMegaBytes = 0;
        private string totalMegaBytes = "";
        private double tempTotalMegaBytes = 0;
        private string downloadSpeed = "";
        private readonly List<string> progressBar = [];
        private readonly int progressBarSize = 5;

        public DownloadProgress()
        {
            _ = PrintProgression();
        }

        public void Progression(int pP, long mB, long tMB)
        {
            progressPercentage = pP;

            tempTotalMegaBytes =
                tMB / 1024f / 1024f;
            totalMegaBytes =
                tempTotalMegaBytes.ToString("0.0");

            tempMegaBytes =
                mB / 1024f / 1024f;
            megaBytes =
                tempMegaBytes <= tempTotalMegaBytes ? tempMegaBytes.ToString("0.0") : megaBytes;

            downloadSpeed =
                (mB / 1024.0 / 1024.0 / stopWatch.Elapsed.TotalSeconds).ToString("0.0");

            printOnConsole = true;
        }

        private async Task<bool> PrintProgression()
        {
            while (!printOnConsole)
            {
                await Task.Delay(1);
            }

            stopWatch.Start();

            while (progressPercentage <= maxProgressPercentage)
            {
                progressBar.Add("(");
                for (int i = 1; i <= maxProgressPercentage / progressBarSize; i++)
                {
                    progressBar.Add(i <= progressPercentage / progressBarSize ? "█" : "░");
                }
                progressBar.Add(")");

                $"{progressPercentage}% {string.Join("", progressBar)} {megaBytes}MB of {totalMegaBytes}MB at {downloadSpeed}MB/s"
                    .NormalLog(true);

                progressBar.Clear();

                if (progressPercentage.Equals(maxProgressPercentage))
                {
                    progressPercentage++;
                }

                await Task.Delay(30);
            }

            stopWatch.Stop();

            printOnConsole = false;

            inProgress = false;

            ConsoleLog.ClearConsoleFrom(Console.CursorTop - 1);

            return true;
        }
    }
}