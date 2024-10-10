namespace uDrop.Code
{
    public class YouTube_Patches
    {
        private static readonly SmaliUtils.StringTransform playServicesName =
            new("com.google", "", "app.revanced");
        private static readonly string blockerPath =
            "uTools/uBlocker";
        private static readonly string clientSpoofingPath =
            "uTools/StreamSpoofing/uSpoofing";

        public static List<bool> Patch_Test()
        {
            APKUtils.SetSmaliPaths(Init.apkDecompiledPath);

            return [
                
            ];
        }

        public static List<bool> Method_Debug()
        {
            APKUtils.SetSmaliPaths(Init.apkDecompiledPath);

            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ")Z",
                        " onDoubleTap(",
                        " onDoubleTapEvent(",
                        " onClick(",
                        " onItemClick(",
                        " onBackPressed(",
                        " getOnBackPressedDispatcher(",
                        " onTouch(",
                        " onTouchEvent(",
                        " onCreate(",
                        " onCreateLayout(",
                        "final a:Landroid/view/View;"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        (bool, string, string) checkMethod = (true, ".method", ".locals");

                        for (int i = 3; i <= 4; i++)
                        {
                            if (new[] {
                                    smaliSearchKeys[i]
                                }.All(properties.Full.Contains))
                            {
                                if (patchInteractions >= 0)
                                {
                                    properties.Lines = new(File.ReadAllLines(resourceFilePath));
                                    properties.LinesCount = properties.Lines.Count;

                                    for (int j = 0; j < properties.LinesCount; j++)
                                    {
                                        if (checkMethod.Item1
                                            ?
                                                    new[] {
                                                        checkMethod.Item3
                                                    }.All(properties.Lines[j].Contains)
                                                &&
                                                    new[] {
                                                        checkMethod.Item2,
                                                        smaliSearchKeys[i]
                                                    }.All(properties.Lines[j - 1].Contains)
                                            :
                                                new[] {
                                                    checkMethod.Item2
                                                }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines.InsertRange(
                                                j + 1,

                                                [
                                                    //invoke-static {}, LuTools/uDebug;->printMethod()V
                                                    //invoke-static {}, LuTools/uDebug;->printStackTrace()V
                                                    //invoke-static {v0}, LuTools/uDebug;->printStringWithMethod(Ljava/lang/String;)V
                                                    //invoke-static {v0}, LuTools/uDebug;->printIntWithMethod(I)V
                                                    //invoke-static {v0}, LuTools/uDebug;->printLongWithMethod(J)V
                                                    //invoke-static {v0}, LuTools/uBlocker;->HideNormalView(Landroid/view/View;)V

                                                    "invoke-static {}, LuTools/uDebug;->printMethod()V"
                                                ]
                                            );
                                        }
                                    }

                                    File.WriteAllLines(resourceFilePath, properties.Lines);
                                }

                                patchInteractions++;
                            }
                        }

                        if (patchInteractions > 0 && resourceFilePath.Equals(lastResourceFilePath))
                        {
                            smaliInfo = "";

                            return (patchInteractions, false, smaliInfo);
                        }
                        else
                        {
                            return (patchInteractions, true, smaliInfo);
                        }
                    }
                ).Apply
            ];
        }

        public static List<bool> Non_Root_MicroG()
        {
            return [
                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new($"\"{playServicesName.Original}\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.c2dm.intent.RECEIVE\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.c2dm.intent.REGISTER\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.c2dm.intent.REGISTRATION\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.c2dm.permission.RECEIVE\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.c2dm.permission.SEND\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.auth.accounts\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.auth.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.chimera\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.clearcut.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.droidguard.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.fonts\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.gass.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.gmscompliance.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.icing.LIGHTWEIGHT_INDEX_SERVICE\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.languageprofile.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.measurement.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.people.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.phenotype\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.phenotype.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.potokens.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gsf.action.GET_GLS\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"content://{playServicesName.Original}.android.gms.phenotype/\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"content://{playServicesName.Original}.android.gsf.gservices\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"content://{playServicesName.Original}.android.gsf.gservices/prefix\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gsf.login\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.iid.TOKEN_REQUEST\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"content://{playServicesName.Original}.settings/partner\"", playServicesName.Original, playServicesName.Transformed)
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith(".smali"))
                        {
                            if (smaliSearchKeys.Any(st => properties.Full.Contains(st.Original)))
                            {
                                resourceFilePath.GetSmaliFilePartialPath().LogFound(false);

                                foreach(SmaliUtils.StringTransform smaliSearchKey in smaliSearchKeys)
                                {
                                    properties.PatchedFull = properties
                                                                .PatchedFull
                                                                .Replace(
                                                                    smaliSearchKey.Original,

                                                                    smaliSearchKey.Transformed
                                                                );
                                }

                                File.WriteAllText(resourceFilePath, properties.PatchedFull);

                                patchInteractions++;
                            }
                        }

                        if (patchInteractions > 0 && resourceFilePath.Equals(lastResourceFilePath))
                        {
                            smaliInfo = "";

                            return (patchInteractions, false, smaliInfo);
                        }
                        else
                        {
                            return (patchInteractions, true, smaliInfo);
                        }
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new($"android:name=\"{playServicesName.Original}.android.youtube.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION\"", playServicesName.Original, Init.projectInfo.Item3.ToLower()),
                        new($"android:name=\"{playServicesName.Original}.android.youtube.permission.C2D_MESSAGE\"", playServicesName.Original, Init.projectInfo.Item3.ToLower()),
                        new($"android:authorities=\"{playServicesName.Original}.android.youtube", playServicesName.Original, Init.projectInfo.Item3.ToLower()),
                        new($"\"{playServicesName.Original}.android.c2dm", playServicesName.Original, Init.projectInfo.Item3.ToLower())
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\AndroidManifest.xml"))
                        {
                            if (smaliSearchKeys.Any(st => properties.Full.Contains(st.Original)))
                            {
                                resourceFilePath.GetSmaliFilePartialPath().LogFound(false);

                                foreach(SmaliUtils.StringTransform smaliSearchKey in smaliSearchKeys)
                                {
                                    properties.PatchedFull = properties
                                                                .PatchedFull
                                                                .Replace(
                                                                    smaliSearchKey.Original,

                                                                    smaliSearchKey.Transformed
                                                                );
                                }

                                File.WriteAllText(resourceFilePath, properties.PatchedFull);

                                return (patchInteractions, false, smaliInfo);
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new($"package=\"{playServicesName.Original}.android.youtube", playServicesName.Original, Init.projectInfo.Item3.ToLower())
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\AndroidManifest.xml"))
                        {
                            if (properties.Full.Contains(smaliSearchKeys[0].Original))
                            {
                                resourceFilePath.GetSmaliFilePartialPath().LogFound("Package Name", false);
                                
                                properties.PatchedFull = properties
                                                            .PatchedFull
                                                            .Replace(
                                                                smaliSearchKeys[0].Original,

                                                                smaliSearchKeys[0].Transformed
                                                            );

                                File.WriteAllText(resourceFilePath, properties.PatchedFull);

                                return (patchInteractions, false, smaliInfo);
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("android:label=\"@string/application_name\"", "@string/application_name", Init.projectInfo.Item3)
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\AndroidManifest.xml"))
                        {
                            if (properties.Full.Contains(smaliSearchKeys[0].Original))
                            {
                                resourceFilePath.GetSmaliFilePartialPath().LogFound("App Label Name", false);

                                properties.PatchedFull = properties
                                                            .PatchedFull
                                                            .Replace(
                                                                smaliSearchKeys[0].Original,

                                                                smaliSearchKeys[0].Transformed
                                                            );

                                File.WriteAllText(resourceFilePath, properties.PatchedFull);

                                return (patchInteractions, false, smaliInfo);
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "</manifest>",
                        "</application>"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\AndroidManifest.xml"))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -3); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("MicroG Detection Signature", j, false);

                                            properties.Lines.InsertRange(
                                                j,

                                                [
                                                    $"<meta-data android:name=\"{playServicesName.Transformed}.android.gms.SPOOFED_PACKAGE_NAME\" android:value=\"{playServicesName.Original}.android.youtube\"/>",
                                                    $"<meta-data android:name=\"{playServicesName.Transformed}.android.gms.SPOOFED_PACKAGE_SIGNATURE\" android:value=\"24bb24c05e47e0aefa68a58a766179d9b613a600\"/>",
                                                    $"<meta-data android:name=\"{playServicesName.Transformed}.MICROG_PACKAGE_NAME\" android:value=\"{playServicesName.Transformed}.android.gms\"/>"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("</queries>", "", $"<package android:name=\"{playServicesName.Transformed}.android.gms\"/>\n            </queries>")
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\AndroidManifest.xml"))
                        {
                            if (properties.Full.Contains(smaliSearchKeys[0].Original))
                            {
                                resourceFilePath.GetSmaliFilePartialPath().LogFound("MicroG Detection Signature", false);

                                properties.PatchedFull = properties
                                                            .PatchedFull
                                                            .Replace(
                                                                smaliSearchKeys[0].Original,

                                                                smaliSearchKeys[0].Transformed
                                                            );

                                File.WriteAllText(resourceFilePath, properties.PatchedFull);

                                return (patchInteractions, false, smaliInfo);
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,
                
                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("<style name=\"Theme.YouTube.Launcher\" parent=\"@style/Base.V23.Theme.YouTube.Launcher.Dark\" />", "", "<style name=\"Theme.YouTube.Home\" parent=\"@style/Base.V23.Theme.YouTube.Launcher.Dark\">\n    <item name=\"android:windowBackground\">@color/yt_black0</item>\n    </style>"),
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\values-night\\styles.xml"))
                        {
                            if (properties.Full.Contains(smaliSearchKeys[0].Original))
                            {
                                resourceFilePath.GetSmaliFilePartialPath().LogFound("SplashScreen Color Fix", false);

                                properties.PatchedFull = properties
                                                            .PatchedFull
                                                            .Replace(
                                                                smaliSearchKeys[0].Original,

                                                                smaliSearchKeys[0].Transformed
                                                            );

                                File.WriteAllText(resourceFilePath, properties.PatchedFull);

                                return (patchInteractions, false, smaliInfo);
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Primes instant initialization\"",
                        ", Ljava/lang/Object;-><init>()V",
                        ".method",
                        ")V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Primes Initialization", j, false);

                                            properties.Lines.InsertRange(
                                                j + 1,

                                                [
                                                    "return-void"
                                                ]
                                            );

                                            for (int k = j; k < properties.LinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2],
                                                        smaliSearchKeys[3]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Primes Initialization", k, false);

                                                    properties.Lines.InsertRange(
                                                        k + 2,

                                                        [
                                                            "return-void"
                                                        ]
                                                    );
                                                }
                                            }

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Primes did not observe lifecycle events in the expected order. %s is not initializing in Application#onCreate\"",
                        "if-"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 18); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Primes Lifecycle", j, false);

                                            properties.Lines.InsertRange(
                                                j - 1,

                                                [
                                                    $"const/4 {properties.Lines[j].GetRegister(1)}, 0x1"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Primes init triggered from background in package: %s\"",
                        "if-"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 18); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Primes Background", j, false);

                                            properties.Lines.InsertRange(
                                                j - 1,

                                                [
                                                    $"const/4 {properties.Lines[j].GetRegister(1)}, 0x1"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.\"",
                        ".locals"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Google Signature Check", j, false);

                                            properties.Lines.InsertRange(
                                                j,

                                                [
                                                    "const/4 v0, 0x0",
                                                    "return v0"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"GooglePlayServices not available due to error \"",
                        ".locals"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Google Signature Check", j, false);

                                            properties.Lines.InsertRange(
                                                j,

                                                [
                                                    "return-void"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("</PreferenceScreen>", "</PreferenceScreen>", $"<Preference android:title=\"MicroG\">\n            <intent android:targetPackage=\"{playServicesName.Transformed}.android.gms\" android:targetClass=\"org.microg.gms.ui.SettingsActivity\"/>\n            </Preference>\n            </PreferenceScreen>")
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.Contains("\\xml\\settings_fragment"))
                        {
                            if (properties.Full.Contains(smaliSearchKeys[0].Original))
                            {
                                resourceFilePath.GetSmaliFilePartialPath().LogFound("MicroG Settings Button", false);

                                properties.PatchedFull = properties
                                                            .PatchedFull
                                                            .Replace(
                                                                smaliSearchKeys[0].Original,

                                                                smaliSearchKeys[0].Transformed
                                                            );

                                File.WriteAllText(resourceFilePath, properties.PatchedFull);

                                patchInteractions++;
                            }
                        }

                        if (patchInteractions.Equals(2))
                        {
                            return (patchInteractions, false, smaliInfo);
                        }
                        else
                        {
                            return (patchInteractions, true, smaliInfo);
                        }
                    }
                ).Apply,


                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Error fetching CastContext.\"",
                        "\"BroadcastReceiver is already registered\"",
                        ".method"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Cast Service Disabler", j, false);

                                            properties.Lines.InsertRange(
                                                j + 2,

                                                [
                                                    "return-void"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ".method",
                        "setVisibility(I)V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\MediaRouteButton.smali"))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (smaliSearchKeys
                                        .All(properties.Lines[i].Contains))
                                {
                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Cast Button Visibility", i, false);

                                    properties.Lines.InsertRange(
                                        i + 2,

                                        [
                                            "const/16 p1, 0x8"
                                        ]
                                    );

                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                    return (patchInteractions, false, smaliInfo);
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Playback_Stream_Spoof()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"(Linux; U; Android \"",
                        "invoke-virtual",
                        "Landroid/content/Context;->getPackageName()Ljava/lang/String;",
                        "move-result-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -28); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Package Name Fix", k, false);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"const-string {properties.Lines[k].GetRegister(1)}, \"com.google.android.youtube\""
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"youtubei/v1\"",
                        "\"key\"",
                        "\"asig\"",
                        "Landroid/net/Uri$Builder;->build()Landroid/net/Uri;",
                        "move-result-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[2]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 189); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[3]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[4]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    string buildURIRegister = properties.Lines[k].GetRegister(1);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"invoke-static {{{buildURIRegister}}}, L{clientSpoofingPath};->blockGetWatchRequest(Landroid/net/Uri;)Landroid/net/Uri;",
                                                            $"move-result-object {buildURIRegister}"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"media3.datasource.cronet\"",
                        "\"Range\"",
                        ".method protected",
                        "Lorg/chromium/net/UrlRequest$Builder;",
                        "invoke-virtual",
                        "Landroid/net/Uri;->toString()Ljava/lang/String;",
                        "move-result-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[2],
                                        smaliSearchKeys[3]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 9); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[4],
                                                smaliSearchKeys[5],
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[6]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    string toStringURIRegister = properties.Lines[k].GetRegister(1);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"invoke-static {{{toStringURIRegister}}}, L{clientSpoofingPath};->blockInitPlaybackRequest(Ljava/lang/String;)Ljava/lang/String;",
                                                            $"move-result-object {toStringURIRegister}"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "->setRequestFinishedListener(",
                        ".method public static",
                        ")Lorg/chromium/net/UrlRequest;",
                        "invoke-virtual",
                        "Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder",
                        "new-instance"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                        smaliSearchKeys[2]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 48); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[3],
                                                smaliSearchKeys[4]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= properties.LinesCount.BoundedIndex(j, -10); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[5]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    string buildRequestFirstRegister = properties.Lines[j].GetRegister(2);
                                                    string buildRequestSecondRegister = properties.Lines[j].GetRegister(3);

                                                    properties.Lines.InsertRange(
                                                        k,

                                                        [
                                                            $"move-object {buildRequestSecondRegister}, p1",
                                                            $"invoke-static {{{buildRequestFirstRegister}, {buildRequestSecondRegister}}}, L{clientSpoofingPath};->fetchStreams(Ljava/lang/String;Ljava/util/Map;)V"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Invalid playback type; streaming data is not playable\"",
                        ".method public constructor <init>",
                        "const/4",
                        "iget-object",
                        "iput-object",
                        "iget-object",
                        "iput-object",
                        ".field public",
                        ":Ljava/lang/String;",
                        "-$$Nest$smcheckIsLite",
                        ".end method"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 15); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 9); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l <= properties.LinesCount.BoundedIndex(k, 11); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[4]
                                                            }.All(properties.Lines[l].Contains))
                                                        {
                                                            for (int m = l; m <= properties.LinesCount.BoundedIndex(l, 3); m++)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[5]
                                                                    }.All(properties.Lines[m].Contains))
                                                                {
                                                                    for (int n = m; n <= properties.LinesCount.BoundedIndex(m, 9); n++)
                                                                    {
                                                                        if (new[] {
                                                                                smaliSearchKeys[6]
                                                                            }.All(properties.Lines[n].Contains))
                                                                        {
                                                                            string firstClassName = properties.Lines[m].GetInvokedSectionClass(2);
                                                                            properties = properties.NewSmaliTarget(firstClassName);
                                                                            string firstFieldName = "";
                                                                            for (int o = 0; o < properties.NewLinesCount; o++)
                                                                            {
                                                                                if (new[] {
                                                                                        smaliSearchKeys[7],
                                                                                        smaliSearchKeys[8]
                                                                                    }.All(properties.NewLines[o].Contains))
                                                                                {
                                                                                    firstFieldName = properties.NewLines[o].Split(' ', ':')[2];

                                                                                    break;
                                                                                }
                                                                            }

                                                                            string secondClassName = properties.Lines[m].GetInvokedSectionClass(1);
                                                                            properties = properties.NewSmaliTarget(secondClassName);
                                                                            string secondFieldName = "";
                                                                            for (int o = 0; o < properties.NewLinesCount; o++)
                                                                            {
                                                                                if (new[] {
                                                                                        smaliSearchKeys[7],
                                                                                        $"L{secondClassName};"
                                                                                    }.All(properties.NewLines[o].Contains))
                                                                                {
                                                                                    secondFieldName = properties.NewLines[o].Split(' ', ':')[4];

                                                                                    break;
                                                                                }
                                                                            }

                                                                            if (!new[] {
                                                                                    firstFieldName,
                                                                                    secondFieldName
                                                                                }.All(string.IsNullOrEmpty))
                                                                            {
                                                                                resourceFilePath.GetSmaliFilePartialPath().LogFound(n, false);

                                                                                properties.Lines.InsertRange(
                                                                                    n + 1,

                                                                                    [
                                                                                        $"invoke-direct {{{properties.Lines[n].GetRegister(2)}, {properties.Lines[n].GetRegister(1)}}}, L{properties.Lines[l].GetInvokedSectionClass(1)};->{Init.projectInfo.Item3}_SetStreamingData(L{firstClassName};)V"
                                                                                    ]
                                                                                );

                                                                                for (int o = n; o <= properties.LinesCount.BoundedIndex(n, 45); o++)
                                                                                {
                                                                                    if (new[] {
                                                                                            smaliSearchKeys[9]
                                                                                        }.All(properties.Lines[o].Contains))
                                                                                    {
                                                                                        for (int p = o; p < properties.LinesCount; p++)
                                                                                        {
                                                                                            if (new[] {
                                                                                                    smaliSearchKeys[10]
                                                                                                }.All(properties.Lines[p].Contains))
                                                                                            {
                                                                                                resourceFilePath.GetSmaliFilePartialPath().LogFound(p, false);

                                                                                                string thirdClassName = properties.Lines[o].GetInvokedSectionClass(1);
                                                                                                properties.Lines.InsertRange(
                                                                                                    p + 1,

                                                                                                    [
                                                                                                        $".method private final {Init.projectInfo.Item3}_SetStreamingData(L{firstClassName};)V",
                                                                                                        ".locals 2",
                                                                                                        ".param p1, \"videoDetails\"",
                                                                                                        $"iget-object v0, p1, L{firstClassName};->{firstFieldName}:Ljava/lang/String;",
                                                                                                        "if-eqz v0, :override_streaming_data",
                                                                                                        $"invoke-static {{v0}}, L{clientSpoofingPath};->getStreamingData(Ljava/lang/String;)Ljava/nio/ByteBuffer;",
                                                                                                        "move-result-object v0",
                                                                                                        "if-eqz v0, :override_streaming_data",
                                                                                                        $"sget-object v1, L{secondClassName};->{secondFieldName}:L{secondClassName};",
                                                                                                        $"invoke-static {{v1, v0}}, L{thirdClassName};->parseFrom(L{thirdClassName};Ljava/nio/ByteBuffer;)L{thirdClassName};",
                                                                                                        "move-result-object v0",
                                                                                                        $"check-cast v0, L{secondClassName};",
                                                                                                        $"iget-object v1, v0, {properties.Lines[k].GetInvokedSection()}",
                                                                                                        "if-eqz v1, :override_streaming_data",
                                                                                                        $"iput-object v1, p0, {properties.Lines[l].GetInvokedSection()}",
                                                                                                        ":override_streaming_data",
                                                                                                        "return-void",
                                                                                                        ".end method"
                                                                                                    ]
                                                                                                );

                                                                                                File.WriteAllLines(resourceFilePath, properties.Lines);

                                                                                                return (patchInteractions, false, smaliInfo);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"HEAD\"",
                        "\"POST\"",
                        "\"GET\"",
                        "\"media3.datasource\"",
                        ".method public constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V",
                        "Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;",
                        "iput-object",
                        "[B",
                        "iput ",
                        ":I",
                        "iput-object",
                        "Landroid/net/Uri;",
                        ".end method"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2],
                                smaliSearchKeys[3]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[4]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 116); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[5]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= properties.LinesCount.BoundedIndex(j, -10); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[6],
                                                        smaliSearchKeys[7]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l >= properties.LinesCount.BoundedIndex(k, -18); l--)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[8],
                                                                smaliSearchKeys[9]
                                                            }.All(properties.Lines[l].Contains))
                                                        {
                                                            for (int m = l; m >= properties.LinesCount.BoundedIndex(l, -7); m--)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[10],
                                                                        smaliSearchKeys[11]
                                                                    }.All(properties.Lines[m].Contains))
                                                                {
                                                                    for (int n = m; n <= properties.LinesCount; n++)
                                                                    {
                                                                        if (new[] {
                                                                                smaliSearchKeys[12]
                                                                            }.All(properties.Lines[n].Contains))
                                                                        {
                                                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(n, false);

                                                                            string byteArrayInvokedSection = properties.Lines[k].GetInvokedSection();

                                                                            properties.Lines.InsertRange(
                                                                                n - 2,

                                                                                [
                                                                                    $"iget-object v1, v0, {properties.Lines[m].GetInvokedSection()}",
                                                                                    $"iget v2, v0, {properties.Lines[l].GetInvokedSection()}",
                                                                                    $"iget-object v3, v0, {byteArrayInvokedSection}",
                                                                                    $"invoke-static {{v1, v2, v3}}, L{clientSpoofingPath};->removeVideoPlaybackPostBody(Landroid/net/Uri;I[B)[B",
                                                                                    "move-result-object v1",
                                                                                    $"iput-object v1, v0, {byteArrayInvokedSection}"
                                                                                ]
                                                                            );

                                                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                                                            return (patchInteractions, false, smaliInfo);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Background_Playback_Only()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("string", "audio_unavailable"),
                        "invoke-static",
                        ";)Z"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -114); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            properties = properties.NewSmaliTarget(properties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < properties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        properties.Lines[j].GetMethodName()
                                                    }.All(properties.NewLines[k].Contains))
                                                {
                                                    properties.NewPath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    properties.NewLines.InsertRange(
                                                        k + 2,

                                                        [
                                                            "const/4 v0, 0x1",
                                                            "return v0"
                                                        ]
                                                    );

                                                    File.WriteAllLines(properties.NewPath, properties.NewLines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Failed to start foreground priority player Service due to Android S+ restrictions\"",
                        "\"About to stop background service while in a pending state.\"",
                        ".method public final declared-synchronized",
                        "invoke-direct",
                        "-><init>",
                        "invoke-static",
                        ")Z"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j < properties.LinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 262); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3],
                                                        smaliSearchKeys[4]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l <= properties.LinesCount.BoundedIndex(k, 20); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[5],
                                                                smaliSearchKeys[6]
                                                            }.All(properties.Lines[l].Contains))
                                                        {
                                                            properties = properties.NewSmaliTarget(properties.Lines[l].GetInvokedSectionClass(1));

                                                            for (int m = 0; m < properties.NewLinesCount; m++)
                                                            {
                                                                if (new[] {
                                                                        properties.Lines[l].GetMethodName()
                                                                    }.All(properties.NewLines[m].Contains))
                                                                {
                                                                    properties.NewPath.GetSmaliFilePartialPath().LogFound(m, false);

                                                                    properties.NewLines.InsertRange(
                                                                        m + 2,

                                                                        [
                                                                            "const/4 v0, 0x1",
                                                                            "return v0"
                                                                        ]
                                                                    );

                                                                    File.WriteAllLines(properties.NewPath, properties.NewLines);

                                                                    return (patchInteractions, false, smaliInfo);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex(151635310),
                        ".method",
                        ")Z"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -26); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Shorts Player", j, false);

                                            properties.Lines.InsertRange(
                                                j + 2,

                                                [
                                                    "const/4 v0, 0x1",
                                                    "return v0"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,
                
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex(45415425),
                        ".method",
                        ")Z"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -9); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Shorts Player", j, false);

                                            properties.Lines.InsertRange(
                                                j + 2,

                                                [
                                                    "const/4 v0, 0x1",
                                                    "return v0"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Minimized_Player_Playback()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "Lcom/google/protos/youtube/api/innertube/MiniplayerRendererOuterClass;->miniplayerRenderer:",
                        "const/4",
                        SmaliUtils.GetResourceHex(0),
                        SmaliUtils.GetResourceHex(5),
                        SmaliUtils.GetResourceHex(2),
                        SmaliUtils.GetResourceHex(3),
                        ".method"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                        smaliSearchKeys[2]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 33); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[3]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 8); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[1],
                                                        smaliSearchKeys[4]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l <= properties.LinesCount.BoundedIndex(k, 20); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[1],
                                                                smaliSearchKeys[5]
                                                            }.All(properties.Lines[l].Contains))
                                                        {
                                                            for (int m = l; m >= 0; m--)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[6]
                                                                    }.All(properties.Lines[m].Contains))
                                                                {
                                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(m, false);

                                                                    properties.Lines.InsertRange(
                                                                        m + 2,

                                                                        [
                                                                            "return-void"
                                                                        ]
                                                                    );

                                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                                    return (patchInteractions, false, smaliInfo);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Nav_Create_Button_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "image_only_tab"),
                        "invoke-virtual {",
                        "/pivotbar/PivotBar;->",
                        ")Landroid/view/View",
                        "move-result-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 57); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2],
                                                smaliSearchKeys[3]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[4]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"invoke-static {{{properties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideNormalView(Landroid/view/View;)V"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Shorts_Stuff_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex(318370164),
                        SmaliUtils.GetResourceHex(16843518),
                        "and-int",
                        "invoke-static",
                        "(I)L",
                        "move-result-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -153); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= properties.LinesCount.BoundedIndex(j, -30); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3],
                                                        smaliSearchKeys[4]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l <= properties.LinesCount.BoundedIndex(k, 6); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[5]
                                                            }.All(properties.Lines[l].Contains))
                                                        {
                                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Navigation Bar Button", l, false);

                                                            properties.Lines.InsertRange(
                                                                l + 1,

                                                                [
                                                                    $"sput-object {properties.Lines[l].GetRegister(1)}, L{blockerPath};->navigationBarPivot:Ljava/lang/Enum;"
                                                                ]
                                                            );

                                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                                            return (patchInteractions, false, smaliInfo);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex(318370164),
                        SmaliUtils.GetResourceHex(16843518),
                        "invoke-virtual/range {",
                        "/pivotbar/PivotBar;->",
                        ")Landroid/view/View;",
                        "move-result-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 86); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2],
                                                smaliSearchKeys[3],
                                                smaliSearchKeys[4],
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[5]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().ToString().LogFound("Navigation Bar Button", k, false);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"invoke-static {{{properties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideShortsNavigationButton(Landroid/view/View;)V"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("id", "reel_player_badge2"),
                        "and-int/lit16",
                        "if-nez"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -8); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= properties.LinesCount.BoundedIndex(j, -10); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Short Contains Promo Banner", j, false);

                                                    properties.Lines.InsertRange(
                                                        k,

                                                        [
                                                            $"const/4 {properties.Lines[k].GetRegister(1)}, 0x0"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);

                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Failed to read user_was_in_shorts proto after successful warmup\"",
                        "Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -52); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Startup Player Disabler", j, false);

                                            properties.Lines.InsertRange(
                                                j + 2,

                                                [
                                                    "return-void"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex(45614842),
                        "invoke-interface",
                        "Lcom/google/protobuf/MessageLite;",
                        ".method",
                        "()Z"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -580); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= 0; k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3],
                                                        smaliSearchKeys[4]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Startup Player Disabler", k, false);

                                                    properties.Lines.InsertRange(
                                                        k + 2,

                                                        [
                                                            "const/4 v0, 0x0",
                                                            "return v0"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Init_Video_Panel_Disabler()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Failed to start foreground priority player Service due to Android S+ restrictions\"",
                        "\"About to stop background service while in a pending state.\"",
                        ".method public final declared-synchronized",
                        "invoke-direct",
                        "-><init>",
                        "invoke-static",
                        ")Z"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j < properties.LinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 262); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3],
                                                        smaliSearchKeys[4]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l <= properties.LinesCount.BoundedIndex(k, 20); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[5],
                                                                smaliSearchKeys[6]
                                                            }.All(properties.Lines[l].Contains))
                                                        {
                                                            properties = properties.NewSmaliTarget(properties.Lines[l].GetInvokedSectionClass(1));

                                                            for (int m = 0; m < properties.NewLinesCount; m++)
                                                            {
                                                                if (new[] {
                                                                        properties.Lines[l].GetMethodName()
                                                                    }.All(properties.NewLines[m].Contains))
                                                                {
                                                                    properties.NewPath.GetSmaliFilePartialPath().LogFound(m, false);

                                                                    properties.NewLines.InsertRange(
                                                                        m + 2,

                                                                        [
                                                                            $"invoke-static {{}}, L{blockerPath};->checkIsShortsPlayer()Z",
                                                                            "move-result v0",
                                                                            "if-nez v0, :hide_engagement_panel",
                                                                            "const/4 v0, 0x0",
                                                                            $"sput-boolean v0, L{blockerPath};->initVideoPanel:Z",
                                                                            ":hide_engagement_panel"
                                                                        ]
                                                                    );

                                                                    File.WriteAllLines(properties.NewPath, properties.NewLines);

                                                                    return (patchInteractions, false, smaliInfo);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("id", "component_long_click_listener"),
                        "Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V",
                        "invoke-direct",
                        ";-><init>(",
                        " onClick("
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -74); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= properties.LinesCount.BoundedIndex(j, -6); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2],
                                                        smaliSearchKeys[3]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    properties = properties.NewSmaliTarget(properties.Lines[k].GetInvokedSectionClass(1));

                                                    for (int l = 0; l < properties.NewLinesCount; l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[4]
                                                            }.All(properties.NewLines[l].Contains))
                                                        {
                                                            properties.NewPath.GetSmaliFilePartialPath().LogFound(l, false);

                                                            properties.NewLines.InsertRange(
                                                                l + 2,

                                                                [
                                                                    "const/4 v0, 0x1",
                                                                    $"sput-boolean v0, L{blockerPath};->initVideoPanel:Z"
                                                                ]
                                                            );

                                                            File.WriteAllLines(properties.NewPath, properties.NewLines);

                                                            return (patchInteractions, false, smaliInfo);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"engagement-panel-playlist\"",
                        "\"ALLOW_RELOAD\"",
                        " onClick("
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[2]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(i, false);

                                    properties.Lines.InsertRange(
                                        i + 2,

                                        [
                                            "const/4 v0, 0x1",
                                            $"sput-boolean v0, L{blockerPath};->initVideoPanel:Z"
                                        ]
                                    );

                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                    return (patchInteractions, false, smaliInfo);
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("string", "offline_actions_video_deleted_undo_snackbar_text"),
                        "invoke-direct",
                        ";-><init>",
                        " onClick("
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -6); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            properties = properties.NewSmaliTarget(properties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < properties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(properties.NewLines[k].Contains))
                                                {
                                                    properties.NewPath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    properties.NewLines.InsertRange(
                                                        k + 2,

                                                        [
                                                            "const/4 v0, 0x1",
                                                            $"sput-boolean v0, L{blockerPath};->initVideoPanel:Z"
                                                        ]
                                                    );

                                                    File.WriteAllLines(properties.NewPath, properties.NewLines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"EngagementPanelController: cannot show EngagementPanel before EngagementPanelController.init() has been called.\"",
                        ".locals"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines.InsertRange(
                                                j + 1,

                                                [
                                                    $"sget-boolean v0, L{blockerPath};->initVideoPanel:Z",
                                                    "if-nez v0, :hide_engagement_panel",
                                                    "const/4 v0, 0x0",
                                                    "return-object v0",
                                                    ":hide_engagement_panel"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Forced_Captions_Disabler()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"get_watch\"",
                        "invoke-direct/range",
                        "-><init>(",
                        "invoke-static",
                        ")Z",
                        "\"psps\"",
                        ".method",
                        "(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 17); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= properties.LinesCount.BoundedIndex(j, -25); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3],
                                                        smaliSearchKeys[4]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    properties = properties.NewSmaliTarget(properties.Lines[k].GetInvokedSectionClass(1));

                                                    for (int l = 0; l < properties.NewLinesCount; l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[5]
                                                            }.All(properties.NewLines[l].Contains))
                                                        {
                                                            for (int m = l; m >= 0; m--)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[6],
                                                                        smaliSearchKeys[7],
                                                                    }.All(properties.NewLines[m].Contains))
                                                                {
                                                                    properties.NewPath.GetSmaliFilePartialPath().LogFound(m, false);

                                                                    properties.NewLines.InsertRange(
                                                                        m + 2,

                                                                        [
                                                                            "move-object/from16 v0, p3",
                                                                            $"sput-object v0, L{blockerPath};->currentPlayerID:Ljava/lang/String;"
                                                                        ]
                                                                    );

                                                                    File.WriteAllLines(properties.NewPath, properties.NewLines);

                                                                    return (patchInteractions, false, smaliInfo);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"pc\"",
                        ".method",
                        "(Lcom/google/android/libraries/youtube/innertube/model/player/PlayerResponseModel;Lcom/google/android/libraries/youtube/player/model/PlaybackStartDescriptor;"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines.InsertRange(
                                                j + 2,

                                                [
                                                    $"invoke-static {{}}, L{blockerPath};->checkIsShortsPlayer()Z",
                                                    "move-result v0",
                                                    $"sput-boolean v0, L{blockerPath};->captionsButton:Z"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("string", "accessibility_captions_unavailable"),
                        ".locals"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines.InsertRange(
                                                j + 1,

                                                [
                                                    "const/4 v0, 0x1",
                                                    $"sput-boolean v0, L{blockerPath};->captionsButton:Z"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"DISABLE_CAPTIONS_OPTION\"",
                        ".method",
                        "()Z"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\SubtitleTrack.smali"))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines.InsertRange(
                                                j + 2,

                                                [
                                                    $"sget-boolean v0, L{blockerPath};->captionsButton:Z",
                                                    "if-nez v0, :disable_init_caption",
                                                    "const/4 v0, 0x1",
                                                    "return v0",
                                                    ":disable_init_caption"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> AutoPlay_Button_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("id", "autonav_preview_stub"),
                        "invoke-virtual",
                        "(Landroid/view/ViewStub;I)V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 18); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines[j] = "";

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("id", "autonav_toggle"),
                        "invoke-virtual",
                        "(Landroid/view/ViewStub;I)V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 18); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines[j] = "";

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("id", "touch_area"),
                        ".method public constructor <init>",
                        "Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k < properties.LinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Countdown Disabler", k, false);

                                                    properties.Lines.InsertRange(
                                                        k,

                                                        [
                                                            $"invoke-static {{{properties.Lines[k].GetRegister(1)}}}, L{blockerPath};->DisableAutoPlayCountdown(Landroid/view/View;)V"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Branding_Watermark_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("id", "branding_watermark"),
                        "->setImageBitmap(",
                        "invoke-static",
                        "(Landroid/view/View;Z)V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 136); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 30); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2],
                                                        smaliSearchKeys[3]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    properties.Lines.InsertRange(
                                                        k - 1,

                                                        [
                                                            $"const/4 {properties.Lines[k].GetRegister(2)}, 0x0"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Horizontal_Video_Shelf_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "->setFillViewport(Z)V",
                        "->setHorizontalScrollBarEnabled(Z)V",
                        "invoke-direct",
                        "-><init>(",
                        "Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I",
                        "(IZ)V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                            smaliSearchKeys[0],
                            smaliSearchKeys[1]
                        }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                    smaliSearchKeys[1]
                                }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 17); j++)
                                    {
                                        if (new[] {
                                            smaliSearchKeys[2],
                                            smaliSearchKeys[3]
                                        }.All(properties.Lines[j].Contains))
                                        {
                                            properties = properties.NewSmaliTarget(properties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < properties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[4]
                                                    }.All(properties.NewLines[k].Contains))
                                                {
                                                    for (int l = k; l <= properties.NewLinesCount.BoundedIndex(k, 9); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[5]
                                                            }.All(properties.NewLines[l].Contains))
                                                        {
                                                            properties.NewPath.GetSmaliFilePartialPath().LogFound(l, false);

                                                            properties.NewLines.InsertRange(
                                                                l,

                                                                [
                                                                    $"sput {properties.NewLines[l].GetRegister(2)}, L{blockerPath};->currentNavBarIndex:I"
                                                                ]
                                                            );

                                                            File.WriteAllLines(properties.NewPath, properties.NewLines);

                                                            return (patchInteractions, false, smaliInfo);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "mobile_topbar_button_item"),
                        " onClick("
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                            smaliSearchKeys[0]
                        }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                    smaliSearchKeys[1]
                                }.All(properties.Lines[i].Contains))
                                {
                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(i, false);

                                    properties.Lines.InsertRange(
                                        i + 2,

                                        [
                                            "const/4 v0, 0x0",
                                            $"sput v0, L{blockerPath};->currentNavBarIndex:I"
                                        ]
                                    );

                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                    return (patchInteractions, false, smaliInfo);
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        " onBackPressed("
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\watchwhile\\MainActivity.smali"))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(i, false);

                                    properties.Lines.InsertRange(
                                        i + 2,

                                        [
                                            "const/4 v0, 0x0",
                                            $"sput v0, L{blockerPath};->currentNavBarIndex:I"
                                        ]
                                    );

                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                    return (patchInteractions, false, smaliInfo);
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Video_End_Screen_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "endscreen_element_layout_video"),
                        "check-cast",
                        ", Landroid/widget/FrameLayout;"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 17); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines.InsertRange(
                                                j + 1,

                                                [
                                                    $"invoke-static {{{properties.Lines[j].GetRegister(1)}}}, L{blockerPath};->HideNormalView(Landroid/view/View;)V"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "endscreen_element_layout_circle"),
                        "check-cast",
                        ", Landroid/widget/FrameLayout;"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 17); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines.InsertRange(
                                                j + 1,

                                                [
                                                    $"invoke-static {{{properties.Lines[j].GetRegister(1)}}}, L{blockerPath};->HideNormalView(Landroid/view/View;)V"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "endscreen_element_layout_icon"),
                        "check-cast",
                        ", Landroid/widget/FrameLayout;"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 17); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines.InsertRange(
                                                j + 1,

                                                [
                                                    $"invoke-static {{{properties.Lines[j].GetRegister(1)}}}, L{blockerPath};->HideNormalView(Landroid/view/View;)V"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Video_Info_Cards_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "player_overlay_info_card_teaser",
                        "\"vibrator\"",
                        "->setVisibility(I)V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -79); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines.InsertRange(
                                                j - 1,

                                                [
                                                    $"const/16 {properties.Lines[j].GetRegister(2)}, 0x8"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("id", "info_cards_drawer_header"),
                        "invoke-interface",
                        "iget-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -18); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= properties.LinesCount.BoundedIndex(j, -5); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    for (int l = j; l >= k; l--)
                                                    {
                                                        properties.Lines[l] = "";
                                                    }

                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Generic_ADS_Removal_With_Fixes()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "promoted_video_item_land_stark_ad_badge"),
                        "move-result-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 20); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Promoted Video ADS", j, false);

                                            properties.Lines.InsertRange(
                                                j + 1,

                                                [
                                                    $"invoke-static {{{properties.Lines[j].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "promoted_video_item_full_bleed"),
                        "invoke-direct",
                        ";-><init>(",
                        SmaliUtils.GetResourceHex("id", "title"),
                        "move-result-object",
                        "invoke-static",
                        "Landroid/view/View;->inflate"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -18); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            properties = properties.NewSmaliTarget(properties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < properties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(properties.NewLines[k].Contains))
                                                {
                                                    for (int l = k; l >= properties.NewLinesCount.BoundedIndex(k, -5); l--)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[4]
                                                            }.All(properties.NewLines[l].Contains))
                                                        {
                                                            for (int m = l; m >= properties.NewLinesCount.BoundedIndex(l, -3); m--)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[5],
                                                                        smaliSearchKeys[6]
                                                                    }.All(properties.NewLines[m].Contains))
                                                                {
                                                                    properties.NewPath.GetSmaliFilePartialPath().LogFound("Promoted Video ADS", l, false);

                                                                    properties.NewLines.InsertRange(
                                                                        l + 1,

                                                                        [
                                                                            $"invoke-static {{{properties.NewLines[l].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                                        ]
                                                                    );

                                                                    File.WriteAllLines(properties.NewPath, properties.NewLines);

                                                                    return (patchInteractions, false, smaliInfo);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"TriggerBundle doesn\\'t have the required metadata specified by the trigger \"",
                        "\"Ping migration no associated ping bindings for activated trigger: \"",
                        "\"Tried to enter slot with no assigned slotAdapter\"",
                        "\"Trying to enter a slot when a slot of same type and physical position is already active. Its status: \"",
                        ".method",
                        "(Ljava/util/List;)V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2],
                                smaliSearchKeys[3]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[4],
                                                smaliSearchKeys[5]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Video ADS", j, false);

                                            properties.Lines.InsertRange(
                                                j + 2,

                                                [
                                                    "return-void"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"ScrollableContainerType\"",
                        "\"Failed to parse Element proto.\"",
                        ".method",
                        "const-string",
                        "\"|\"",
                        "iput-object",
                        ":Ljava/lang/String;",
                        "iput-object",
                        ":Ljava/lang/StringBuilder;",
                        "\"Element missing type extension\"",
                        "invoke-static/range",
                        "iget-object",
                        "move-result-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[9]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2],
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k < properties.LinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3],
                                                        smaliSearchKeys[4],
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l <= properties.LinesCount.BoundedIndex(k, 63); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[5],
                                                                smaliSearchKeys[6]
                                                            }.All(properties.Lines[l].Contains))
                                                        {
                                                            for (int m = l; m <= properties.LinesCount.BoundedIndex(l, 140); m++)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[7],
                                                                        smaliSearchKeys[8]
                                                                    }.All(properties.Lines[m].Contains))
                                                                {
                                                                    for (int n = m; n < properties.LinesCount; n++)
                                                                    {
                                                                        if (new[] {
                                                                                smaliSearchKeys[9]
                                                                            }.All(properties.Lines[n].Contains))
                                                                        {
                                                                            for (int o = n; o <= properties.LinesCount.BoundedIndex(n, 32); o++)
                                                                            {
                                                                                if (new[] {
                                                                                        smaliSearchKeys[10]
                                                                                    }.All(properties.Lines[o].Contains))
                                                                                {
                                                                                    for (int p = o; p <= properties.LinesCount.BoundedIndex(o, 8); p++)
                                                                                    {
                                                                                        if (new[] {
                                                                                                smaliSearchKeys[11]
                                                                                            }.All(properties.Lines[p].Contains))
                                                                                        {
                                                                                            for (int q = n; q >= properties.LinesCount.BoundedIndex(n, -12); q--)
                                                                                            {
                                                                                                if (new[] {
                                                                                                        smaliSearchKeys[12]
                                                                                                    }.All(properties.Lines[q].Contains))
                                                                                                {
                                                                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Litho Tree", q, false);

                                                                                                    string throwExceptionRegister = properties.Lines[n].GetRegister(1);

                                                                                                    properties.Lines.InsertRange(
                                                                                                        q + 1,

                                                                                                        [
                                                                                                            $"if-nez {properties.Lines[q].GetRegister(1)}, :litho_tree",
                                                                                                            $"move-object/from16 {throwExceptionRegister}, p1",
                                                                                                            $"invoke-static {{{throwExceptionRegister}}}, {properties.Lines[o].GetInvokedSection()}",
                                                                                                            $"move-result-object {throwExceptionRegister}",
                                                                                                            $"iget-object {throwExceptionRegister}, {throwExceptionRegister}, {properties.Lines[p].GetInvokedSection()}",
                                                                                                            $"return-object {throwExceptionRegister}",
                                                                                                            ":litho_tree"
                                                                                                        ]
                                                                                                    );

                                                                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Litho Component", m, false);

                                                                                                    string stringBuilderFirstRegister = properties.Lines[m].GetRegister(1);
                                                                                                    string stringBuilderSecondRegister = properties.Lines[m].GetRegister(2);

                                                                                                    properties.Lines.InsertRange(
                                                                                                        m + 1,

                                                                                                        [
                                                                                                            $"invoke-static {{{stringBuilderFirstRegister}, {properties.Lines[l].GetRegister(1)}}}, L{blockerPath};->HideLithoView(Ljava/lang/StringBuilder;Ljava/lang/String;)Z",
                                                                                                            $"move-result {stringBuilderFirstRegister}",
                                                                                                            $"if-eqz {stringBuilderFirstRegister}, :litho_component",
                                                                                                            $"const/4 {stringBuilderSecondRegister}, 0x0",
                                                                                                            $"return-object {stringBuilderSecondRegister}",
                                                                                                            ":litho_component"
                                                                                                        ]
                                                                                                    );

                                                                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                                                                    return (patchInteractions, false, smaliInfo);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "canScrollVertically",
                        "move-result "
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\SwipeRefreshLayout.smali"))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 6); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Swipe to Refresh Fix", j, false);

                                            properties.Lines.InsertRange(
                                                j + 1,

                                                [
                                                    $"const/4 {properties.Lines[j].GetRegister(1)}, 0x0"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"scroll_position\"",
                        ".method",
                        "()V",
                        "}, Landroid/support/v7/widget/RecyclerView;->"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (properties.Full.ReferenceEntriesCount(smaliSearchKeys[0]).Equals(2))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                        smaliSearchKeys[2]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 27); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[3]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Back to Exit Fix", j, false);

                                            properties.Lines.InsertRange(
                                                j,

                                                [
                                                    "const/4 v1, 0x0",
                                                    $"sput-boolean v1, L{blockerPath};->isTopView:Z"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "browse_fragment_tabs"),
                        "new-instance",
                        "}, Landroid/support/v7/widget/RecyclerView;->",
                        ":cond_"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(j, 86); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            properties = properties.NewSmaliTarget(properties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < properties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(properties.NewLines[k].Contains))
                                                {
                                                    for (int l = k; l <= properties.NewLinesCount.BoundedIndex(l, 5); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[3]
                                                            }.All(properties.NewLines[l].Contains))
                                                        {
                                                            properties.NewPath.GetSmaliFilePartialPath().LogFound("Back to Exit Fix", l, false);

                                                            properties.NewLines.InsertRange(
                                                                l + 1,

                                                                [
                                                                    "const/4 v2, 0x1",
                                                                    $"sput-boolean v2, L{blockerPath};->isTopView:Z"
                                                                ]
                                                            );

                                                            File.WriteAllLines(properties.NewPath, properties.NewLines);

                                                            return (patchInteractions, false, smaliInfo);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "onBackPressed()V",
                        "return-void"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\watchwhile\\MainActivity.smali"))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 32); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Back to Exit Fix", j, false);

                                            properties.Lines.InsertRange(
                                                j,

                                                [
                                                    $"invoke-static {{p0}}, L{blockerPath};->CloseActivityOnBackPressed(Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;)V"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Breaking_News_Shelf_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "horizontal_card_list_modern_type"),
                        "Landroid/view/LayoutInflater;->inflate",
                        "check-cast"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 10); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 9); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"invoke-static {{{properties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Albums_Shelf_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "album_card"),
                        "Landroid/view/LayoutInflater;->inflate",
                        "check-cast"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 9); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 9); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"invoke-static {{{properties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Load_More_Video_Button_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "expand_button_down"),
                        "Landroid/view/View;->inflate",
                        "move-result-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 9); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"invoke-static {{{properties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Crowdfunding_Box_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "donation_companion_modern_type"),
                        "invoke-virtual",
                        ", Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;",
                        "move-result-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 13); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"invoke-static {{{properties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Original_Videos_Get_Premium_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "onMeasure(II)V",
                        "return-void",
                        "invoke-virtual"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (resourceFilePath.EndsWith("\\CompactYpcOfferModuleView.smali"))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j < properties.LinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= properties.LinesCount.BoundedIndex(j, -6); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Under Video Box", k, false);

                                                    properties.Lines.InsertRange(
                                                        k,

                                                        [
                                                            $"const/4 {properties.Lines[k].GetRegister(2)}, 0x0",
                                                            $"const/4 {properties.Lines[k].GetRegister(3)}, 0x0"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Fullscreen_End_Video_Overlay_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("dimen", "app_related_end_screen_item_padding"),
                        "invoke-virtual",
                        "(IZI)V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = properties.LinesCount - 1; i >= properties.LinesCount.BoundedIndex(i, -10); i--)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                        smaliSearchKeys[2]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    properties = properties.NewSmaliTarget(properties.Lines[i].GetInvokedSectionClass(1));

                                    for (int j = 0; j < properties.NewLinesCount; j++)
                                    {
                                        if (new[] {
                                                properties.Lines[i].GetMethodName()
                                            }.All(properties.NewLines[j].Contains))
                                        {
                                            properties.NewPath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.NewLines.InsertRange(
                                                j + 2,

                                                [
                                                    "return-void"
                                                ]
                                            );

                                            File.WriteAllLines(properties.NewPath, properties.NewLines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> End_Video_Suggestions_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "size_adjustable_lite_autonav_overlay"),
                        SmaliUtils.GetResourceHex("id", "cancel_button"),
                        "invoke-virtual",
                        ", Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -6); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2],
                                                smaliSearchKeys[3]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines.InsertRange(
                                                j + 1,

                                                [
                                                    $"invoke-static {{{properties.Lines[j].GetRegister(1)}}}, L{blockerPath};->HideEndSuggestedVideoOverlay(Landroid/widget/ImageView;)V"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Next_In_Queue_Flyout_Button_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("layout", "live_chat_item_context_menu_item"),
                        "invoke-static",
                        ";)Ljava/lang/CharSequence;",
                        "and-int",
                        SmaliUtils.GetResourceHex(8),
                        "return-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 22); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            properties = properties.NewSmaliTarget(properties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < properties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        properties.Lines[j].GetMethodName()
                                                    }.All(properties.NewLines[k].Contains))
                                                {
                                                    for (int l = k; l <= properties.NewLinesCount.BoundedIndex(k, 296); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[3],
                                                                smaliSearchKeys[4]
                                                            }.All(properties.NewLines[l].Contains))
                                                        {
                                                            for (int m = l; m >= properties.NewLinesCount.BoundedIndex(l, -5); m--)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[5]
                                                                    }.All(properties.NewLines[m].Contains))
                                                                {
                                                                    properties.NewPath.GetSmaliFilePartialPath().LogFound(m, false);

                                                                    properties.NewLines.InsertRange(
                                                                        m,

                                                                        [
                                                                            $"const/4 {properties.NewLines[m].GetRegister(1)}, 0x0"
                                                                        ]
                                                                    );

                                                                    File.WriteAllLines(properties.NewPath, properties.NewLines);

                                                                    return (patchInteractions, false, smaliInfo);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Video_Resolution_Flyout_Fast_Access()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"LithoRVSLCBinder\"",
                        ".method public constructor <init>",
                        "move-object/from16",
                        ", p2",
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 12); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2],
                                                smaliSearchKeys[3]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound(j, false);

                                            properties.Lines.InsertRange(
                                                j + 1,

                                                [
                                                    $"invoke-static {{{properties.Lines[j].GetRegister(1)}}}, LuTools/uBlocker;->OpenVideoResolutionFlyout(Landroid/support/v7/widget/RecyclerView;)V"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("string", "quality_ds_res"),
                        "invoke-virtual {",
                        ";->ordinal()I",
                        "move-result "
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -35); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 5); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"const/4 {properties.Lines[k].GetRegister(1)}, 0x3"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Cairo_UI()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex(45532100),
                        ".method",
                        ")Z"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -9); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Settings Page Enabler", j, false);

                                            properties.Lines.InsertRange(
                                                j + 2,

                                                [
                                                    "const/4 v0, 0x1",
                                                    "return v0"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex(45617850),
                        ".method",
                        ")Z"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -9); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Video Seekbar Enabler", j, false);

                                            properties.Lines.InsertRange(
                                                j + 2,

                                                [
                                                    "const/4 v0, 0x1",
                                                    "return v0"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,
                
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex(45630927),
                        "invoke-virtual",
                        ")Z",
                        "move-result "
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 6); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Navigation Bar Disabler", j, false);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"const/4 {properties.Lines[k].GetRegister(1)}, 0x0"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex(45623000),
                        SmaliUtils.GetResourceHex(45623273),
                        ".method",
                        "<init>",
                        "iput-boolean",
                        ".end method",
                        "iput ",
                        ":I",
                        ")Z"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            static string[] getPatch(int patchType, string register, int value) {
                                return [
                                            $"const/4 {register}, 0x{value}",
                                            patchType.Equals(1) ? $"return {register}" : ""
                                        ];
                            };

                            if (patchInteractions.Equals(0)) {
                                for (int i = 0; i < properties.LinesCount; i++)
                                {
                                    if (new[] {
                                            smaliSearchKeys[2],
                                            smaliSearchKeys[3]
                                        }.All(properties.Lines[i].Contains))
                                    {
                                        for (int j = i; j < properties.LinesCount; j++)
                                        {
                                            if (new[] {
                                                    smaliSearchKeys[4]
                                                }.All(properties.Lines[j].Contains))
                                            {
                                                resourceFilePath.GetSmaliFilePartialPath().LogFound("Miniplayer Disabler", j, false);

                                                string[] patch = getPatch(0, properties.Lines[j].GetRegister(1), 0);

                                                properties.Lines.InsertRange(
                                                    j - 1,

                                                    patch
                                                );

                                                properties.LinesCount += patch.Length;

                                                j += 2;
                                            }

                                            if (new[] {
                                                    smaliSearchKeys[5]
                                                }.All(properties.Lines[j].Contains))
                                            {
                                                patchInteractions += 1;

                                                break;
                                            }
                                        }
                                    }

                                    if (patchInteractions > 0)
                                    {
                                        break;
                                    }
                                }
                            }

                            if (patchInteractions.Equals(1)) {
                                for (int i = 0; i < properties.LinesCount; i++)
                                {
                                    if (new[] {
                                            smaliSearchKeys[0]
                                        }.All(properties.Lines[i].Contains))
                                    {
                                        for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 77); j++)
                                        {
                                            if (new[] {
                                                    smaliSearchKeys[6],
                                                    smaliSearchKeys[7]
                                                }.All(properties.Lines[j].Contains))
                                            {
                                                resourceFilePath.GetSmaliFilePartialPath().LogFound("Miniplayer Disabler", j, false);

                                                string[] patch = getPatch(0, properties.Lines[j].GetRegister(1), 0 /* Miniplayer Type */);

                                                properties.Lines.InsertRange(
                                                    j - 1,

                                                    patch
                                                );

                                                patchInteractions += 1;

                                                properties.LinesCount += patch.Length;

                                                break;
                                            }
                                        }
                                    }

                                    if (patchInteractions > 1)
                                    {
                                        break;
                                    }
                                }
                            }

                            if (patchInteractions.Equals(2)) {
                                for (int i = 0; i < properties.LinesCount; i++)
                                {
                                    if (new[] {
                                            smaliSearchKeys[2],
                                            smaliSearchKeys[8]
                                        }.All(properties.Lines[i].Contains))
                                    {
                                        resourceFilePath.GetSmaliFilePartialPath().LogFound("Miniplayer Disabler", i, false);

                                        string[] patch = getPatch(1, "v0", 0);

                                        properties.Lines.InsertRange(
                                            i + 2,

                                            patch
                                        );

                                        properties.LinesCount += patch.Length;
                                    }

                                    if (i.Equals(properties.LinesCount - 1))
                                    {
                                        File.WriteAllLines(resourceFilePath, properties.Lines);

                                        return (patchInteractions, false, smaliInfo);
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> AdBlock_Prevents_History_Fix()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ".method",
                        "compareTo",
                        "Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;",
                        "move-result-object"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\TrackingUrlModel.smali"))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0],
                                        smaliSearchKeys[1]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= properties.LinesCount.BoundedIndex(i, -12); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= properties.LinesCount.BoundedIndex(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound(k, false);

                                                    string trackingUrlRegister = properties.Lines[k].GetRegister(1);

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        [
                                                            $"invoke-static {{{trackingUrlRegister}}}, L{blockerPath};->overrideTrackingUrl(Landroid/net/Uri;)Landroid/net/Uri;",
                                                            $"move-result-object {trackingUrlRegister}"
                                                        ]
                                                    );

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> Amoled_Color_Palette()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"yt_black0\"",
                        "\"yt_black1\"",
                        "\"yt_black1_opacity95\"",
                        "\"yt_black1_opacity98\"",
                        "\"yt_black2\"",
                        "\"yt_black3\"",
                        "\"yt_black4\"",
                        "\"yt_status_bar_background_dark\"",
                        "\"material_grey_850\""
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (resourceFilePath.EndsWith("\\values\\colors.xml"))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Global Colors Attributes", false);

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                for (int j = 0; j < smaliSearchKeys.Length; j++)
                                {
                                    if (new[] {
                                            smaliSearchKeys[j]
                                        }.All(properties.Lines[i].Contains))
                                    {
                                        properties.Lines[i] = $"<color name={smaliSearchKeys[j]}>@android:color/black</color>";
                                    }
                                }
                            }

                            File.WriteAllLines(resourceFilePath, properties.Lines);

                            return (patchInteractions, false, smaliInfo);
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex(16842919),
                        SmaliUtils.GetResourceHex(16843518),
                        ".method",
                        "onBoundsChange(Landroid/graphics/Rect;)V",
                        "invoke-virtual {",
                        "Landroid/graphics/Paint;->setColor(I)V"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[2],
                                        smaliSearchKeys[3]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= properties.LinesCount.BoundedIndex(i, 444); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[4],
                                                smaliSearchKeys[5]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("Litho UI Colors", j, false);

                                            properties.Lines.InsertRange(
                                                j - 1,

                                                [
                                                    $"invoke-static {{p1}}, L{blockerPath};->ChangeLithoUIColor(I)I",
                                                    "move-result p1"
                                                ]
                                            );

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("string", "app_theme_appearance_system"),
                        SmaliUtils.GetResourceHex("string", "app_theme_appearance_light"),
                        SmaliUtils.GetResourceHex("string", "app_theme_appearance_dark"),
                        "return-object",
                        ".end method"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    for (int j = i; j < properties.LinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[3]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            string[] patch = [
                                                                $"invoke-static {{v0}}, L{blockerPath};->GetSystemTheme(Ljava/lang/Enum;)V"
                                                            ];

                                            properties.Lines.InsertRange(
                                                j,

                                                patch
                                            );

                                            j += patch.Length + 1;
                                        }

                                        if (new[] {
                                                smaliSearchKeys[4]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            resourceFilePath.GetSmaliFilePartialPath().LogFound("System Theme Setter", j, false);

                                            File.WriteAllLines(resourceFilePath, properties.Lines);

                                            return (patchInteractions, false, smaliInfo);
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ", Landroid/view/ContextThemeWrapper;",
                        ".method",
                        "(Landroid/app/Activity;",
                        ";)Landroid/content/Context;",
                        "new-instance",
                        "const ",
                        ".end method"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(properties.Full.Contains))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                        smaliSearchKeys[2],
                                        smaliSearchKeys[3]
                                    }.All(properties.Lines[i].Contains) &&
                                    properties.Lines[i].MethodParametersCount().Equals(2))
                                {
                                    for (int j = i; j < properties.LinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[4],
                                                smaliSearchKeys[0]
                                            }.All(properties.Lines[j].Contains))
                                        {
                                            for (int k = j; k < properties.LinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[5]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    patchInteractions = patchInteractions.Equals(0) ? 1 : 0;

                                                    string[] patch = [
                                                        $"const/4 v1, 0x{patchInteractions}",
                                                        $"sput-boolean v1, L{blockerPath};->isDarkTheme:Z"
                                                    ];

                                                    properties.Lines.InsertRange(
                                                        k + 1,

                                                        patch
                                                    );

                                                    properties.LinesCount += patch.Length;
                                                }

                                                if (new[] {
                                                        smaliSearchKeys[6]
                                                    }.All(properties.Lines[k].Contains))
                                                {
                                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("App Theme Setter", k, false);

                                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                                    return (patchInteractions, false, smaliInfo);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "<background android:drawable=\"@mipmap/adaptiveproduct_youtube_background_color_108\" />"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (resourceFilePath.EndsWith("ic_launcher.xml"))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Custom Launcher Icon", i, false);

                                    properties.Lines[i] = "";

                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                    return (patchInteractions, false, smaliInfo);
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "<background android:drawable=\"@mipmap/adaptiveproduct_youtube_background_color_108\" />"
                    ],

                    true,

                    (
                        resourceFilePath,
                        lastResourceFilePath,
                        properties,
                        smaliSearchKeys,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (resourceFilePath.EndsWith("ic_launcher_round.xml"))
                        {
                            properties.Lines = new(File.ReadAllLines(resourceFilePath));
                            properties.LinesCount = properties.Lines.Count;

                            for (int i = 0; i < properties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(properties.Lines[i].Contains))
                                {
                                    resourceFilePath.GetSmaliFilePartialPath().LogFound("Custom Launcher Icon", i, false);

                                    properties.Lines[i] = "";

                                    File.WriteAllLines(resourceFilePath, properties.Lines);

                                    return (patchInteractions, false, smaliInfo);
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }
    }
}