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
                    (!String.IsNullOrEmpty(sourceKeyword) ? sourceKeyword : str),
                    targetKeyword
                );
        }

        public class SubPatchModule<T>
        {
            public bool Apply = false;
            public string smaliInfo = "";
            public SubPatchModule(
                T smaliSearchKeys,
                bool apply,
                Func<Properties,
                        T,
                        ScaleIndex,
                        CodeInject,
                        int,
                        string,
                        (int, bool, string) /* Returned Params */> patchOperations
            )
            {
                int patchInteractions = 0;
                (int, bool, string) returnedValues;
                if (APKUtils.GetSmaliPathsCount().Equals(0) && Directory.Exists(Init.apkDecompiledPath))
                {
                    APKUtils.SetSmaliPaths();
                }

                properties.LastOfPath = APKUtils.GetSmaliPaths().Last();

                IEnumerator<string> SmaliPathsEnumerator = APKUtils.GetSmaliPaths().GetEnumerator();
                while (apply && SmaliPathsEnumerator.MoveNext())
                {
                    properties.PatchedFull =
                        properties.Full =
                        File.ReadAllText(SmaliPathsEnumerator.Current);

                    properties.Path = SmaliPathsEnumerator.Current;

                    returnedValues = patchOperations(
                                        properties,
                                        smaliSearchKeys,
                                        scaleIndex,
                                        codeInject,
                                        patchInteractions,
                                        smaliInfo
                                    );
                    patchInteractions = returnedValues.Item1;
                    apply = Apply = returnedValues.Item2;
                    smaliInfo = returnedValues.Item3;
                }
            }

            public class Properties
            {
                public string Full = "";
                public string PatchedFull = "";
                public string Path = "";
                public string LastOfPath = "";
                public List<string> Lines = [];
                public int LinesCount = 0;
                public string NewPath = "";
                public List<string> NewLines = [];
                public int NewLinesCount = 0;

                public void ReadSmaliLines()
                {
                    Lines = new(File.ReadAllLines(Path));
                    LinesCount = Lines.Count;
                }
                
                public void SetNewSmaliTarget(string smaliPartialPath)
                {
                    string newPath = smaliPartialPath
                                        .Replace('/', '\\')
                                        .GetSmaliFileFullPath();

                    NewPath =
                        newPath;
                    NewLines =
                        new(File.ReadAllLines(newPath));
                    NewLinesCount =
                        NewLines.Count;
                }
            } private static readonly Properties properties = new();

            public class ScaleIndex(Properties smaliPropertiesInstance)
            {
                public int Lines(int currentIndex, int indexSteps)
                {
                    return Compute(currentIndex, indexSteps, smaliPropertiesInstance.LinesCount);
                }

                public int NewLines(int currentIndex, int indexSteps)
                {
                    return Compute(currentIndex, indexSteps, smaliPropertiesInstance.NewLinesCount);
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
            } public static ScaleIndex scaleIndex = new(properties);

            public class CodeInject(Properties smaliPropertiesInstance)
            {
                private int InjectionType;
                private StringTransform[] SmaliSearchKeys = [];

                public CodeInject Lines(((string, bool), int, string[])[] injectionsInfo)
                {
                    InjectionType = 0;

                    return Compute(injectionsInfo);
                }
                public CodeInject LinesReplace(((string, bool), int, string[])[] injectionsInfo)
                {
                    InjectionType = 1;

                    return Compute(injectionsInfo);
                }

                public CodeInject NewLines(((string, bool), int, string[])[] injectionsInfo)
                {
                    InjectionType = 2;

                    return Compute(injectionsInfo);
                }
                public CodeInject NewLinesReplace(((string, bool), int, string[])[] injectionsInfo)
                {
                    InjectionType = 3;

                    return Compute(injectionsInfo);
                }

                public CodeInject FullReplace(((string, bool), int, string[])[] injectionsInfo, StringTransform[] smaliSearchKeys)
                {
                    InjectionType = 4;

                    SmaliSearchKeys = smaliSearchKeys;

                    return Compute(injectionsInfo);
                }
                
                private CodeInject Compute(((string, bool), int, string[])[] injectionsInfo)
                {
                    foreach (var injectionInfo in injectionsInfo)
                    {
                        ConsoleLog.PatchLog(
                            smaliPropertiesInstance.Path,
                            injectionInfo.Item1.Item1,
                            injectionInfo.Item1.Item2
                                ?
                                    injectionInfo.Item2
                                :
                                    -1
                        );

                        if (InjectionType.Equals(0))
                        {
                            smaliPropertiesInstance.Lines.InsertRange(injectionInfo.Item2, injectionInfo.Item3);

                            smaliPropertiesInstance.LinesCount += injectionInfo.Item3.Length;
                        }
                        else if (InjectionType.Equals(1))
                        {
                            smaliPropertiesInstance.Lines[injectionInfo.Item2] = injectionInfo.Item3[0];
                        }
                        else if (InjectionType.Equals(2))
                        {
                            smaliPropertiesInstance.NewLines.InsertRange(injectionInfo.Item2, injectionInfo.Item3);

                            smaliPropertiesInstance.NewLinesCount += injectionInfo.Item3.Length;
                        }
                        else if (InjectionType.Equals(3))
                        {
                            smaliPropertiesInstance.NewLines[injectionInfo.Item2] = injectionInfo.Item3[0];
                        }
                        else if (InjectionType.Equals(4))
                        {
                            foreach (var SmaliSearchKey in SmaliSearchKeys)
                            {
                                smaliPropertiesInstance.PatchedFull = smaliPropertiesInstance
                                                                .PatchedFull
                                                                .Replace(
                                                                    SmaliSearchKey.Original,

                                                                    SmaliSearchKey.Transformed
                                                                );
                            }
                        }
                    }

                    return this;
                }

                public void Write()
                {
                    if (InjectionType.Equals(0) || InjectionType.Equals(1))
                    {
                        File.WriteAllLines(smaliPropertiesInstance.Path, smaliPropertiesInstance.Lines);
                    }
                    else if (InjectionType.Equals(2) || InjectionType.Equals(3))
                    {
                        File.WriteAllLines(smaliPropertiesInstance.NewPath, smaliPropertiesInstance.NewLines);
                    }
                    else if (InjectionType.Equals(4))
                    {
                        File.WriteAllText(smaliPropertiesInstance.Path, smaliPropertiesInstance.PatchedFull);
                    }
                }
            } public static CodeInject codeInject = new(properties);
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
                        smaliPath = GetSmaliFolders()
                                        .Where(f => File.Exists($"{f}\\{innerPathOrFileName}"))
                                        .ToList();
                        break;
                    case 1:
                        smaliPath = APKUtils
                                        .GetSmaliPaths()
                                        .Where(f => f.Contains($"\\{innerPathOrFileName}"))
                                        .ToList();
                        break;
                    case 2:
                        "Error: No smali file found in dedicated folders".QuitWithException();
                        break;
                }

                tryIndex++;
            }

            return $"{smaliPath.First()}\\{innerPathOrFileName}";
        }

        public static string GetSmaliFilePartialPath(this string fullPath)
        {
            return $"\\{Path.GetFileName(Path.GetDirectoryName(fullPath))}\\{Path.GetFileName(fullPath)}";
        }

        public static List<string> GetSmaliFolders()
        {
            List<string> smaliDirs = Directory.GetDirectories(
                                        Init.apkDecompiledPath,
                                        "*",
                                        SearchOption.TopDirectoryOnly
                                    )
                                    .Where(f => f.Contains("smali"))
                                    .ToList();

            if (smaliDirs.Count.Equals(0))
            {
                "Error: No smali folder exists inside decompiled apk path".QuitWithException();
            }

            return smaliDirs;
        }

        public static string GetResourceHex(int decimalRes)
        {
            return $"0x{Convert.ToString(decimalRes, 16).ToLower()}";
        }
        public static string GetResourceHex(string resType, string resName)
        {
            string publicXMLPath = $"{Init.apkDecompiledPath}\\res\\values\\public.xml";

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

        public static string GetRegister(this string value, int precision)
        {
            int fixedPrecision = precision - 1;
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

            return precision <= foundRegisters.Count
                    ?
                    foundRegisters[fixedPrecision]
                    :
                    "X";
        }

        public static string GetInvokedSectionClass(this string value, int precision)
        {
            int fixedPrecision = precision - 1;
            List<string> outputs = [];

            bool acquireChar = false;
            int outputsCount = 0;
            foreach (var c in value)
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

            return precision <= outputs.Count && !string.IsNullOrEmpty(outputs[fixedPrecision])
                    ?
                        outputs[fixedPrecision]
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

        public static string GetMethodName(this string value)
        {
            List<char> methodName = [];
            bool acquireMethodName = false;
            for (int i = value.Length - 1; i >= 0; i--)
            {
                if (!acquireMethodName)
                {
                    if (value[i].Equals('('))
                    {
                        acquireMethodName = true;
                    }
                }
                else
                {
                    if (value[i].Equals('>') || value[i].Equals(' '))
                    {
                        break;
                    }

                    methodName.Add(value[i]);
                }
            }

            methodName.Reverse();

            return $" {new string(methodName.ToArray())}(";
        }

        public static string GetCondLabel(this string value)
        {
            string cond = "";

            try
            {
                cond = value.Split(':')[1];
            }
            catch
            {
                "Error: No condition label found".QuitWithException();
            }

            return $":{cond}";
        }

        public static int MethodParametersCount(this string value)
        {
            int methodParamsCount = 0;

            try
            {
                methodParamsCount = value.Split('(', ')')[1].Split(';').Length - 1;
            }
            catch
            {
                "Error: No method found".QuitWithException();
            }

            return methodParamsCount;
        }

        public static int ReferenceEntriesCount(this string value, string reference)
        {
            return Regex.Matches(value, reference).Count;
        }
    }
}