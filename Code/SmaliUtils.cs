using System.Text;
using System.Text.RegularExpressions;

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
                    !String.IsNullOrEmpty(sourceKeyword) ? sourceKeyword : str,

                    targetKeyword
                );
        }

        public class SubPatchModule<T>
        {
            public (bool, bool) SubModuleStatus = (false, false);
            public SubPatchModule(
                T smaliSearchKeys,
                bool subModuleStatus,
                Func<
                    XMLSmaliProperties,
                    T,
                    ScaleIndex,
                    CodeInject,
                    int,
                    List<string>,
                    (int, bool, List<string>) /* Returned Params */
                > patchOperations
            ) {
                if (APKUtils.GetSmaliPathsCount().Equals(0) && Directory.Exists(Main_Class.apkDecompiledPath))
                {
                    APKUtils.SetSmaliPaths();
                }

                SubModuleStatus = (!subModuleStatus, subModuleStatus);
                int interactionsCount = 0;
                List<string> infoForNextSubPatch = [];
                (int, bool, List<string>) returnedValues;

                xmlSmaliProperties.LastOfPath = APKUtils.GetSmaliPaths().Last();

                IEnumerator<string> SmaliPathsEnumerator = APKUtils.GetSmaliPaths().GetEnumerator();
                while (SubModuleStatus.Item2 && SmaliPathsEnumerator.MoveNext())
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
                                        interactionsCount,
                                        infoForNextSubPatch
                                    );
                    interactionsCount = returnedValues.Item1;
                    SubModuleStatus.Item2 = returnedValues.Item2;
                    infoForNextSubPatch = returnedValues.Item3;
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
                    string smaliExtension =
                        ".smali";
                    string fixedPartialPath =
                        uDropUtils.GetOSSpecificFullPath(
                            $"{
                                (char.IsLetterOrDigit(partialPath.First())
                                ?
                                    "/"
                                :
                                    "")
                            }{
                                partialPath
                            }{
                                (!partialPath.EndsWith(smaliExtension)
                                ?
                                    smaliExtension
                                :
                                    "")
                            }"
                        );

                    List<string> fullSmaliPath = [..
                                                    GetSmaliFolders()
                                                    .Select(
                                                        sFP
                                                            =>
                                                        $"{
                                                            sFP
                                                        }{
                                                            fixedPartialPath.Replace(sFP, "")
                                                        }"
                                                    )
                                                    .Where(fP => File.Exists(fP))
                                                ];
                    if (fullSmaliPath.Count.Equals(0))
                    {
                        $"Error: {fixedPartialPath} file not found".QuitWithException();
                    }

                    ProxiedPath =
                        fullSmaliPath.First();
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
                        string newLineChar = "\n";

                        if (InjectionType.Equals(0))
                        {
                            xmlSmaliProperties.Lines.InsertRange(injectionInfo.Item2, injectionInfo.Item3);

                            xmlSmaliProperties.LinesCount += injectionInfo.Item3.Length;

                            injectionTypeInfo = $"Added At Line: {injectionInfo.Item2}";
                        }
                        else if (InjectionType.Equals(1))
                        {
                            xmlSmaliProperties.Lines[injectionInfo.Item2] = String.Join(newLineChar, injectionInfo.Item3);

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
                            xmlSmaliProperties.ProxiedLines[injectionInfo.Item2] = String.Join(newLineChar, injectionInfo.Item3);

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
                    string fixedXMLSmaliContent = "";
                    string xmlSmaliPath = "";
                    string carriageSym = "\r";
                    string newLineSym = "\n";

                    if (InjectionType.Equals(0) || InjectionType.Equals(1))
                    {
                        fixedXMLSmaliContent = string.Join(newLineSym, xmlSmaliProperties.Lines.Select(l => l.Replace(carriageSym, "")));
                        xmlSmaliPath = xmlSmaliProperties.Path;
                    }
                    else if (InjectionType.Equals(2) || InjectionType.Equals(3))
                    {
                        fixedXMLSmaliContent = string.Join(newLineSym, xmlSmaliProperties.ProxiedLines.Select(l => l.Replace(carriageSym, "")));
                        xmlSmaliPath = xmlSmaliProperties.ProxiedPath;
                    }
                    else if (InjectionType.Equals(4))
                    {
                        fixedXMLSmaliContent = xmlSmaliProperties.PatchedFull.Replace($"{carriageSym}{newLineSym}", newLineSym);
                        xmlSmaliPath = xmlSmaliProperties.Path;
                    }

                    File.WriteAllText(xmlSmaliPath, fixedXMLSmaliContent);
                }
            }
            public static CodeInject codeInject = new(xmlSmaliProperties);
        }

        public static string GetSmaliFileLastPath(this string fullPath)
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
                                        .Where(f => Path.GetFileName(f).StartsWith("smali"))
                                    ];

            if (smaliDirs.Count.Equals(0))
            {
                "Error: No smali folder exists in decompiled apk path".QuitWithException();
            }

            return [..
                        smaliDirs.OrderBy(
                            p
                                =>
                            uRegex.GetSmaliFoldersRegex().Match(p).Success
                            ?
                                int.Parse(uRegex.GetSmaliFoldersRegex().Match(p).Value)
                            :
                                int.MinValue
                        )
                    ];
        }

        public static string GetFieldName(this string value, bool getFromDescriptor)
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

            return !getFromDescriptor ? output : output.Split(">").First();
        }

        public static string GetMethodName(this string value)
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
                "Error: No method name found".QuitWithException();
            }

            return methodNameString;
        }

        public static string GetMethodReturnClassName(this string value)
        {
            string endCircularBracket = ")";

            if (value.Contains(endCircularBracket)) {

                return value.Split(endCircularBracket).Last();
            }
            else
            {
                "Error: No method found as method return".QuitWithException();
            }

            return "";
        }

        public static string GetLabelName(this string value)
        {
            string doubleDot = ":";

            if (value.PartialsContains($"if- {doubleDot}")) {
                return $"{doubleDot}{value.Split(doubleDot).Last()}";
            }
            else
            {
                "Error: No label found".QuitWithException();
            }

            return "";
        }

        public static string GetClassNamesFromMethodDescriptor(this string value, int index)
        {
            if (index == 0)
            {
                "Error: Register index must be greater than zero".QuitWithException();
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

            if (index <= outputs.Count && !string.IsNullOrEmpty(outputs[fixedIndex]))
            {
                return outputs[fixedIndex];
            }
            else
            {
                "Error: No class found in method descriptor".QuitWithException();
                
                return "";
            }
        }

        public static string GetClassNameFromMethodParameters(this string value, int index)
        {
            if (index == 0)
            {
                "Error: Parameter Class index must be greater than zero".QuitWithException();
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
                        "";
        }

        public static string GetMethodDescriptor(this string value)
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

            if (!string.IsNullOrEmpty(output))
            {
                return output;
            }
            else
            {
                "Error: No method descriptor found".QuitWithException();
                
                return "";
            };
        }

        public static int GetMethodParametersCount(this string value)
        {
            try
            {
                return value.Split('(', ')')[1].Split(';').Length - 1;
            }
            catch
            {
                "Error: No parameters found".QuitWithException();

                return -1;
            }
        }

        public static int GetOccurrenceCount(this string source, string target)
        {
            return source
                    .Split(['\n', '\r'], StringSplitOptions.RemoveEmptyEntries)
                    .Count(linea => linea.Contains(target));
        }

        public static string GetRegister(this string value, int index)
        {
            if (index == 0)
            {
                "Error: Register index must be greater than zero".QuitWithException();
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
            
            if (index <= foundRegisters.Count)
            {
                return foundRegisters[fixedIndex];
            }
            else
            {
                "Error: No register value found".QuitWithException();
                
                return "";
            }
        }

        public static string GetResourceHexByDecimal(long decimalRes)
        {
            return $"{(decimalRes < 0 ? "-" : "")}0x{Math.Abs(decimalRes).ToString("X").ToLower()}";
        }
        
        public static string GetResourceHexByName(string resType, string resName)
        {
            string publicXMLPath = uDropUtils.GetOSSpecificFullPath($"{Main_Class.apkDecompiledPath}/res/values/public.xml");

            if (!File.Exists(publicXMLPath))
            {
                "Error: 'public.xml' not found".QuitWithException();
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
                $"Error: resource {resName} not found".QuitWithException();
            }

            return resLine;
        }

        public static bool ContainsMethodName(this string value, string methodName)
        {
            return Regex.IsMatch(value, $@"{Regex.Escape(".method")}.*?\s{Regex.Escape($"{methodName}(")}");
        }

        private static readonly char emptyChar = ' ';
        public static bool PartialsContains(this string source, string target)
        {
            string[] splittedTarget = target.TrimStart().TrimEnd().Split(emptyChar);

            if (target.StartsWith(emptyChar))
            {
                splittedTarget[0] = emptyChar + splittedTarget[0];
            }
            if (target.EndsWith(emptyChar))
            {
                splittedTarget[^1] += emptyChar;
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

        public static string ScaleRegisterValue(this string value, int steps)
        {
            return uRegex.Replace(
                        value,

                        @"\d+",

                        match => (int.Parse(match.Value) + steps).ToString()
                    );
        }
    }
}