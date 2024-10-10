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
                Func<
                    string,
                    string,
                    Properties,
                    T,
                    int,
                    string,
                    (int, bool, string) //Returned Params
                > patchOperations
            )
            {
                int patchInteractions = 0;
                (int, bool, string) returnedValues;

                IEnumerator<string> SmaliPathsEnumerator = APKUtils.GetSmaliPaths().GetEnumerator();
                while (apply && SmaliPathsEnumerator.MoveNext())
                {
                    properties.PatchedFull
                        = properties.Full
                        = File.ReadAllText(SmaliPathsEnumerator.Current);

                    returnedValues = patchOperations(
                                        SmaliPathsEnumerator.Current,
                                        APKUtils.GetSmaliPaths().Last(),
                                        properties,
                                        smaliSearchKeys,
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
                public List<string> Lines = [];
                public int LinesCount = 0;
                public string NewPath = "";
                public List<string> NewLines = [];
                public int NewLinesCount = 0;
            }
            private readonly Properties properties = new();

        }

        public static SubPatchModule<string[]>.Properties NewSmaliTarget(
            this SubPatchModule<string[]>.Properties properties,
            string smaliPartialPath
        )
        {
            string newPath = smaliPartialPath.Replace('/', '\\').GetSmaliFileFullPath(
                                    Init.apkDecompiledPath
                                );



            properties.NewPath =
                newPath;
            properties.NewLines =
                new(File.ReadAllLines(newPath));
            properties.NewLinesCount =
                properties.NewLines.Count;

            return properties;
        }

        public static string GetSmaliFileFullPath(this string innerPathOrFileName, string apkDecompiledPath)
        {
            if (APKUtils.GetSmaliPaths().Count.Equals(0) && Directory.Exists(apkDecompiledPath))
            {
                APKUtils.SetSmaliPaths(apkDecompiledPath);
            }

            if (!innerPathOrFileName.Contains(".smali"))
            {
                innerPathOrFileName += ".smali";
            }

            List<string> smaliFolder = GetSmaliFolders(apkDecompiledPath)
                                        .Where(f => File.Exists($"{f}\\{innerPathOrFileName}"))
                                        .ToList();

            if (smaliFolder.Count == 0)
            {
                smaliFolder = APKUtils
                                .GetSmaliPaths()
                                .Where(f => f.Contains($"\\{innerPathOrFileName}"))
                                .ToList();
            }

            if (smaliFolder.Count == 0)
            {
                "Error: No smali file found in dedicated folders".QuitWithException();
            }

            return $"{smaliFolder.First()}\\{innerPathOrFileName}";
        }

        public static string GetSmaliFilePartialPath(this string fullPath)
        {
            return $"\\{Path.GetFileName(Path.GetDirectoryName(fullPath))}\\{Path.GetFileName(fullPath)}";
        }

        public static List<string> GetSmaliFolders(string apkDecompiledPath)
        {
            List<string> smaliDirs = Directory.GetDirectories(
                                        apkDecompiledPath,
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

        public static int BoundedIndex(this int linesCount, int currentIndex, int indexSteps)
        {
            int newIndex = currentIndex + indexSteps;

            return newIndex >= 0 && newIndex < linesCount ? newIndex : linesCount - 1;
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
            foreach (char c in value)
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
            foreach (char c in value)
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