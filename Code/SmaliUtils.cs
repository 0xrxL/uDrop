using System.Text;
using System.Text.RegularExpressions;
using HtmlAgilityPack;

namespace uDrop.Code
{
    public static class SmaliUtils
    {
        public class StringTransform(string str, string sourceKeyword, string targetKeyword)
        {
            public string Original =
                str;
            public string Transformed =
                str.Replace(
                    (!String.IsNullOrEmpty(sourceKeyword) ? sourceKeyword : str),

                    targetKeyword
                );
        }

        public class SubPatchModule<T>
        {
            public bool Apply = false;
            public string[] xmlSmaliInfo = [];
            public SubPatchModule(
                T smaliSearchKeys,
                bool apply,
                Func<XMLSmaliProperties,
                        T,
                        ScaleIndex,
                        CodeInject,
                        int,
                        string[],
                        (int, bool, string[]) /* Returned Params */ > patchOperations
            )
            {
                if (APKUtils.GetSmaliPathsCount().Equals(0) && Directory.Exists(Main_Class.apkDecompiledPath))
                {
                    APKUtils.SetSmaliPaths();
                }

                Apply = apply;

                int patchInteractions = 0;
                (int, bool, string[]) returnedValues;

                xmlSmaliProperties.LastOfPath = APKUtils.GetSmaliPaths().Last();

                IEnumerator<string> SmaliPathsEnumerator = APKUtils.GetSmaliPaths().GetEnumerator();
                while (Apply && SmaliPathsEnumerator.MoveNext())
                {
                    xmlSmaliProperties.PatchedFull =
                        xmlSmaliProperties.Full =
                            File.ReadAllText(SmaliPathsEnumerator.Current);

                    xmlSmaliProperties.Path = SmaliPathsEnumerator.Current;

                    returnedValues = patchOperations(
                                        xmlSmaliProperties,
                                        smaliSearchKeys,
                                        scaleIndex,
                                        codeInject,
                                        patchInteractions,
                                        xmlSmaliInfo
                                    );
                    patchInteractions = returnedValues.Item1;
                    Apply = returnedValues.Item2;
                    xmlSmaliInfo = returnedValues.Item3;
                }
            }

            public class XMLSmaliProperties
            {
                public string Path = "";
                public string LastOfPath = "";
                public string Full = "";
                public string PatchedFull = "";
                public List<string> Lines = [];
                public int LinesCount = 0;
                public string ProxiedPath = "";
                public List<string> ProxiedLines = [];
                public int ProxiedLinesCount = 0;

                public void ReadXMLSmaliLines()
                {
                    Lines =
                        [.. Full.Split("\n")];
                    LinesCount =
                        Lines.Count;
                }

                public void ReadXMLSmaliProxiedLines(string partialPath)
                {
                    ProxiedPath =
                        uDropUtils.GetOSSpecificFullPath(partialPath).GetSmaliFileFullPath();
                    ProxiedLines =
                        [.. File.ReadAllLines(ProxiedPath)];
                    ProxiedLinesCount =
                        ProxiedLines.Count;
                }
            }
            private static readonly XMLSmaliProperties xmlSmaliProperties = new();

            public class ScaleIndex(XMLSmaliProperties xmlSmaliProperties)
            {
                public int Lines(int currentIndex, int indexSteps)
                {
                    return Compute(currentIndex, indexSteps, xmlSmaliProperties.LinesCount);
                }

                public int ProxiedLines(int currentIndex, int indexSteps)
                {
                    return Compute(currentIndex, indexSteps, xmlSmaliProperties.ProxiedLinesCount);
                }

                private int Compute(int currentIndex, int indexSteps, int LinesCount)
                {
                    int newIndex = currentIndex + indexSteps;

                    return newIndex >= 0 && newIndex < LinesCount
                            ?
                                newIndex
                            :
                                LinesCount - 1;
                }
            }
            public static ScaleIndex scaleIndex = new(xmlSmaliProperties);

            public class CodeInject(XMLSmaliProperties xmlSmaliProperties)
            {
                private int InjectionType;
                private StringTransform[] SmaliSearchKeys = [];

                public CodeInject FullReplace((string, int, string[])[] injectionsInfo, StringTransform[] smaliSearchKeys)
                {
                    InjectionType = 4;

                    SmaliSearchKeys = smaliSearchKeys;

                    return Compute(injectionsInfo);
                }

                public CodeInject Lines((string, int, string[])[] injectionsInfo)
                {
                    InjectionType = 0;

                    return Compute(injectionsInfo);
                }
                public CodeInject LinesReplace((string, int, string[])[] injectionsInfo)
                {
                    InjectionType = 1;

                    return Compute(injectionsInfo);
                }

                public CodeInject ProxiedLines((string, int, string[])[] injectionsInfo)
                {
                    InjectionType = 2;

                    return Compute(injectionsInfo);
                }
                public CodeInject ProxiedLinesReplace((string, int, string[])[] injectionsInfo)
                {
                    InjectionType = 3;

                    return Compute(injectionsInfo);
                }

                private CodeInject Compute((string, int, string[])[] injectionsInfo)
                {
                    foreach (var injectionInfo in injectionsInfo)
                    {
                        string injectionTypeInfo = "";

                        if (InjectionType.Equals(0))
                        {
                            xmlSmaliProperties.Lines.InsertRange(injectionInfo.Item2, injectionInfo.Item3);

                            xmlSmaliProperties.LinesCount += injectionInfo.Item3.Length;

                            injectionTypeInfo = $"Added At Line: {injectionInfo.Item2}";
                        }
                        else if (InjectionType.Equals(1))
                        {
                            xmlSmaliProperties.Lines[injectionInfo.Item2] = injectionInfo.Item3[0];

                            injectionTypeInfo = $"Replaced Line: {injectionInfo.Item2}";
                        }
                        else if (InjectionType.Equals(2))
                        {
                            xmlSmaliProperties.ProxiedLines.InsertRange(injectionInfo.Item2, injectionInfo.Item3);

                            xmlSmaliProperties.ProxiedLinesCount += injectionInfo.Item3.Length;

                            injectionTypeInfo = $"Added At Line: {injectionInfo.Item2}";
                        }
                        else if (InjectionType.Equals(3))
                        {
                            xmlSmaliProperties.ProxiedLines[injectionInfo.Item2] = injectionInfo.Item3[0];

                            injectionTypeInfo = $"Replaced Line: {injectionInfo.Item2}";
                        }
                        else if (InjectionType.Equals(4))
                        {
                            foreach (var SmaliSearchKey in SmaliSearchKeys)
                            {
                                xmlSmaliProperties.PatchedFull = xmlSmaliProperties
                                                                .PatchedFull
                                                                .Replace(
                                                                    SmaliSearchKey.Original,

                                                                    SmaliSearchKey.Transformed
                                                                );
                            }
                        }

                        Log.PatchLog(
                            InjectionType.Equals(0) || InjectionType.Equals(1) || InjectionType.Equals(4)
                            ?
                                xmlSmaliProperties.Path
                            :
                                xmlSmaliProperties.ProxiedPath,

                            injectionInfo.Item1,

                            injectionTypeInfo
                        );
                    }

                    return this;
                }

                public void Write()
                {
                    if (InjectionType.Equals(0) || InjectionType.Equals(1))
                    {
                        File.WriteAllLines(xmlSmaliProperties.Path, xmlSmaliProperties.Lines);
                    }
                    else if (InjectionType.Equals(2) || InjectionType.Equals(3))
                    {
                        File.WriteAllLines(xmlSmaliProperties.ProxiedPath, xmlSmaliProperties.ProxiedLines);
                    }
                    else if (InjectionType.Equals(4))
                    {
                        File.WriteAllText(xmlSmaliProperties.Path, xmlSmaliProperties.PatchedFull);
                    }
                }
            }
            public static CodeInject codeInject = new(xmlSmaliProperties);
        }

        public static string GetSmaliFileFullPath(this string innerPathOrFileName)
        {
            string smaliExtension = ".smali";
            if (!innerPathOrFileName.Contains(smaliExtension))
            {
                innerPathOrFileName += smaliExtension;
            }

            List<string> smaliPath = [];
            int tryIndex = 0;
            while (smaliPath.Count.Equals(0) && tryIndex < 3)
            {
                switch (tryIndex)
                {
                    case 0:
                        smaliPath = [..
                                        GetSmaliFolders()
                                        .Where(
                                            f => File.Exists(uDropUtils.GetOSSpecificFullPath($"{f}/{innerPathOrFileName}"))
                                        )
                                    ];
                        break;
                    case 1:
                        smaliPath = [.. APKUtils
                                        .GetSmaliPaths()
                                        .Where(
                                            f => f.Contains(uDropUtils.GetOSSpecificFullPath($"/{innerPathOrFileName}"))
                                        )
                                    ];
                        break;
                    case 2:
                        $"\nError: {innerPathOrFileName} file not found".QuitWithException();
                        break;
                }

                tryIndex++;
            }

            return uDropUtils.GetOSSpecificFullPath($"{smaliPath.First()}/{innerPathOrFileName}");
        }

        public static string GetSmaliFilePartialPath(this string fullPath)
        {
            return uDropUtils.GetOSSpecificFullPath($"/{Path.GetFileName(Path.GetDirectoryName(fullPath))}/{Path.GetFileName(fullPath)}");
        }

        public static List<string> GetSmaliFolders()
        {
            List<string> smaliDirs = [..
                                        Directory.GetDirectories(
                                            Main_Class.apkDecompiledPath,
                                            "*",
                                            SearchOption.TopDirectoryOnly
                                        )
                                        .Where(f => f.Contains("smali"))
                                    ];

            if (smaliDirs.Count.Equals(0))
            {
                "\nError: No smali folder exists in decompiled apk path".QuitWithException();
            }

            return smaliDirs;
        }

        public static string GetResourceHex(int decimalRes)
        {
            return $"0x{Convert.ToString(decimalRes, 16).ToLower()}";
        }
        public static string GetResourceHex(string resType, string resName)
        {
            string publicXMLPath = uDropUtils.GetOSSpecificFullPath($"{Main_Class.apkDecompiledPath}/res/values/public.xml");

            if (!File.Exists(publicXMLPath))
            {
                "\nError: 'public.xml' not found".QuitWithException();
            }

            string resLine = "";
            try
            {
                resLine = File.ReadAllLines(publicXMLPath)
                                .First(f =>
                                    f.Contains("public") &&
                                    f[f.IndexOf("type=")..].Split('\"')[1].Equals(resType) &&
                                    f[f.IndexOf("name=")..].Split('\"')[1].Equals(resName)
                                )
                                .Split("id=")[1]
                                .Split('\"', '\"')[1];
            }
            catch
            {
                $"\nError: resource {resName} not found".QuitWithException();
            }

            return resLine;
        }

        public static string GetRegister(this string value, int index)
        {
            if (index == 0)
            {
                ("\nError: Register index must be greater than zero\n" +
                "\nPress any key to close the patcher.")
                    .QuitWithException();
            }

            int fixedIndex = index - 1;
            int fixedValueLength = value.Length - 1;
            int valueCheckedIndex;
            bool registerDeclaration;
            bool acquireRegister = false;
            string currentRegister = "";
            int currentRegisterLength;
            List<string> foundRegisters = [];
            for (int i = 0; i <= fixedValueLength; i++)
            {
                registerDeclaration = value[i].Equals('p') || value[i].Equals('v');

                valueCheckedIndex = i + 1;
                if (!acquireRegister &&
                    registerDeclaration &&
                    valueCheckedIndex <= fixedValueLength &&
                    char.IsDigit(value[valueCheckedIndex]))
                {
                    currentRegister = "";

                    acquireRegister = true;
                }

                if (acquireRegister)
                {
                    currentRegister += value[i];
                    currentRegisterLength = currentRegister.Length;

                    if (currentRegisterLength > 1)
                    {
                        if (!char.IsDigit(value[i]) || i.Equals(fixedValueLength))
                        {
                            foundRegisters.Add(!char.IsDigit(currentRegister.Last())
                                                ?
                                                currentRegister.Remove(currentRegisterLength - 1)
                                                :
                                                currentRegister);

                            if (registerDeclaration)
                            {
                                i--;
                            }
                            else if (value[i].Equals('}'))
                            {
                                break;
                            }

                            acquireRegister = false;
                        }
                    }
                }
            }

            return index <= foundRegisters.Count
                    ?
                    foundRegisters[fixedIndex]
                    :
                    "X";
        }

        public static string GetIstructionByRegisterSize(this string value, string low, string wide)
        {
            string currentRegisterValueString = "";
            try
            {
                Regex.Matches(value, @"\d+")
                    .Cast<Match>()
                    .Select(match => match.Value)
                    .ToList()
                    .ForEach(number => currentRegisterValueString += number);
            }
            catch
            {
                ("\nError: This string doesn't contain any integer value\n" +
                "\nPress any key to close the patcher.")
                    .QuitWithException();
            }

            int currentRegisterValue = !String.IsNullOrEmpty(currentRegisterValueString) ? int.Parse(currentRegisterValueString) : 0;

            return currentRegisterValue <= 15 ? low : wide;
        }

        public static string GetInvokedSectionClass(this string value, int index)
        {
            if (index == 0)
            {
                ("\nError: Register index must be greater than zero\n" +
                "\nPress any key to close the patcher.")
                    .QuitWithException();
            }

            int fixedIndex = index - 1;
            List<string> outputs = [];

            bool outsideParametersSection = true;
            bool acquireChar = false;
            int outputsCount = 0;
            foreach (var c in value)
            {
                if (outsideParametersSection)
                {
                    if (c.Equals('('))
                    {
                        outsideParametersSection = false;
                    }
                }
                else
                {
                    if (c.Equals(')'))
                    {
                        outsideParametersSection = true;
                    }
                }

                if (outsideParametersSection)
                {
                    if (!acquireChar && c.Equals('L'))
                    {
                        outputs.Add("");
                        acquireChar = true;

                        continue;
                    }
                    if (acquireChar)
                    {
                        if (c.Equals(';'))
                        {
                            outputsCount++;
                            acquireChar = false;

                            continue;
                        }

                        outputs[outputsCount] += c;
                    }
                }
            }

            return index <= outputs.Count && !string.IsNullOrEmpty(outputs[fixedIndex])
                    ?
                        outputs[fixedIndex]
                    :
                        "X";
        }

        public static string GetInvokedSection(this string value)
        {
            string output = "";

            bool acquireChar = false;
            foreach (var c in value)
            {
                if (!acquireChar && c.Equals('L'))
                {
                    acquireChar = true;
                }
                if (acquireChar)
                {
                    output += c;
                }
            }

            return !string.IsNullOrEmpty(output) ? output : "X";
        }

        public static string GetMethodName(this string value, bool returnNameOnly)
        {
            StringBuilder splitMethodName = new();

            bool acquireChar = false;
            for (int i = value.Length - 1; i >= 0; i--)
            {
                if (!acquireChar)
                {
                    if (value[i].Equals('('))
                    {
                        acquireChar = true;
                    }
                }
                else
                {
                    if (value[i].Equals('>') || value[i].Equals(' '))
                    {
                        break;
                    }

                    splitMethodName.Insert(0, value[i]);
                }
            }

            string methodNameString = splitMethodName.ToString();

            if (String.IsNullOrEmpty(methodNameString))
            {
                "\nError: No method name found".QuitWithException();
            }

            return !returnNameOnly ? $".method {methodNameString}(" : methodNameString;
        }

        public static string GetFieldName(this string value)
        {
            string output = "";

            bool acquireChar = false;
            for (int i = value.Length - 1; i >= 0; i--)
            {
                if (!acquireChar)
                {
                    if (value[i].Equals(':'))
                    {
                        acquireChar = true;
                    }
                }
                else
                {
                    if (Char.IsSeparator(value[i]))
                    {
                        break;
                    }

                    output += value[i];
                }
            }

            return output;
        }

        public static string GetParameterClassName(this string value, int index)
        {
            if (index == 0)
            {
                ("\nError: Parameter Class index must be greater than zero\n" +
                "\nPress any key to close the patcher.")
                    .QuitWithException();
            }

            int fixedIndex = index - 1;
            List<string> outputs = [];

            bool insideParametersSection = false;
            bool acquireChar = false;
            int outputsCount = 0;
            foreach (var c in value)
            {
                if (!insideParametersSection)
                {
                    if (c.Equals('('))
                    {
                        insideParametersSection = true;
                    }
                }
                else
                {
                    if (c.Equals(')'))
                    {
                        insideParametersSection = false;
                    }
                }

                if (insideParametersSection)
                {
                    if (!acquireChar)
                    {
                        if (c.Equals('L'))
                        {
                            outputs.Add("");
                            acquireChar = true;

                            continue;
                        }
                    }
                    if (acquireChar)
                    {
                        if (c.Equals(';'))
                        {
                            outputsCount++;
                            acquireChar = false;

                            continue;
                        }

                        if (c.Equals(')'))
                        {
                            break;
                        }

                        outputs[outputsCount] += c;
                    }
                }
            }

            return index <= outputs.Count && !string.IsNullOrEmpty(outputs[fixedIndex])
                    ?
                        outputs[fixedIndex]
                    :
                        "X";
        }

        public static bool MethodParametersCount(this string value, int targetParametersCount)
        {
            try
            {
                int sourceParametersCount = value.Split('(', ')')[1].Split(';').Length - 1;

                return sourceParametersCount == targetParametersCount;
            }
            catch
            {
                "\nError: No parameters found".QuitWithException();
            }

            return false;
        }

        private static readonly char emptyChar = ' ';
        public static bool PartialContains(this string source, string target)
        {
            string[] splittedTarget;

            if (!target.TrimStart().TrimEnd().Contains(emptyChar))
            {
                splittedTarget = [target];
            }
            else
            {
                splittedTarget = target.Split(' ');
            }

            int occurrencesFoundInSource = 0;

            foreach (string str in splittedTarget)
            {
                if (source.Contains(str))
                {
                    occurrencesFoundInSource++;
                }
            }

            return occurrencesFoundInSource.Equals(splittedTarget.Length);
        }

        public static bool ReferenceEntriesCount(this string value, string reference, int count)
        {
            return Regex.Matches(value, reference).Count == count;
        }
        
        public static string ScaleRegisterSize(this string value, int steps)
        {
            return Regex.Replace(
                        value,

                        @"\d+",

                        match => 
                        {
                            return (int.Parse(match.Value) + steps).ToString();
                        }
                    );
        }
    }
}