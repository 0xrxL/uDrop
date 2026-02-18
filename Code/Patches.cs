namespace uDrop.Code
{
    public class YouTube
    {
        private static readonly SmaliUtils.StringTransform playServicesDomain =
            new("com.google", "", "app.revanced");
        private static readonly string uToolsRootFolder =
            "uTools";
        private static readonly string uBlockerPath =
            $"{uToolsRootFolder}/uBlocker";
        private static readonly string uUtilsPath =
            $"{uToolsRootFolder}/uUtils";
        private static readonly string uSpoofingPath =
            $"{uToolsRootFolder}/uStreamSpoofing/uSpoofing";
        private static readonly string uStreamingDataRequestPath =
            $"{uToolsRootFolder}/uStreamSpoofing/uStreamingDataRequest";
        
        private static List<(bool, bool)> Debug_Patch()
        {
            return [
                
            ];
        }

        private static List<(bool, bool)> Debug()
        {
            return [
                new SmaliUtils.SubPatchModule<(bool, string, int)[]>(
                    [
                        (false, "invoke-virtual Landroid/content/Intent;", 1),
                        (false, ".method )Landroid/content/Intent;", 2),
                        (false, "invoke-virtual ;->finish()V", 1),
                        (false, "invoke-virtual Landroid/view/MotionEvent;->getAction()I", 1),
                        (false, ".method onDoubleTap(", 2),
                        (false, ".method onDoubleTapEvent(", 2),
                        (true, ".method onClick(", 2),
                        (false, ".method onCreate(", 2),
                        (false, ".method onCreateLayout(", 2),
                        (false, ".method onItemClick(", 2),
                        (false, ".method onBackPressed(", 2),
                        (false, ".method getOnBackPressedDispatcher(", 2),
                        (true, ".method onTouch(", 2),
                        (true, ".method onTouchEvent(", 2)
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        foreach ((bool, string, int) xmlSmaliSearchKey in targetSearchTerms)
                        {
                            if (xmlSmaliSearchKey.Item1)
                            {
                                if (new[] {
                                        xmlSmaliSearchKey.Item2
                                    }.All(xmlSmaliProperties.Full.PartialsContains))
                                {
                                    xmlSmaliProperties.ReadXMLSmaliLines();

                                    for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                                    {
                                        if (!xmlSmaliProperties.Lines[i].PartialsContains("abstract") &&
                                            xmlSmaliProperties.Lines[i].PartialsContains(xmlSmaliSearchKey.Item2))
                                        {
                                            (int, string[]) patch = (
                                                i + xmlSmaliSearchKey.Item3,

                                                [
                                                    //invoke-static {}, LuTools/uDebug;->PrintMethod()V
                                                    //invoke-static {}, LuTools/uDebug;->PrintStackTrace()V
                                                    //invoke-static {v1}, LuTools/uDebug;->PrintStringWithMethod(Ljava/lang/String;)V
                                                    //invoke-static {v1}, LuTools/uDebug;->PrintIntWithMethod(I)V
                                                    //invoke-static {v1}, LuTools/uDebug;->PrintLongWithMethod(J)V
                                                    //invoke-static {v1}, LuTools/uDebug;->PrintByteByfferWithMethod(Ljava/nio/ByteBuffer;)V
                                                    //invoke-static {v1}, LuTools/uBlocker;->HideView(Landroid/view/View;)V

                                                    "invoke-static {}, LuTools/uDebug;->PrintMethod()V"
                                                ]
                                            );

                                            codeInject.Lines(
                                                [
                                                    ("",

                                                    patch.Item1,

                                                    patch.Item2)
                                                ]
                                            );

                                            i += patch.Item1.Equals(i) ? patch.Item2.Length + 1 : 0;
                                        }
                                    }

                                    codeInject.Write();

                                    interactionsCount++;
                                }
                            }
                        }

                        if (interactionsCount > 0 && xmlSmaliProperties.Path.Equals(xmlSmaliProperties.LastOfPath))
                        {
                            return (0, false, infoForNextSubPatch);
                        }
                        else
                        {
                            return (interactionsCount, true, infoForNextSubPatch);
                        }
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Non_Root()
        {
            return [
                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new($"\"{playServicesDomain.Original}\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.c2dm.intent.RECEIVE\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.c2dm.intent.REGISTER\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.c2dm.intent.REGISTRATION\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.c2dm.permission.RECEIVE\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.c2dm.permission.SEND\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.gms.accountsettings.action.VIEW_SETTINGS\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.gms.auth.account.authapi.START\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.gms.auth.accounts\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.gms.auth.service.START\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.gms.signin.service.START\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.gsf.action.GET_GLS\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"content://{playServicesDomain.Original}.android.gsf.gservices\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"content://{playServicesDomain.Original}.android.gsf.gservices/prefix\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.gsf.login\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.android.providers.gsf.permission.READ_GSERVICES\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"{playServicesDomain.Original}.iid.TOKEN_REQUEST\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"\"content://{playServicesDomain.Original}.settings/partner\"", playServicesDomain.Original, playServicesDomain.Transformed),
                        new($"android:name=\"{playServicesDomain.Original}.android.youtube.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION\"", playServicesDomain.Original, Main_Class.apkInfo.Item3.ToLower()),
                        new($"android:name=\"{playServicesDomain.Original}.android.youtube.permission.C2D_MESSAGE\"", playServicesDomain.Original, Main_Class.apkInfo.Item3.ToLower()),
                        new($"android:authorities=\"{playServicesDomain.Original}.android.youtube", playServicesDomain.Original, Main_Class.apkInfo.Item3.ToLower()),
                        new($"\"{playServicesDomain.Original}.android.c2dm", playServicesDomain.Original, Main_Class.apkInfo.Item3.ToLower())
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (!xmlSmaliProperties.Path.Contains(uToolsRootFolder) &&
                            (xmlSmaliProperties.Path.EndsWith(".smali") ||
                            xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/AndroidManifest.xml"))))
                        {
                            if (targetSearchTerms.Any(st => xmlSmaliProperties.Full.PartialsContains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("Stock To MicroG Classes Rename",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();

                                interactionsCount++;
                            }
                        }

                        if (interactionsCount > 0 && xmlSmaliProperties.Path.Equals(xmlSmaliProperties.LastOfPath))
                        {
                            return (0, false, infoForNextSubPatch);
                        }
                        else
                        {
                            return (interactionsCount, true, infoForNextSubPatch);
                        }
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new($"\"{playServicesDomain.Original}.android.gms\"", playServicesDomain.Original, playServicesDomain.Transformed),

                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (!xmlSmaliProperties.Path.Contains(uToolsRootFolder) &&
                            xmlSmaliProperties.Path.EndsWith(".smali"))
                        {
                            if (xmlSmaliProperties.Full.PartialsContains(targetSearchTerms[0].Original) &&
                                !new[] {
                                    "\"com.google.android.gms.cast",
                                    "\"com.google.android.gms.fonts",
                                    "\"com.google.android.gms.googlehelp",
                                    "\"com.google.android.gms.ads",
                                    "\"com.google.android.gms.chimera",
                                    "\"com.google.android.gms.dynamite",
                                    "\"com.google.android.gms.measurement",
                                    "\"com.google.android.gms.vision",
                                    "\"com.google.android.gms.wallet",
                                    "\"com.google.android.apps.youtube.vr",
                                    "\"com.google.android.gms.phenotype",
                                    "\"com.google.android.gms.wallet.firstparty"
                                }.All(xmlSmaliProperties.Full.PartialsContains))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("Stock To MicroG Classes Rename",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();

                                interactionsCount++;
                            }
                        }

                        if (interactionsCount > 0 && xmlSmaliProperties.Path.Equals(xmlSmaliProperties.LastOfPath))
                        {
                            return (0, false, infoForNextSubPatch);
                        }
                        else
                        {
                            return (interactionsCount, true, infoForNextSubPatch);
                        }
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new($"package=\"{playServicesDomain.Original}.android.youtube", playServicesDomain.Original, Main_Class.apkInfo.Item3.ToLower())
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/AndroidManifest.xml")))
                        {
                            if (targetSearchTerms.Any(st => xmlSmaliProperties.Full.PartialsContains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("App Package Rename",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();

                                return (interactionsCount, false, infoForNextSubPatch);
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("android:label=\"@string/application_name\"", "@string/application_name", Main_Class.apkInfo.Item3)
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/AndroidManifest.xml")))
                        {
                            if (targetSearchTerms.Any(st => xmlSmaliProperties.Full.PartialsContains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("App Label Rename",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();
                            }

                            return (interactionsCount, false, infoForNextSubPatch);
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "</manifest>",
                        "</application>"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/AndroidManifest.xml")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -3); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("MicroG Binding Signature",

                                                    j,

                                                    [
                                                        $"<meta-data android:name=\"{playServicesDomain.Transformed}.android.gms.SPOOFED_PACKAGE_NAME\" android:value=\"{playServicesDomain.Original}.android.youtube\"/>",
                                                        $"<meta-data android:name=\"{playServicesDomain.Transformed}.android.gms.SPOOFED_PACKAGE_SIGNATURE\" android:value=\"24bb24c05e47e0aefa68a58a766179d9b613a600\"/>",
                                                        $"<meta-data android:name=\"{playServicesDomain.Transformed}.MICROG_PACKAGE_NAME\" android:value=\"{playServicesDomain.Transformed}.android.gms\"/>"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("</queries>", "", $"<package android:name=\"{playServicesDomain.Transformed}.android.gms\"/>\n            </queries>")
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/AndroidManifest.xml")))
                        {
                            if (targetSearchTerms.Any(st => xmlSmaliProperties.Full.PartialsContains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("MicroG Binding Signature",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();

                                return (interactionsCount, false, infoForNextSubPatch);
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ".method onCreate("
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/MainActivity.smali")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("MicroG Package Detection Check",

                                            i + 2,

                                            [
                                                $"invoke-static/range {{p0 .. p0}}, L{uBlockerPath};->CheckMicroGPackage(Landroid/app/Activity;)V"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.\"",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Google Signature Check Disabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"GooglePlayServices not available due to error \"",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Google Signature Check Disabler",

                                                    j + 2,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"APK has more than one signature.\"",
                        "\"SHA-256\"",
                        "\"Failed to verify signatures\"",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Droidguard Signature Check Disabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"robolectric\""
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    codeInject.LinesReplace(
                                        [
                                            ("Robolectric Fingerprint Override",

                                            i,

                                            [
                                                $"sget-object {xmlSmaliProperties.Lines[i].GetRegister(1)}, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;"
                                            ])
                                        ]
                                    );
                                }
                            }

                            codeInject.Write();

                            interactionsCount++;
                        }

                        if (interactionsCount > 0 && xmlSmaliProperties.Path.Equals(xmlSmaliProperties.LastOfPath))
                        {
                            return (0, false, infoForNextSubPatch);
                        }
                        else
                        {
                            return (interactionsCount, true, infoForNextSubPatch);
                        }
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"GmsClient\"",
                        "\"Don\\'t know how to handle message: \"",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("APK Verification Signature Exception",

                                                    j + 2,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"DynamiteModule\"",
                        "\"Invalid GmsCore APK, remote loading disabled.\"",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("GMSCore Invalid APK Exception",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"com.google.android.gms.ads.identifier.service.START\"",
                        "\"Remote exception\"",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            string methodReturnClassName = xmlSmaliProperties.Lines[j].GetMethodReturnClassName();

                                            codeInject.Lines(
                                                [
                                                    ("Advertising ID Exception",

                                                    j + 2,

                                                    [
                                                        $"new-instance v0, {methodReturnClassName}",
                                                        "const-string v1, \"\"",
                                                        "const/16 v2, 0x0",
                                                        $"invoke-direct {{v0, v1, v2}}, {methodReturnClassName}-><init>(Ljava/lang/String;Z)V",
                                                        "return-object v0"
                                                    ])
                                                ]
                                            ).Write();

                                            interactionsCount++;

                                            goto patch_end;
                                        }
                                    }
                                }
                            }
                        }


                        patch_end:
                        if (interactionsCount > 0 && xmlSmaliProperties.Path.Equals(xmlSmaliProperties.LastOfPath))
                        {
                            return (0, false, infoForNextSubPatch);
                        }
                        else
                        {
                            return (interactionsCount, true, infoForNextSubPatch);
                        }
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45532100),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("New Settings UI Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("        <Preference android:icon=\"@drawable/yt_outline_gear_vd_theme_24\"", "", $"<Preference android:persistent=\"false\" android:layout=\"@layout/preference_with_icon\" android:title=\"MicroG\" android:key=\"@string/general_key\" app:iconSpaceReserved=\"true\"> <intent android:targetPackage=\"{playServicesDomain.Transformed}.android.gms\" android:targetClass=\"org.microg.gms.ui.SettingsActivity\"/> </Preference>\n        <Preference android:icon=\"@drawable/yt_outline_gear_vd_theme_24\"")
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/settings_fragment_cairo.xml")))
                        {
                            if (targetSearchTerms.Any(st => xmlSmaliProperties.Full.PartialsContains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("MicroG Settings Button",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();

                                return (interactionsCount, false, infoForNextSubPatch);
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Error fetching CastContext.\"",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Cast Service Disabler",

                                                    j + 2,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45690090),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("New Cast UI Logic Flag Disabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45690091),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("New Cast UI Logic Flag Disabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ".method setVisibility(I)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/MediaRouteButton.smali")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("Cast Button Removal",

                                            i + 2,

                                            [
                                                "const/16 p1, 0x8"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"(Linux; U; Android \"",
                        "invoke-virtual Landroid/content/Context;->getPackageName()Ljava/lang/String;",
                        "move-result-object"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -28); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("App Package Name Override",

                                                            k + 1,

                                                            [
                                                                $"const-string {xmlSmaliProperties.Lines[k].GetRegister(1)}, \"com.google.android.youtube\""
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45665455),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Playback Stream Obfuscation Flag Disabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45645570),
                        "move-result "
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 11); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Playback Stream Obfuscation Flag Disabler",

                                                    j + 1,

                                                    [
                                                        $"const/16 {xmlSmaliProperties.Lines[j].GetRegister(1)}, 0x0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }
                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45640404),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -13); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Playback Stream Obfuscation Flag Disabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45665455),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Restart LiveStream Flag Disabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45355374),
                        "move-result "
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 11); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Restart LiveStream Flag Disabler",

                                                    j + 1,

                                                    [
                                                        $"const/16 {xmlSmaliProperties.Lines[j].GetRegister(1)}, 0x0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }
                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"youtubei/v1\"",
                        "\"key\"",
                        "\"asig\"",
                        "invoke-virtual Landroid/net/Uri$Builder;->build()Landroid/net/Uri;",
                        "move-result-object"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 189); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[4]))
                                                {
                                                    string buildURIRegister = xmlSmaliProperties.Lines[k].GetRegister(1);

                                                    codeInject.Lines(
                                                        [
                                                            ("Playback Stream Spoofing",

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{buildURIRegister}}}, L{uSpoofingPath};->BlockGetWatchRequest(Landroid/net/Uri;)Landroid/net/Uri;",
                                                                $"move-result-object {buildURIRegister}"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"media3.datasource.cronet\"",
                        "\"Range\"",
                        ".method protected )Lorg/chromium/net/UrlRequest$Builder;",
                        "invoke-virtual Landroid/net/Uri;->toString()Ljava/lang/String;",
                        "move-result-object"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 13); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[4]))
                                                {
                                                    string toStringURIRegister = xmlSmaliProperties.Lines[k].GetRegister(1);

                                                    codeInject.Lines(
                                                        [
                                                            ("Playback Stream Spoofing",

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{toStringURIRegister}}}, L{uSpoofingPath};->BlockInitPlaybackRequest(Ljava/lang/String;)Ljava/lang/String;",
                                                                $"move-result-object {toStringURIRegister}"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Content-Type\"",
                        "\"application/x-protobuf\"",
                        ".method )Lorg/chromium/net/UrlRequest;",
                        ".method public static )Lorg/chromium/net/UrlRequest$Builder;",
                        "invoke-virtual Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder",
                        "new-instance"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[3]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 46); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[4]))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -10); k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[5]))
                                                {
                                                    string buildRequestFirstRegister = xmlSmaliProperties.Lines[j].GetRegister(2);
                                                    string buildRequestSecondRegister = xmlSmaliProperties.Lines[j].GetRegister(3);

                                                    codeInject.Lines(
                                                        [
                                                            ("Playback Stream Spoofing",

                                                            k,

                                                            [
                                                                $"invoke-static {{{buildRequestFirstRegister}}}, L{uSpoofingPath};->BlockGetAttRequest(Ljava/lang/String;)Ljava/lang/String;",
                                                                $"move-result-object {buildRequestFirstRegister}",
                                                                $"move-object/from16 {buildRequestSecondRegister}, p1",
                                                                $"invoke-static {{{buildRequestFirstRegister}, {buildRequestSecondRegister}}}, L{uSpoofingPath};->FetchStreams(Ljava/lang/String;Ljava/util/Map;)V"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Invalid playback type; streaming data is not playable\"",
                        ".method public constructor <init>",
                        "const/4",
                        "iget-object",
                        "iput-object",
                        "iget-object",
                        "iput-object",
                        ".field public :Ljava/lang/String;",
                        ".field public",
                        "-$$Nest$smcheckIsLite",
                        ".end method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 42); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 16); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 18); l++)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[4]))
                                                        {
                                                            for (int m = l; m <= scaleIndex.Lines(l, 5); m++)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[5]))
                                                                {
                                                                    for (int n = m; n <= scaleIndex.Lines(m, 14); n++)
                                                                    {
                                                                        if (xmlSmaliProperties.Lines[n].PartialsContains(targetSearchTerms[6]))
                                                                        {
                                                                            string firstClassName = xmlSmaliProperties.Lines[m].GetClassNamesFromMethodDescriptor(2);
                                                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(firstClassName);
                                                                            string firstFieldName = "";
                                                                            for (int o = 0; o < xmlSmaliProperties.ProxiedLinesCount; o++)
                                                                            {
                                                                                if (xmlSmaliProperties.ProxiedLines[o].PartialsContains(targetSearchTerms[7]))
                                                                                {
                                                                                    firstFieldName = xmlSmaliProperties.ProxiedLines[o].GetFieldName(false);

                                                                                    break;
                                                                                }
                                                                            }

                                                                            string secondClassName = xmlSmaliProperties.Lines[m].GetClassNamesFromMethodDescriptor(1);
                                                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(secondClassName);
                                                                            string secondFieldName = "";
                                                                            for (int o = 0; o < xmlSmaliProperties.ProxiedLinesCount; o++)
                                                                            {
                                                                                if (xmlSmaliProperties.ProxiedLines[o].PartialsContains($"{targetSearchTerms[8]} :L{secondClassName};"))
                                                                                {
                                                                                    secondFieldName = xmlSmaliProperties.ProxiedLines[o].GetFieldName(false);

                                                                                    break;
                                                                                }
                                                                            }

                                                                            if (!new[] {
                                                                                    firstFieldName,
                                                                                    secondFieldName
                                                                                }.Any(string.IsNullOrEmpty))
                                                                            {
                                                                                codeInject.Lines(
                                                                                    [
                                                                                        ("Playback Stream Spoofing",

                                                                                        n + 1,

                                                                                        [
                                                                                            $"invoke-direct {{{xmlSmaliProperties.Lines[n].GetRegister(2)}, {xmlSmaliProperties.Lines[n].GetRegister(1)}}}, L{xmlSmaliProperties.Lines[l].GetClassNamesFromMethodDescriptor(1)};->{Main_Class.apkInfo.Item3}_SetStreamingData(L{firstClassName};)V"
                                                                                        ])
                                                                                    ]
                                                                                );

                                                                                for (int o = n; o <= scaleIndex.Lines(n, 89); o++)
                                                                                {
                                                                                    if (xmlSmaliProperties.Lines[o].PartialsContains(targetSearchTerms[9]))
                                                                                    {
                                                                                        for (int p = o; p < xmlSmaliProperties.LinesCount; p++)
                                                                                        {
                                                                                            if (xmlSmaliProperties.Lines[p].PartialsContains(targetSearchTerms[10]))
                                                                                            {
                                                                                                string thirdClassName = xmlSmaliProperties.Lines[o].GetClassNamesFromMethodDescriptor(1);

                                                                                                codeInject.Lines(
                                                                                                    [
                                                                                                        ("Playback Stream Spoofing",

                                                                                                        p + 1,

                                                                                                        [
                                                                                                            $".method private final {Main_Class.apkInfo.Item3}_SetStreamingData(L{firstClassName};)V",
                                                                                                            ".locals 2",
                                                                                                            ".param p1, \"videoDetails\"",
                                                                                                            $"iget-object v0, p1, L{firstClassName};->{firstFieldName}:Ljava/lang/String;",
                                                                                                            "if-eqz v0, :override_streaming_data",
                                                                                                            $"invoke-static {{v0}}, L{uSpoofingPath};->GetStreamingData(Ljava/lang/String;)Ljava/nio/ByteBuffer;",
                                                                                                            "move-result-object v0",
                                                                                                            "if-eqz v0, :override_streaming_data",
                                                                                                            $"sget-object v1, L{secondClassName};->{secondFieldName}:L{secondClassName};",
                                                                                                            $"invoke-static {{v1, v0}}, L{thirdClassName};->parseFrom(L{thirdClassName};Ljava/nio/ByteBuffer;)L{thirdClassName};",
                                                                                                            "move-result-object v0",
                                                                                                            $"check-cast v0, L{secondClassName};",
                                                                                                            $"iget-object v1, v0, {xmlSmaliProperties.Lines[k].GetMethodDescriptor()}",
                                                                                                            "if-eqz v1, :override_streaming_data",
                                                                                                            $"iput-object v1, p0, {xmlSmaliProperties.Lines[l].GetMethodDescriptor()}",
                                                                                                            ":override_streaming_data",
                                                                                                            "return-void",
                                                                                                            ".end method"
                                                                                                        ])
                                                                                                    ]
                                                                                                ).Write();

                                                                                                return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"HEAD\"",
                        "\"POST\"",
                        "\"GET\"",
                        "\"media3.datasource\"",
                        ".method public constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V",
                        "invoke-static Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;",
                        "iput-object :[B",
                        "iput :I",
                        "iput-object :Landroid/net/Uri;",
                        "return-void"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2],
                                targetSearchTerms[3]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[4]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 178); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[5]))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -17); k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[6]))
                                                {
                                                    for (int l = k; l >= scaleIndex.Lines(k, -28); l--)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[7]))
                                                        {
                                                            for (int m = l; m >= scaleIndex.Lines(l, -9); m--)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[8]))
                                                                {
                                                                    for (int n = m; n < xmlSmaliProperties.LinesCount; n++)
                                                                    {
                                                                        if (xmlSmaliProperties.Lines[n].PartialsContains(targetSearchTerms[9]))
                                                                        {
                                                                            string byteArrayInvokedSection = xmlSmaliProperties.Lines[k].GetMethodDescriptor();

                                                                            codeInject.Lines(
                                                                                [
                                                                                    ("Playback Stream Spoofing",

                                                                                    n,

                                                                                    [
                                                                                        "move-object/from16 v0, p0",
                                                                                        $"iget-object v1, v0, {xmlSmaliProperties.Lines[m].GetMethodDescriptor()}",
                                                                                        $"iget v2, v0, {xmlSmaliProperties.Lines[l].GetMethodDescriptor()}",
                                                                                        $"iget-object v3, v0, {byteArrayInvokedSection}",
                                                                                        $"invoke-static {{v1, v2, v3}}, L{uSpoofingPath};->RemoveVideoPlaybackPostBody(Landroid/net/Uri;I[B)[B",
                                                                                        "move-result-object v1",
                                                                                        $"iput-object v1, v0, {byteArrayInvokedSection}"
                                                                                    ])
                                                                                ]
                                                                            ).Write();

                                                                            return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"codecs=\\\"\"",
                        "invoke-virtual Ljava/lang/StringBuilder;->toString()Ljava/lang/String;"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j < xmlSmaliProperties.LinesCount; j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Playback Stream Spoofing",

                                                    j,

                                                    [
                                                        $"invoke-static {{}}, L{uUtilsPath};->GetStatsForNerdsClientName()Ljava/lang/String;",
                                                        "move-result-object v0",
                                                        $"invoke-virtual {{{xmlSmaliProperties.Lines[j].GetRegister(1)}, v0}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"DISABLED_BY_SABR_STREAMING_URI\"",
                        "sput-object",
                        "Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z",
                        "Landroid/net/Uri;->getAuthority()Ljava/lang/String;",
                        "Lj$/util/Optional;->get()Ljava/lang/Object;",
                        "Lj$/util/Optional;->isEmpty()Z",
                        ".method private final )L"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 17); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            infoForNextSubPatch.Add(xmlSmaliProperties.Lines[j].GetMethodDescriptor());
                                        }
                                    }
                                }
                            }
                        }

                        if (new[] {
                                targetSearchTerms[2],
                                targetSearchTerms[3],
                                targetSearchTerms[4],
                                targetSearchTerms[5]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -13); k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[4]))
                                                {
                                                    for (int l = k; l >= scaleIndex.Lines(k, -17); l--)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[5]))
                                                        {
                                                            for (int m = l; m >= 0; m--)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[6]) &&
                                                                    xmlSmaliProperties.Lines[m].GetMethodParametersCount() == 2)
                                                                {
                                                                    xmlSmaliProperties.ReadXMLSmaliProxiedLines(xmlSmaliProperties.Path);

                                                                    infoForNextSubPatch.Add((m + 2).ToString());
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

                        if (infoForNextSubPatch.Count == 2) {
                            codeInject.ProxiedLines(
                                [
                                    ("SABR Library Disabler",

                                    int.Parse(infoForNextSubPatch[infoForNextSubPatch.FindIndex(s => s.All(char.IsDigit))]),

                                    [
                                        $"sget-object v0, {infoForNextSubPatch[infoForNextSubPatch.FindIndex(s => s.Contains("->"))]}",
                                        "return-object v0",
                                    ])
                                ]
                            ).Write();

                            return (interactionsCount, false, []);
                        }
                        else
                        {
                            return (interactionsCount, true, infoForNextSubPatch);
                        }
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Account_Tab_Visibility_Check()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "compact_list_item"),
                        SmaliUtils.GetResourceHexByName("drawable", "bg_video_thumb_rounded"),
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("",

                                                    j + 2,

                                                    [
                                                        $"invoke-static {{}}, L{uUtilsPath};->GetNavigationBarActionDown()Z",
                                                        "move-result v0",
                                                        "if-eqz v0, :account_tab_visibility_yes",
                                                        $"invoke-static {{v0}}, L{uUtilsPath};->SetAccountTabOpen(Z)V",
                                                        "const/16 v0, 0x0",
                                                        $"invoke-static {{v0}}, L{uUtilsPath};->SetNavigationBarActionDown(Z)V",
                                                        ":account_tab_visibility_yes"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "compact_list_item"),
                        "\"com.google.android.libraries.youtube.rendering.presenter.PresentContext\"",
                        SmaliUtils.GetResourceHexByName("attr", "ytTextSecondary"),
                        ".method public final ;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j < xmlSmaliProperties.LinesCount; j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            for (int k = j; k >= 0; k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("",

                                                            k + 2,

                                                            [
                                                                $"invoke-static {{}}, L{uUtilsPath};->GetNavigationBarActionDown()Z",
                                                                "move-result v0",
                                                                "if-eqz v0, :account_tab_visibility_no",
                                                                "const/16 v0, 0x0",
                                                                $"invoke-static {{v0}}, L{uUtilsPath};->SetAccountTabOpen(Z)V",
                                                                $"invoke-static {{v0}}, L{uUtilsPath};->SetNavigationBarActionDown(Z)V",
                                                                ":account_tab_visibility_no"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ";->setFillViewport(Z)V",
                        ";->setHorizontalScrollBarEnabled(Z)V",
                        "invoke-direct ;-><init>",
                        "invoke-virtual Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I",
                        "invoke-virtual (IZ)V",
                        "return-void",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 16); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(xmlSmaliProperties.Lines[j].GetClassNamesFromMethodDescriptor(1));

                                            for (int k = 0; k < xmlSmaliProperties.ProxiedLinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.ProxiedLines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    for (int l = k; l <= scaleIndex.ProxiedLines(k, 9); l++)
                                                    {
                                                        if (xmlSmaliProperties.ProxiedLines[l].PartialsContains(targetSearchTerms[4]))
                                                        {
                                                            for (int m = l; m <= scaleIndex.ProxiedLines(l, 6); m++)
                                                            {
                                                                if (xmlSmaliProperties.ProxiedLines[m].PartialsContains(targetSearchTerms[5]))
                                                                {
                                                                    for (int n = m; n >= 0; n--)
                                                                    {
                                                                        if (xmlSmaliProperties.ProxiedLines[n].PartialsContains(targetSearchTerms[6]))
                                                                        {
                                                                            codeInject.ProxiedLines(
                                                                                [
                                                                                    ("",

                                                                                    m,

                                                                                    [
                                                                                        "const/16 v0, 0x0",
                                                                                        $"invoke-static {{v0}}, L{uUtilsPath};->SetNavigationBarDelayFinished(Z)V",
                                                                                        "const/16 v0, 0x1",
                                                                                        $"invoke-static {{v0}}, L{uUtilsPath};->SetNavigationBarActionDown(Z)V"
                                                                                    ]),

                                                                                    ("",

                                                                                    n + 2,

                                                                                    [
                                                                                        $"invoke-static {{}}, L{uUtilsPath};->StartNavigationBarDelayTimer()Z",
                                                                                        "move-result v0",
                                                                                        "if-nez v0, :navigation_bar_delay_timer",
                                                                                        "return-void",
                                                                                        ":navigation_bar_delay_timer"
                                                                                    ])
                                                                                ]
                                                                            ).Write();

                                                                            return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"This input is not added to any dispatcher.\"",
                        ".method public final onBackStarted(Landroid/window/BackEvent;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("",

                                            i + 2,

                                            [
                                                $"invoke-static {{}}, L{uUtilsPath};->StartNavigationBarDelayTimer()Z",
                                                "move-result v0",
                                                "if-nez v0, :navigation_bar_delay_timer",
                                                "return-void",
                                                ":navigation_bar_delay_timer",
                                                "const/16 v0, 0x0",
                                                $"invoke-static {{v0}}, L{uUtilsPath};->SetNavigationBarDelayFinished(Z)V",
                                                "const/16 v0, 0x1",
                                                $"invoke-static {{v0}}, L{uUtilsPath};->SetNavigationBarActionDown(Z)V"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("string", "abc_action_bar_up_description"),
                        "invoke-direct ;-><init>",
                        ".method public final onClick(Landroid/view/View;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 65); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(xmlSmaliProperties.Lines[j].GetClassNamesFromMethodDescriptor(1));

                                            for (int k = 0; k < xmlSmaliProperties.ProxiedLinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.ProxiedLines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.ProxiedLines(
                                                        [
                                                            ("",

                                                            k + 2,

                                                            [
                                                                $"invoke-static {{}}, L{uUtilsPath};->StartNavigationBarDelayTimer()Z",
                                                                "move-result v0",
                                                                "if-nez v0, :navigation_bar_delay_timer",
                                                                "return-void",
                                                                ":navigation_bar_delay_timer",
                                                                "const/16 v0, 0x0",
                                                                $"invoke-static {{v0}}, L{uUtilsPath};->SetNavigationBarDelayFinished(Z)V",
                                                                "const/16 v0, 0x1",
                                                                $"invoke-static {{v0}}, L{uUtilsPath};->SetNavigationBarActionDown(Z)V"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"com.google.android.libraries.youtube.rendering.presenter.PresentContext\"",
                        "\"FromTopBarMenu\"",
                        " onClick(Landroid/view/View;)V",
                        ":pswitch_"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("",

                                                    j + 1,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        $"invoke-static {{v0}}, L{uUtilsPath};->SetNavigationBarActionDown(Z)V"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "mobile_topbar_button_item"),
                        SmaliUtils.GetResourceHexByName("id", "new_content_dot"),
                        ".method public final onClick(Landroid/view/View;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("",

                                            i + 2,

                                            [
                                                "const/16 v0, 0x0",
                                                $"invoke-static {{v0}}, L{uUtilsPath};->SetAccountTabOpen(Z)V"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"com.google.android.libraries.youtube.logging.interaction_logger\"",
                        ".method public final onClick(Landroid/view/View;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains)
                                &&
                            xmlSmaliProperties.Full.GetOccurrenceCount("const-string") == 1)
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("",

                                            i + 2,

                                            [
                                                "const/16 v0, 0x1",
                                                $"invoke-static {{v0}}, L{uUtilsPath};->SetNavigationBarActionDown(Z)V"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,
                
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "component_long_click_listener"),
                        "invoke-virtual Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V",
                        "invoke-direct ;-><init>( ;)V",
                        ".method public final onClick(Landroid/view/View;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -74); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -6); k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    xmlSmaliProperties.ReadXMLSmaliProxiedLines(xmlSmaliProperties.Lines[k].GetClassNamesFromMethodDescriptor(1));

                                                    for (int l = 0; l < xmlSmaliProperties.ProxiedLinesCount; l++)
                                                    {
                                                        if (xmlSmaliProperties.ProxiedLines[l].PartialsContains(targetSearchTerms[3]))
                                                        {
                                                            codeInject.ProxiedLines(
                                                                [
                                                                    ("",

                                                                    l + 2,

                                                                    [
                                                                        "const/16 v0, 0x1",
                                                                        $"invoke-static {{v0}}, L{uUtilsPath};->SetNavigationBarActionDown(Z)V"
                                                                    ])
                                                                ]
                                                            ).Write();

                                                            return (interactionsCount, false, infoForNextSubPatch);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> ADBlock_Prevents_History_Fix()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"baseUrl->\"",
                        "\"params->\"",
                        "\"headers->\"",
                        ".method compareTo(",
                        "invoke-static Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;",
                        "move-result-object"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[3]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -12); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[4]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[5]))
                                                {
                                                    string trackingUrlRegister = xmlSmaliProperties.Lines[k].GetRegister(1);

                                                    codeInject.Lines(
                                                        [
                                                            ("",

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{trackingUrlRegister}}}, L{uBlockerPath};->OverrideTrackingUrl(Landroid/net/Uri;)Landroid/net/Uri;",
                                                                $"move-result-object {trackingUrlRegister}"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Amoled_App_Color_Tint()
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
                        "\"material_grey_850\"",
                        "\"yt_ref_color_constants_baseline_black_black0\"",
                        "\"yt_sys_color_baseline_dark_menu_background\"",
                        "\"yt_ref_color_constants_baseline_black_black1\"",
                        "\"yt_sys_color_baseline_dark_static_black\"",
                        "\"yt_sys_color_baseline_dark_raised_background\"",
                        "\"yt_ref_color_constants_baseline_black_black3\"",
                        "\"yt_sys_color_baseline_dark_base_background\"",
                        "\"yt_sys_color_baseline_dark_static_black\"",
                        "\"yt_sys_color_baseline_light_inverted_background\"",
                        "\"yt_sys_color_baseline_light_static_black\""
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/values/colors.xml")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                foreach (string j in targetSearchTerms)
                                {
                                    if (xmlSmaliProperties.Lines[i].PartialsContains(j))
                                    {
                                        codeInject.LinesReplace(
                                            [
                                                ("Global Attributes",

                                                i,

                                                [
                                                    $"<color name={j}>@android:color/black</color>"
                                                ])
                                            ]
                                        );
                                    }
                                }
                            }

                            codeInject.Write();

                            return (interactionsCount, false, infoForNextSubPatch);
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(16842919),
                        SmaliUtils.GetResourceHexByDecimal(16843518),
                        ".method onBoundsChange(Landroid/graphics/Rect;)V",
                        "invoke-virtual Landroid/graphics/Paint;->setColor(I)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 444); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Litho Elements",

                                                    j - 1,

                                                    [
                                                        $"invoke-static {{p1}}, L{uBlockerPath};->ChangeLithoUIColor(I)I",
                                                        "move-result p1"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("string", "app_theme_appearance_system"),
                        SmaliUtils.GetResourceHexByName("string", "app_theme_appearance_light"),
                        SmaliUtils.GetResourceHexByName("string", "app_theme_appearance_dark"),
                        "return-object",
                        ".end method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j < xmlSmaliProperties.LinesCount; j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            string[] patch = [
                                                $"invoke-static {{{xmlSmaliProperties.Lines[j].GetRegister(1)}}}, L{uUtilsPath};->SetSystemTheme(Ljava/lang/Enum;)V"
                                            ];

                                            codeInject.Lines(
                                                [
                                                    ("System Theme Set",

                                                    j,

                                                    patch)
                                                ]
                                            );

                                            j += patch.Length + 1;
                                        }

                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[4]))
                                        {
                                            codeInject.Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ".method (Landroid/app/Activity; ;)Landroid/content/Context;",
                        "new-instance Landroid/view/ContextThemeWrapper;",
                        "const ",
                        ".end method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]) &&
                                    xmlSmaliProperties.Lines[i].GetMethodParametersCount() == 2)
                                {
                                    for (int j = i; j < xmlSmaliProperties.LinesCount; j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k < xmlSmaliProperties.LinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    interactionsCount = interactionsCount.Equals(0) ? 1 : 0;

                                                    codeInject.Lines(
                                                        [
                                                            ("App Theme Set",

                                                            k + 1,

                                                            [
                                                                $"const/16 v1, 0x{interactionsCount}",
                                                                $"invoke-static {{v1}}, L{uUtilsPath};->SetAppTheme(Z)V"
                                                            ])
                                                        ]
                                                    );
                                                }

                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    codeInject.Write();

                                                    return (0, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "<background android:drawable=\"@mipmap/adaptiveproduct_youtube_2024_q4_background_color_108\" />"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/ringo2_ic_launcher.xml")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    codeInject.LinesReplace(
                                        [
                                            ("Launcher Icon",

                                            i,

                                            [""])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "<background android:drawable=\"@mipmap/adaptiveproduct_youtube_2024_q4_background_color_108\" />"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/ringo2_ic_launcher_round.xml")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    codeInject.LinesReplace(
                                        [
                                            ("Launcher Icon",

                                            i,

                                            [""])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ".method onLayout(",
                        "invoke-direct ()Z",
                        "move-result "
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/YouTubePlayerViewNotForReflection.smali")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 13); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("FullScreen Video Background",

                                                            k + 1,

                                                            [
                                                                $"const/16 {xmlSmaliProperties.Lines[k].GetRegister(1)}, 0x0"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> App_Settings_Filtering()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "<PreferenceCategory android:title=\"@string/help_and_policy\"",
                        "</PreferenceCategory>"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/settings_fragment_cairo.xml")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j < xmlSmaliProperties.LinesCount; j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = i; k <= j; k++)
                                            {
                                                codeInject.LinesReplace(
                                                    [
                                                        ("Help & Feedback",

                                                        k,

                                                        [
                                                            ""
                                                        ])
                                                    ]
                                                );
                                            }

                                            codeInject.Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("<Preference android:persistent=\"false\" android:layout=\"@layout/preference_with_icon\" android:key=\"@string/billing_and_payment_key\" android:fragment=\"com.google.android.apps.youtube.app.settings.BillingsAndPaymentsPrefsFragment\" app:iconSpaceReserved=\"true\" />", "", ""),
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/settings_fragment_cairo.xml")))
                        {
                            if (targetSearchTerms.All(st => xmlSmaliProperties.Full.PartialsContains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("Payments",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();

                                return (interactionsCount, false, infoForNextSubPatch);
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("<Preference android:persistent=\"false\" android:layout=\"@layout/preference_with_icon\" android:key=\"@string/premium_early_access_browse_page_key\" android:fragment=\"placeholder\" android:iconSpaceReserved=\"true\" />", "", "")
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/settings_fragment_cairo.xml")))
                        {
                            if (targetSearchTerms.All(st => xmlSmaliProperties.Full.PartialsContains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("Premium Experimental Features",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();

                                return (interactionsCount, false, infoForNextSubPatch);
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("<Preference android:persistent=\"false\" android:layout=\"@layout/preference_with_icon\" android:key=\"@string/subscription_product_setting_key\" android:fragment=\"placeholder\" />", "", ""),
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/settings_fragment_cairo.xml")))
                        {
                            if (targetSearchTerms.All(st => xmlSmaliProperties.Full.PartialsContains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("Subscriptions",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();

                                return (interactionsCount, false, infoForNextSubPatch);
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "<Preference android:title=\"@string/pref_general_category\""
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/settings_fragment_cairo.xml")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("Move Informations Under General Button",

                                            i + 1,

                                            [
                                                "<Preference android:icon=\"@drawable/yt_outline_info_circle_vd_theme_24\" android:persistent=\"false\" android:layout=\"@layout/preference_with_icon\" android:title=\"@string/pref_about_category\" android:key=\"@string/about_key\" android:fragment=\"com.google.android.apps.youtube.app.settings.AboutPrefsFragment\" app:iconSpaceReserved=\"true\"/>"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Autoplay_Button_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "autonav_preview_stub"),
                        "invoke-virtual (Landroid/view/ViewStub;I)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 18); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.LinesReplace(
                                                [
                                                    ("",

                                                    j,

                                                    [""])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "autonav_toggle"),
                        "invoke-virtual (Landroid/view/ViewStub;I)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 18); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.LinesReplace(
                                                [
                                                    ("",

                                                    j,

                                                    [""])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "touch_area"),
                        ".method public constructor <init>",
                        "invoke-virtual setOnClickListener(Landroid/view/View$OnClickListener;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k < xmlSmaliProperties.LinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("Next Video Countdown Disabler",

                                                            k,

                                                            [
                                                                $"invoke-static {{{xmlSmaliProperties.Lines[k].GetRegister(1)}}}, L{uBlockerPath};->DisableAutoPlayCountdown(Landroid/view/View;)V"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Background_Video_Playback()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("string", "audio_unavailable"),
                        "invoke-static ;)Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -33); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(xmlSmaliProperties.Lines[j].GetClassNamesFromMethodDescriptor(1));

                                            for (int k = 0; k < xmlSmaliProperties.ProxiedLinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.ProxiedLines[k].ContainsMethodName(xmlSmaliProperties.Lines[j].GetMethodName()))
                                                {
                                                    codeInject.ProxiedLines(
                                                        [
                                                            ("App",

                                                            k + 2,

                                                            [
                                                                "const/16 v0, 0x1",
                                                                "return v0"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Failed to start foreground priority player Service due to Android S+ restrictions\"",
                        "\"%s: About to stop background service while in a pending state.\"",
                        ".method public final declared-synchronized )V",
                        "invoke-static )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 25); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(xmlSmaliProperties.Lines[j].GetClassNamesFromMethodDescriptor(1));

                                            for (int k = 0; k < xmlSmaliProperties.ProxiedLinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.ProxiedLines[k].ContainsMethodName(xmlSmaliProperties.Lines[j].GetMethodName()))
                                                {
                                                    codeInject.ProxiedLines(
                                                        [
                                                            ("App",

                                                            k + 2,

                                                            [
                                                                "const/16 v0, 0x1",
                                                                "return v0"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "(Ljava/lang/Class;Ljava/lang/Object;I)[Ljava/lang/Class;",
                        "\"MPPC\"",
                        "\"unsupported op code: \"",
                        $"const/4 {SmaliUtils.GetResourceHexByDecimal(0)}",
                        $"const/4 {SmaliUtils.GetResourceHexByDecimal(5)}",
                        $"const/4 {SmaliUtils.GetResourceHexByDecimal(2)}",
                        $"const/4 {SmaliUtils.GetResourceHexByDecimal(3)}",
                        ".method (IL"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[3]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 33); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[4]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 8); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[5]))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 20); l++)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[6]))
                                                        {
                                                            for (int m = l; m >= 0; m--)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[7]))
                                                                {
                                                                    codeInject.Lines(
                                                                        [
                                                                            ("Miniplayer",

                                                                            m + 2,

                                                                            [
                                                                                "return-void"
                                                                            ])
                                                                        ]
                                                                    ).Write();

                                                                    return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Bottom_Floating_Button_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"fab\"",
                        "\"initFloatingActionButton\"",
                        "sput-object",
                        ".method protected final onCreate(Landroid/os/Bundle;)V",
                        "sget-object L{0};->{1}:",
                        "invoke-direct ;-><init>( )V",
                        "invoke-virtual ;Ljava/lang/Runnable;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 13); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines("com/google/android/apps/youtube/app/watchwhile/MainActivity.smali");

                                            for (int k = 0; k < xmlSmaliProperties.ProxiedLinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.ProxiedLines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    for (int l = k; l < xmlSmaliProperties.ProxiedLinesCount; l++)
                                                    {
                                                        if (xmlSmaliProperties.ProxiedLines[l].PartialsContains(String.Format(targetSearchTerms[4], xmlSmaliProperties.Lines[j].GetClassNamesFromMethodDescriptor(1), xmlSmaliProperties.Lines[j].GetFieldName(true))))
                                                        {
                                                            for (int m = l; m <= scaleIndex.ProxiedLines(l, 21); m++)
                                                            {
                                                                if (xmlSmaliProperties.ProxiedLines[m].PartialsContains(targetSearchTerms[5]))
                                                                {
                                                                    for (int n = m; n <= scaleIndex.ProxiedLines(m, 6); n++)
                                                                    {
                                                                        if (xmlSmaliProperties.ProxiedLines[n].PartialsContains(targetSearchTerms[6]))
                                                                        {
                                                                            codeInject.ProxiedLinesReplace(
                                                                                [
                                                                                    ("",

                                                                                    m,

                                                                                    [""]),

                                                                                    ("",

                                                                                    n,

                                                                                    [""])
                                                                                ]
                                                                            ).Write();

                                                                            return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Comments_Panel_Visibility_Check()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "panel_header_bottom_border"),
                        "\"EngagementPanelController: cannot show EngagementPanel before EngagementPanelController.init() has been called.\"",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        $"invoke-static {{v0}}, L{uUtilsPath};->SetCommentsPanelOpen(Z)V"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "panel_header_bottom_border"),
                        "\"mea-\"",
                        ".method public final )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j < xmlSmaliProperties.LinesCount; j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 276); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("",

                                                            k + 2,

                                                            [
                                                                "const/16 v0, 0x0",
                                                                $"invoke-static {{v0}}, L{uUtilsPath};->SetCommentsPanelOpen(Z)V"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }
        
        public static List<(bool, bool)> Creator_Channel_Visibility_Check()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ".method onLayout("
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/DefaultTabsBar.smali")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("Channel Page",

                                            i + 2,

                                            [
                                                "const/16 v0, 0x1",
                                                $"invoke-static {{v0}}, L{uUtilsPath};->SetVideoChannelOpen(Z)V"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "root_pill_container"),
                        "\"Browse Fragment was given a navigation endpoint without browse data.\"",
                        "invoke-virtual Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -60); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            string freeRegister = xmlSmaliProperties.Lines[j].GetRegister(2);

                                            codeInject.Lines(
                                                [
                                                    ("Channel Page",

                                                    j + 1,

                                                    [
                                                        $"const/16 {freeRegister}, 0x0",
                                                        $"invoke-static {{{freeRegister}}}, L{uUtilsPath};->SetVideoChannelOpen(Z)V"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "action_bar_search_results_view_mic"),
                        SmaliUtils.GetResourceHexByName("layout", "action_bar_search_results_view_grey"),
                        "\"innertube_managed_restricted_mode\"",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliProxiedLines("com/google/android/apps/youtube/app/settings/GeneralPrefsFragment.smali");

                            for (int i = 0; i < xmlSmaliProperties.ProxiedLinesCount; i++)
                            {
                                if (xmlSmaliProperties.ProxiedLines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.ProxiedLines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            xmlSmaliProperties.ReadXMLSmaliLines();

                                            for (int k = 0; k < xmlSmaliProperties.LinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].ContainsMethodName(xmlSmaliProperties.ProxiedLines[j].GetMethodName()))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("Community Page Button",

                                                            k + 2,

                                                            [
                                                                $"const/16 v0, 0x0",
                                                                $"invoke-static {{v0}}, L{uUtilsPath};->SetVideoChannelOpen(Z)V"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Context_Set()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ".method onCreate("
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/MainActivity.smali")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("Main Activity",

                                            i + 2,

                                            [
                                                $"invoke-static/range {{p0 .. p0}}, L{uUtilsPath};->SetMainActivity(Landroid/app/Activity;)V"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"MultiDex\"",
                        "\"Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.\"",
                        ".method onCreate()"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("App",

                                            i + 2,

                                            [
                                                $"invoke-static {{p0}}, L{uUtilsPath};->SetAppContext(Landroid/content/Context;)V"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Crowdfunding_Box_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "donation_companion_modern_type"),
                        "invoke-virtual Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;",
                        "move-result-object"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 13); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("",

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{xmlSmaliProperties.Lines[k].GetRegister(1)}}}, L{uUtilsPath};->HideInstanceViewByLayoutParams(Landroid/view/View;)V"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }
        
        public static List<(bool, bool)> Debugging_Enabler()
        {
            return [
                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("android:allowBackup=\"true\"", "", "android:debuggable=\"true\" android:allowBackup=\"true\"")
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/AndroidManifest.xml")))
                        {
                            if (targetSearchTerms.Any(st => xmlSmaliProperties.Full.PartialsContains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();

                                return (interactionsCount, false, infoForNextSubPatch);
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Double_Speed_Seek_Disabler()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("dimen", "seek_easy_horizontal_touch_offset_to_start_scrubbing"),
                        "invoke-virtual Landroid/view/MotionEvent;->getAction()I",
                        "move-result ",
                        "const-wide/16"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 6); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 4); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    string compareValueRegister = xmlSmaliProperties.Lines[k].GetRegister(1);

                                                    codeInject.Lines(
                                                        [
                                                            ("",

                                                            j + 1,

                                                            [
                                                                $"const/16 {compareValueRegister}, 0x2",
                                                                $"if-eq v2, {compareValueRegister}, :disable_double_speed_seek",
                                                                $"const/16 {compareValueRegister}, 0x0",
                                                                $"return {compareValueRegister}",
                                                                ":disable_double_speed_seek"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> End_Screen_Suggested_Videos_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ";->ordinal()I",
                        "(Ljava/lang/Class;Ljava/lang/Object;I)[Ljava/lang/Class;",
                        ";)[L",
                        "0x400",
                        "const/4 0x5",
                        "const/16 0x8",
                        "const/16 0x9",
                        "const/4 0x0",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2],
                                targetSearchTerms[3]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[4]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 8); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[5]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 9); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[6]))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 21); l++)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[7]))
                                                        {
                                                            for (int m = l; m >= 0; m--)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[8]))
                                                                {
                                                                    codeInject.Lines(
                                                                        [
                                                                            ("",

                                                                            m + 2,

                                                                            [
                                                                                "return-void"
                                                                            ])
                                                                        ]
                                                                    ).Write();

                                                                    return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "invoke-static Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z",
                        "sget-object Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;",
                        "invoke-static Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;",
                        "invoke-virtual Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V",
                        "invoke-virtual Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2],
                                targetSearchTerms[3],
                                targetSearchTerms[4]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[5]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("",

                                                    j + 2,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("dimen", "app_related_end_screen_item_padding"),
                        "invoke-virtual (IZI)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = xmlSmaliProperties.LinesCount - 1; i >= scaleIndex.Lines(i, -10); i--)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    xmlSmaliProperties.ReadXMLSmaliProxiedLines(xmlSmaliProperties.Lines[i].GetClassNamesFromMethodDescriptor(1));

                                    for (int j = 0; j < xmlSmaliProperties.ProxiedLinesCount; j++)
                                    {
                                        if (xmlSmaliProperties.ProxiedLines[j].ContainsMethodName(xmlSmaliProperties.Lines[i].GetMethodName()))
                                        {
                                            codeInject.ProxiedLines(
                                                [
                                                    ("",

                                                    j + 2,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Forced_Captions_Disabler()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45692436),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Without Audio",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"pc\"",
                        ".method )V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]) &&
                                            xmlSmaliProperties.Lines[j].GetMethodParametersCount() == 4)
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("With Audio",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x0",
                                                        $"invoke-static {{v0}}, L{uUtilsPath};->SetCaptionsButton(Z)V"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("string", "accessibility_captions_unavailable"),
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("With Audio",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        $"invoke-static {{v0}}, L{uUtilsPath};->SetCaptionsButton(Z)V"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"DISABLE_CAPTIONS_OPTION\"",
                        ".method ()Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("With Audio",

                                                    j + 2,

                                                    [
                                                        $"invoke-static {{}}, L{uUtilsPath};->GetCaptionsButton()Z",
                                                        "move-result v0",
                                                        "if-nez v0, :disable_forced_captions",
                                                        "const/16 v0, 0x1",
                                                        "return v0",
                                                        ":disable_forced_captions"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Generic_Improvements()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ".method onCreate("
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/MainActivity.smali")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("Clear App Cache At Launch",

                                            i + 2,

                                            [
                                                $"invoke-static {{}}, L{uUtilsPath};->ClearAppCache()V"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("<style name=\"Theme.YouTube.Launcher.Cairo\" parent=\"@style/Base.V27.Theme.YouTube.Launcher.Cairo.Dark\" />", "", "<style name=\"Theme.YouTube.Home\" parent=\"@style/Base.V27.Theme.YouTube.Launcher.Cairo.Dark\">\n    <item name=\"android:windowBackground\">@color/yt_black0</item>\n    </style>"),
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/values-night/styles.xml")))
                        {
                            if (targetSearchTerms.Any(st => xmlSmaliProperties.Full.PartialsContains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("Splashscreen Color Fix",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();

                                return (interactionsCount, false, infoForNextSubPatch);
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "lottie_animation"),
                        "invoke-interface (I)I",
                        "move-result "
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/MainActivity.smali")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 31); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("60FPS SplashScreen",

                                                            k + 1,

                                                            [
                                                                $"const/16 {xmlSmaliProperties.Lines[k].GetRegister(1)}, 0x1"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Android Automotive\"",
                        "if-eqz"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -5); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Automotive Layout Enabler",

                                                    j,

                                                    [
                                                        $"const/16 {xmlSmaliProperties.Lines[j].GetRegister(1)}, 0x1"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("drawable", "yt_outline_bell_cairo_black_24"),
                        "sget-object",
                        SmaliUtils.GetResourceHexByName("drawable", "yt_fill_youtube_shorts_cairo_black_24"),
                        "sput-object :Ljava/util/EnumMap;",
                        "invoke-virtual Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -3); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k < xmlSmaliProperties.LinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 20); l++)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[3]))
                                                        {
                                                            for (int m = l; m >= scaleIndex.Lines(l, -3); m--)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[4]))
                                                                {
                                                                    string enumRegister = xmlSmaliProperties.Lines[m].GetRegister(2);
                                                                    string drawableResRegister = xmlSmaliProperties.Lines[m].GetRegister(3);

                                                                    codeInject.Lines(
                                                                        [
                                                                            ("Notification Bell Fill Icon",

                                                                            l,

                                                                            [
                                                                                $"sget-object {enumRegister}, {xmlSmaliProperties.Lines[j].GetMethodDescriptor()}",
                                                                                $"invoke-static {{}}, L{uBlockerPath};->GetNotificationFillIconHex()I",
                                                                                $"move-result {drawableResRegister}",
                                                                                $"invoke-static {{{drawableResRegister}}}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;",
                                                                                $"move-result-object {drawableResRegister}",
                                                                                $"invoke-interface {{{xmlSmaliProperties.Lines[m].GetRegister(1)}, {enumRegister}, {drawableResRegister}}}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
                                                                            ])
                                                                        ]
                                                                    ).Write();

                                                                    return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45685201),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("In-App Bold Icons",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45632194),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Navigation Bar Buttons Height Distance Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "invoke-direct Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V",
                        "invoke-direct/range Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V",
                        "invoke-virtual ;->allowCoreThreadTimeOut(Z)V",
                        "const/4 {0} 0x0"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            if (xmlSmaliProperties.LinesCount != 82) {
                                goto skip_class;
                            }

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j < xmlSmaliProperties.LinesCount; j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -4); k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(string.Format(targetSearchTerms[3], xmlSmaliProperties.Lines[j].GetRegister(2))))
                                                {
                                                    string minThreadsAmountRegister = xmlSmaliProperties.Lines[i].GetRegister(1).ScaleRegisterValue(1);
                                                    string maxThreadsAmountRegister = minThreadsAmountRegister.ScaleRegisterValue(1);

                                                    codeInject.Lines(
                                                        [
                                                            ("Litho Single Thread PoolExecutor Enabler",

                                                            i,

                                                            [
                                                                $"const/16 {minThreadsAmountRegister}, 0x1",
                                                                $"const/16 {maxThreadsAmountRegister}, 0x1"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        skip_class:

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45371931),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("UI Transition Animations Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45680008),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("UI Transition Animations Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45680009),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("UI Transition Animations Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45694309),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("UI Transition Animations Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45701806),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("UI Transition Animations Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45387489),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("UI Transition Animations Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45675738),
                        "move-result "
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 14); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("New Litho Text Components Logic Enabler",

                                                    j + 1,

                                                    [
                                                        $"const/16 {xmlSmaliProperties.Lines[j].GetRegister(1)}, 0x1"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45643739),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Player UI Exploder Containers Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45686474),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Player UI Exploder Containers Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45709810),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("New Player Buttons Style Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45713296),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("New Player Buttons Style Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45691569),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("New FullScreen Seekbar Style Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45690475),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -13); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Automatic Fullscreen Video Zoom Disabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45698813),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Stats For Nerds Visibility Fix",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45672269),
                        "move-result "
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 11); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Miniplayer Controls Transition Enabler",

                                                    j + 1,

                                                    [
                                                        $"const/16 {xmlSmaliProperties.Lines[j].GetRegister(1)}, 0x1"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "watch_while_layout_coordinator_layout"),
                        "invoke-virtual Landroid/view/View;->onCheckIsTextEditor()Z",
                        "invoke-virtual Landroid/view/View;->findFocus()Landroid/view/View;",
                        "invoke-virtual ()Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -13); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -16); k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("Miniplayer Automatic Reposition Disabler",

                                                            k,

                                                            [
                                                                "return-void"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                     [
                        SmaliUtils.GetResourceHexByName("id", "mdx_drawer_layout"),
                        "sget-object",
                        "if-eq",
                        "if-ne",
                        "if-nez"
                     ],

                     true,

                     (
                         xmlSmaliProperties,
                         targetSearchTerms,
                         scaleIndex,
                         codeInject,
                         interactionsCount,
                         infoForNextSubPatch
                     ) => {
                         if (new[] {
                                 targetSearchTerms[0]
                             }.All(xmlSmaliProperties.Full.PartialsContains))
                         {
                             xmlSmaliProperties.ReadXMLSmaliLines();

                             for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                             {
                                 if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                 {
                                     for (int j = i; j < xmlSmaliProperties.LinesCount; j++)
                                     {
                                         if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                         {
                                             for (int k = j; k <= scaleIndex.Lines(j, 5); k++)
                                             {
                                                 if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                 {
                                                     for (int l = k; l <= scaleIndex.Lines(k, 5); l++)
                                                     {
                                                         if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[1]))
                                                         {
                                                            for (int m = l; m <= scaleIndex.Lines(l, 5); m++)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[3]))
                                                                {
                                                                    for (int n = m; n <= scaleIndex.Lines(m, 6); n++)
                                                                    {
                                                                        if (xmlSmaliProperties.Lines[n].PartialsContains(targetSearchTerms[4]))
                                                                        {
                                                                            codeInject.Lines(
                                                                                [
                                                                                    ("Back Button During Video Watching Fix",

                                                                                    n,

                                                                                    [
                                                                                        $"const/16 {xmlSmaliProperties.Lines[n].GetRegister(1)}, 0x0"
                                                                                    ])
                                                                                ]
                                                                            ).Write();

                                                                            return (interactionsCount, false, infoForNextSubPatch);
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

                         return (interactionsCount, true, infoForNextSubPatch);
                     }
                 ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                     [
                         SmaliUtils.GetResourceHexByDecimal(45638483),
                         "move-result "
                     ],

                     true,

                     (
                         xmlSmaliProperties,
                         targetSearchTerms,
                         scaleIndex,
                         codeInject,
                         interactionsCount,
                         infoForNextSubPatch
                     ) => {
                         if (new[] {
                                 targetSearchTerms[0]
                             }.All(xmlSmaliProperties.Full.PartialsContains))
                         {
                             xmlSmaliProperties.ReadXMLSmaliLines();

                             for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                             {
                                 if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                 {
                                     for (int j = i; j <= scaleIndex.Lines(i, 11); j++)
                                     {
                                         if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                         {
                                             codeInject.Lines(
                                                 [
                                                     ("PiP Controls Enabler",

                                                     j + 1,

                                                     [
                                                         $"const/16 {xmlSmaliProperties.Lines[j].GetRegister(1)}, 0x0"
                                                     ])
                                                 ]
                                             ).Write();

                                             return (interactionsCount, false, infoForNextSubPatch);
                                         }
                                     }
                                 }
                             }
                         }

                         return (interactionsCount, true, infoForNextSubPatch);
                     }
                 ).SubModuleStatus,

                 new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45427407),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("PiP Shortcut In Video Settings Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }
        public static List<(bool, bool)> Latest_Video_Top_Button_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "bar"),
                        "invoke-virtual Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;",
                        "move-result-object"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 10); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("",

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{xmlSmaliProperties.Lines[k].GetRegister(1)}}}, L{uUtilsPath};->HideView(Landroid/view/View;)V",
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,
                
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "content_pill"),
                        "invoke-virtual Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;",
                        "move-result-object"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 10); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("",

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{xmlSmaliProperties.Lines[k].GetRegister(1)}}}, L{uUtilsPath};->HideView(Landroid/view/View;)V",
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Litho_Elements_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45419603),
                        "move-result "
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 14); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Litho Obfuscation Flag Disabler",

                                                    j + 1,

                                                    [
                                                        $"const/16 {xmlSmaliProperties.Lines[j].GetRegister(1)}, 0x0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "invoke-virtual/range {v0 .. v9}, Lcom/google/android/libraries/elements/adl/UpbMessage;->jniDecode(JJJ[BII)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("Litho ProtoBuffer",

                                            i + 1,

                                            [
                                                "invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;",
                                                "move-result-object v7",
                                                $"invoke-static {{v7}}, L{uUtilsPath};->SetProtoBufferComponents(Ljava/nio/ByteBuffer;)V"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"ScrollableContainerType\"",
                        "\"Component was not found because it was removed due to duplicate converter bindings.\"",
                        ".method",
                        "check-cast Ljava/nio/ByteBuffer;",
                        "invoke-static Lcom/google/protobuf/ExtensionRegistryLite;->getGeneratedRegistry()Lcom/google/protobuf/ExtensionRegistryLite;",
                        "invoke-direct <init>",
                        "const/4 0x0",
                        "move-object ",
                        "invoke-virtual ;->contains(Ljava/lang/Object;)Z",
                        "move-result ",
                        "goto",
                        "return-object",
                        "iget-object",
                        "invoke-static",
                        ".field public final :Ljava/lang/StringBuilder"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            for (int k = j; k < xmlSmaliProperties.LinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 4); l++)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[4]))
                                                        {
                                                            for (int m = l; m <= scaleIndex.Lines(l, 66); m++)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains($"{targetSearchTerms[5]} {xmlSmaliProperties.Lines[j].GetClassNameFromMethodParameters(2)}"))
                                                                {
                                                                    string stringBuilderClassName = xmlSmaliProperties.Lines[m].GetClassNameFromMethodParameters(1);

                                                                    for (int n = m; n < xmlSmaliProperties.LinesCount; n++)
                                                                    {
                                                                        if (xmlSmaliProperties.Lines[n].PartialsContains(targetSearchTerms[6]))
                                                                        {
                                                                            for (int o = n; o <= scaleIndex.Lines(n, 20); o++)
                                                                            {
                                                                                if (xmlSmaliProperties.Lines[o].PartialsContains($"{targetSearchTerms[7]} {xmlSmaliProperties.Lines[m].GetRegister(2)}"))
                                                                                {
                                                                                    for (int p = o; p < xmlSmaliProperties.LinesCount; p++)
                                                                                    {
                                                                                        if (xmlSmaliProperties.Lines[p].PartialsContains(targetSearchTerms[8]))
                                                                                        {
                                                                                            for (int q = p; q <= scaleIndex.Lines(p, 6); q++)
                                                                                            {
                                                                                                if (xmlSmaliProperties.Lines[q].PartialsContains(targetSearchTerms[9]))
                                                                                                {
                                                                                                    for (int r = q; r >= scaleIndex.Lines(q, -15); r--)
                                                                                                    {
                                                                                                        if (xmlSmaliProperties.Lines[r].Trim().StartsWith(targetSearchTerms[10]))
                                                                                                        {
                                                                                                            for (int s = r; s < xmlSmaliProperties.LinesCount; s++)
                                                                                                            {
                                                                                                                if (xmlSmaliProperties.Lines[s].PartialsContains(targetSearchTerms[11]))
                                                                                                                {
                                                                                                                    for (int t = s; t >= scaleIndex.Lines(s, -6); t--)
                                                                                                                    {
                                                                                                                        if (xmlSmaliProperties.Lines[t].PartialsContains(targetSearchTerms[12]))
                                                                                                                        {
                                                                                                                            for (int u = t; u >= scaleIndex.Lines(t, -9); u--)
                                                                                                                            {
                                                                                                                                if (xmlSmaliProperties.Lines[u].PartialsContains(targetSearchTerms[13]))
                                                                                                                                {
                                                                                                                                    string stringBuilderGetMethodName = "";

                                                                                                                                    xmlSmaliProperties.ReadXMLSmaliProxiedLines(stringBuilderClassName);

                                                                                                                                    for (int v = 0; v < xmlSmaliProperties.ProxiedLinesCount; v++)
                                                                                                                                    {
                                                                                                                                        if (xmlSmaliProperties.ProxiedLines[v].PartialsContains(targetSearchTerms[14]))
                                                                                                                                        {
                                                                                                                                            stringBuilderGetMethodName = xmlSmaliProperties.ProxiedLines[v].GetFieldName(false);
                                                                                                                                        }
                                                                                                                                    }

                                                                                                                                    if (!String.IsNullOrEmpty(stringBuilderGetMethodName)) {
                                                                                                                                        string checkLithoElementFreeRegister = xmlSmaliProperties.Lines[i].GetRegister(1);

                                                                                                                                        codeInject.Lines(
                                                                                                                                            [
                                                                                                                                                ("Litho Tree",

                                                                                                                                                r,

                                                                                                                                                [
                                                                                                                                                    $"move-object/from16 {checkLithoElementFreeRegister}, {xmlSmaliProperties.Lines[o].GetRegister(1)}",
                                                                                                                                                    $"iget-object {checkLithoElementFreeRegister}, {checkLithoElementFreeRegister}, L{stringBuilderClassName};->{stringBuilderGetMethodName}:Ljava/lang/StringBuilder;",
                                                                                                                                                    $"invoke-virtual {{{checkLithoElementFreeRegister}}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;",
                                                                                                                                                    $"move-result-object {checkLithoElementFreeRegister}",
                                                                                                                                                    $"invoke-static {{{checkLithoElementFreeRegister}}}, LuTools/uBlocker;->HideLithoTemplate(Ljava/lang/String;)Z",
                                                                                                                                                    $"move-result {checkLithoElementFreeRegister}",
                                                                                                                                                    $"if-eqz {checkLithoElementFreeRegister}, :litho_tree",
                                                                                                                                                    $"invoke-static/range {{p1 .. p1}}, {xmlSmaliProperties.Lines[u].GetMethodDescriptor()}",
                                                                                                                                                    $"move-result-object {checkLithoElementFreeRegister}",
                                                                                                                                                    $"iget-object {xmlSmaliProperties.Lines[s].GetRegister(1)}, {checkLithoElementFreeRegister}, {xmlSmaliProperties.Lines[t].GetMethodDescriptor()}",
                                                                                                                                                    ":litho_tree"
                                                                                                                                                ])
                                                                                                                                            ]
                                                                                                                                        ).Write();

                                                                                                                                        return (interactionsCount, false, infoForNextSubPatch);
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
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "invoke-virtual Landroid/view/View;->canScrollVertically",
                        "move-result "
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/SwipeRefreshLayout.smali")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 6); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Swipe To Refresh Fix",

                                                    j + 1,

                                                    [
                                                        $"const/16 {xmlSmaliProperties.Lines[j].GetRegister(1)}, 0x0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"ScrollableContainerType\"",
                        "\"Component was not found because it was removed due to duplicate converter bindings.\"",
                        "invoke-static Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List",
                        ".method private final ;Ljava/util/List;Z)Ljava/util/List",
                        ".field public final :Ljava/lang/StringBuilder",
                        ".field public final :Ljava/lang/String",
                        ".end method",
                        "return-object"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            string identifierFieldClassName = xmlSmaliProperties.Lines[j].GetClassNameFromMethodParameters(2);
                                            string identifierFieldName = "";

                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(identifierFieldClassName);

                                            for (int k = 0; k < xmlSmaliProperties.ProxiedLinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.ProxiedLines[k].PartialsContains(targetSearchTerms[4]))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 5); l++)
                                                    {
                                                        if (xmlSmaliProperties.ProxiedLines[l].PartialsContains(targetSearchTerms[5]))
                                                        {
                                                            if (interactionsCount < 2) {
                                                                interactionsCount++;
                                                            }
                                                            else
                                                            {
                                                                identifierFieldName = xmlSmaliProperties.ProxiedLines[l].GetFieldName(false);
                                                            }
                                                        }
                                                    }
                                                }
                                            }

                                            if (!String.IsNullOrEmpty(identifierFieldName))
                                            {
                                                for (int m = j; m < xmlSmaliProperties.LinesCount; m++)
                                                {
                                                    if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[6]))
                                                    {
                                                        for (int n = m; n >= scaleIndex.Lines(m, -2); n--)
                                                        {
                                                            if (xmlSmaliProperties.Lines[n].PartialsContains(targetSearchTerms[7]))
                                                            {
                                                                string returnObjectRegister = xmlSmaliProperties.Lines[n].GetRegister(1);
                                                                string freeRegister = returnObjectRegister.ScaleRegisterValue(1);

                                                                codeInject.Lines(
                                                                    [
                                                                        ("Minimal Player Action Buttons",

                                                                        n,

                                                                        [
                                                                            $"move-object/from16 {freeRegister}, p2",
                                                                            $"iget-object {freeRegister}, {freeRegister}, L{identifierFieldClassName};->{identifierFieldName}:Ljava/lang/String;",
                                                                            $"invoke-static {{{returnObjectRegister}, {freeRegister}}}, L{uBlockerPath};->HideActionButtons(Ljava/util/List;Ljava/lang/String;)V"
                                                                        ])
                                                                    ]
                                                                ).Write();

                                                                return (0, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Live_Chat_Elements_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "live_chat_modern_poll"),
                        "invoke-virtual Landroid/view/ViewStub;->inflate()Landroid/view/View;",
                        "move-result-object"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 11); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("Poll Panel",

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{xmlSmaliProperties.Lines[k].GetRegister(1)}}}, L{uUtilsPath};->HideView(Landroid/view/View;)V"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);

                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,
                
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "action_pills"),
                        SmaliUtils.GetResourceHexByName("id", "live_chat_picker_toggle_button_tag"),
                        ".method private final (Landroid/view/ViewGroup; )V",
                        "invoke-virtual ;)Landroid/view/View;",
                        "move-result-object",
                        ".method private static ;)Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]) &&
                                            xmlSmaliProperties.Lines[j].GetMethodParametersCount() == 3)
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 32); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 6); l++)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[4]))
                                                        {
                                                            for (int m = l; m < xmlSmaliProperties.LinesCount; m++)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[5]))
                                                                {
                                                                    codeInject.Lines(
                                                                        [
                                                                            ("Reply With Donation Button",

                                                                            m + 2,

                                                                            [
                                                                                "const/16 v0, 0x1",
                                                                                "return v0"
                                                                            ]),

                                                                            ("Reply With Donation Button",

                                                                            l + 1,

                                                                            [
                                                                                $"invoke-static {{{xmlSmaliProperties.Lines[l].GetRegister(1)}}}, L{uUtilsPath};->HideView(Landroid/view/View;)V"
                                                                            ])
                                                                        ]
                                                                    ).Write();

                                                                    return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "thumbnail_and_emoji_picker_container"),
                        "return-object"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 23); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Reply Emoji Panel Button",

                                                    j,

                                                    [
                                                        $"invoke-static {{{xmlSmaliProperties.Lines[j].GetRegister(1)}}}, L{uUtilsPath};->HideView(Landroid/view/View;)V"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "live_chat_vem_button"),
                        SmaliUtils.GetResourceHexByName("dimen", "live_chat_vem_content_margin_bottom"),
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Information Panels At Start",

                                                    j + 2,

                                                    [
                                                        "return-void",
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "live_chat_ticker_item"),
                        "invoke-virtual setOnClickListener(Landroid/view/View$OnClickListener;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 189); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Donators Shelf",

                                                    j,

                                                    [
                                                        $"invoke-static {{{xmlSmaliProperties.Lines[j].GetRegister(1)}}}, L{uBlockerPath};->HideLiveChatSubscribersShelf(Landroid/view/View;)V"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "engagement_panel_title_header"),
                        "invoke-virtual Landroid/widget/ImageView;->setImageResource(I)V",
                        SmaliUtils.GetResourceHexByName("drawable", "yt_outline_adjust_black_24")
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("Show Only Comments Filtering Button",

                                            i + 1,

                                            [
                                                $"const v0, {targetSearchTerms[2]}",
                                                $"if-eq {xmlSmaliProperties.Lines[i].GetRegister(2)}, v0, :show_only_comments_filtering_button",
                                                $"invoke-static {{{xmlSmaliProperties.Lines[i].GetRegister(1)}}}, L{uUtilsPath};->HideImageView(Landroid/widget/ImageView;)V",
                                                ":show_only_comments_filtering_button"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Load_More_Videos_Button_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "expand_button_down"),
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("",

                                                    j + 2,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Long_Press_To_Open_Video_Channel()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "component_touch_listener"),
                        "iget-object Lcom/facebook/litho/ComponentHost;->",
                        ".method onTouch("
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(xmlSmaliProperties.Lines[j].GetClassNamesFromMethodDescriptor(2));

                                            for (int k = 0; k < xmlSmaliProperties.ProxiedLinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.ProxiedLines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.ProxiedLines(
                                                        [
                                                            ("",

                                                            k + 2,

                                                            [
                                                                $"invoke-static {{p2}}, L{uUtilsPath};->SetLithoActionDownDuration(Landroid/view/MotionEvent;)V",
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,
                
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"PLAYBACK_START_DESCRIPTOR_MUTATOR\"",
                        "\"VideoPresenterConstants.VIDEO_THUMBNAIL_VIEW_KEY\"",
                        "\"VideoPresenterConstants.VIDEO_THUMBNAIL_DETAILS_KEY\"",
                        "\"VideoPresenterConstants.VIDEO_THUMBNAIL_BITMAP_KEY\"",
                        "invoke-virtual ()L",
                        "move-result-object",
                        "\"PlaybackStartDescriptor:\\n  VideoId:%s\\n  PlaylistId:%s\\n  Index:%d\\n  VideoIds:%s\"",
                        "invoke-static Ljava/util/Locale;->getDefault()Ljava/util/Locale;",
                        "invoke-virtual ()Ljava/lang/String;"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2],
                                targetSearchTerms[3]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[4]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[5]))
                                                {
                                                    string playbackStartDescriptorClassName = xmlSmaliProperties.Lines[j].GetClassNamesFromMethodDescriptor(2);

                                                    xmlSmaliProperties.ReadXMLSmaliProxiedLines(playbackStartDescriptorClassName);

                                                    for (int l = 0; l < xmlSmaliProperties.ProxiedLinesCount; l++)
                                                    {
                                                        if (xmlSmaliProperties.ProxiedLines[l].PartialsContains(targetSearchTerms[6]))
                                                        {
                                                            for (int m = l; m >= scaleIndex.ProxiedLines(l, -97); m--)
                                                            {
                                                                if (xmlSmaliProperties.ProxiedLines[m].PartialsContains(targetSearchTerms[7]))
                                                                {
                                                                    for (int n = m; n <= scaleIndex.ProxiedLines(m, 9); n++)
                                                                    {
                                                                        if (xmlSmaliProperties.ProxiedLines[n].PartialsContains(targetSearchTerms[8]))
                                                                        {
                                                                            string freeConstStringRegister = xmlSmaliProperties.Lines[i].GetRegister(1);

                                                                            codeInject.Lines(
                                                                                [
                                                                                    ("",

                                                                                    i,

                                                                                    [
                                                                                        $"invoke-virtual {{{xmlSmaliProperties.Lines[k].GetRegister(1)}}}, L{playbackStartDescriptorClassName};->{xmlSmaliProperties.ProxiedLines[n].GetMethodName()}()Ljava/lang/String;",
                                                                                        $"move-result-object {freeConstStringRegister}",
                                                                                        $"invoke-static {{{freeConstStringRegister}}}, L{uStreamingDataRequestPath};->OpenVideoChannel(Ljava/lang/String;)Z",
                                                                                        $"move-result {freeConstStringRegister}",
                                                                                        $"if-eqz {freeConstStringRegister}, :open_video_channel",
                                                                                        "return-void",
                                                                                        ":open_video_channel"
                                                                                    ])
                                                                                ]
                                                                            ).Write();

                                                                            return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Player_Overlay_Timely_Shelf_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Null startTime\"",
                        "\"Null endTime\"",
                        "\"Null onEnterActions\"",
                        "\"Null onExitActions\"",
                        "player_overlay_timely_shelf",
                        "and-int 0x100",
                        ".method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2],
                                targetSearchTerms[3],
                                targetSearchTerms[4]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[4]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 53); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[5]))
                                        {
                                            for (int k = j; k >= 0; k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[6]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("",

                                                            k + 2,

                                                            [
                                                                "return-void"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Player_Restricted_Video_Confirmation_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"allowControversialContent\"",
                        "\"allowAdultContent\"",
                        "invoke-virtual ()Z",
                        ".method protected final {0}()Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 5); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(xmlSmaliProperties.Lines[j].GetClassNamesFromMethodDescriptor(1));

                                            for (int k = 0; k <= xmlSmaliProperties.ProxiedLinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.ProxiedLines[k].PartialsContains(String.Format(targetSearchTerms[3], xmlSmaliProperties.Lines[j].GetMethodName())))
                                                {
                                                    codeInject.ProxiedLines(
                                                        [
                                                            ("",

                                                            k + 2,

                                                            [
                                                                "const/16 v0, 0x1",
                                                                "return v0"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Playback_Properties_Set()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"NEW\"",
                        "\"PLAYBACK_PENDING\"",
                        "\"PLAYBACK_LOADED\"",
                        "\"VIDEO_PLAYING\"",
                        ".method public final varargs ([ ;)Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2],
                                targetSearchTerms[3]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[4]))
                                {
                                    codeInject.Lines(
                                        [
                                            ("Status",

                                            i + 2,

                                            [
                                                $"invoke-static {{p0}}, L{uUtilsPath};->SetVideoPlaybackStatus(Ljava/lang/Enum;)V"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"NONE\"",
                        "\"HIDDEN\"",
                        "\"WATCH_WHILE_MINIMIZED\"",
                        "\"WATCH_WHILE_MAXIMIZED\"",
                        "\"WATCH_WHILE_FULLSCREEN\"",
                        ".method public final (L{0};)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2],
                                targetSearchTerms[3]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliProxiedLines("com/google/android/apps/youtube/app/common/player/overlay/YouTubePlayerOverlaysLayout.smali");

                            for (int i = xmlSmaliProperties.ProxiedLinesCount - 1; i >= 0; i--)
                            {
                                if (xmlSmaliProperties.ProxiedLines[i].PartialsContains(String.Format(targetSearchTerms[5], Path.GetFileNameWithoutExtension(xmlSmaliProperties.Path))))
                                {
                                    codeInject.ProxiedLines(
                                        [
                                            ("Type",

                                            i + 2,

                                            [
                                                $"invoke-static {{p1}}, L{uUtilsPath};->SetPlayerType(Ljava/lang/Enum;)V"
                                            ])
                                        ]
                                    ).Write();

                                    return (interactionsCount, false, infoForNextSubPatch);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }
        
        public static List<(bool, bool)> Premium_Elements_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ".method onMeasure(II)V",
                        "return-void",
                        "invoke-virtual"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/CompactYpcOfferModuleView.smali")))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j < xmlSmaliProperties.LinesCount; j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -6); k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("Original Video Production Box",

                                                            k,

                                                            [
                                                                $"const/16 {xmlSmaliProperties.Lines[k].GetRegister(2)}, 0x0",
                                                                $"const/16 {xmlSmaliProperties.Lines[k].GetRegister(3)}, 0x0"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"c.supportedViewport\"",
                        "\"player.exception\"",
                        "\"vprng\"",
                        ".method (Ljava/util/List;Ljava/util/Collection;Ljava/lang/String;L )[L",
                        "invoke-virtual ()Ljava/lang/String;",
                        "move-result-object",
                        "invoke-interface Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z",
                        "invoke-interface Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
                        "if-eqz"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[3]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 427); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[4]))
                                        {
                                            if (interactionsCount.Equals(1)) {
                                                for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                                {
                                                    if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[5]))
                                                    {
                                                        for (int l = k; l <= scaleIndex.Lines(k, 4); l++)
                                                        {
                                                            if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[6]))
                                                            {
                                                                for (int m = l; m <= scaleIndex.Lines(l, 26); m++)
                                                                {
                                                                    if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[7]))
                                                                    {
                                                                        for (int n = m; n >= scaleIndex.Lines(m, -14); n--)
                                                                        {
                                                                            if (xmlSmaliProperties.Lines[n].PartialsContains(targetSearchTerms[8]))
                                                                            {
                                                                                string ifCondRegister = xmlSmaliProperties.Lines[n].GetRegister(1);
                                                                                string videoResolutionItemRegister = xmlSmaliProperties.Lines[k].GetRegister(1);

                                                                                codeInject.Lines(
                                                                                    [
                                                                                        ("High Bitrate Resolution",

                                                                                        m + 1,

                                                                                        [
                                                                                            ":hide_high_bitrate_resolution"
                                                                                        ]),

                                                                                        ("High Bitrate Resolution",

                                                                                        m,

                                                                                        [
                                                                                            $"invoke-static {{{videoResolutionItemRegister}}}, L{uBlockerPath};->HideHighBitrateResolution(Ljava/lang/String;)Z",
                                                                                            $"move-result {ifCondRegister}",
                                                                                            $"if-nez {ifCondRegister}, :hide_high_bitrate_resolution"
                                                                                        ])
                                                                                    ]
                                                                                ).Write();

                                                                                return (0, false, infoForNextSubPatch);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }

                                            interactionsCount = 1;
                                        }
                                    }
                                }
                            }
                        }

                        return (0, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Seekbar_Tapping()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"timed_markers_bar_height\"",
                        "\"timed_markers_width\"",
                        ".method public final onTouchEvent(Landroid/view/MotionEvent;)Z",
                        "Landroid/graphics/Point;->x:I",
                        "if-eqz",
                        "invoke-static Ljava/lang/Math;->min(II)I",
                        "invoke-virtual ;-> (I)V",
                        "invoke-static Ljava/lang/Math;->abs(I)I",
                        "invoke-static Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;",
                        "invoke-virtual ;-> (I)V"
                    ],

                    Main_Class.apkInfo.Item7,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j < scaleIndex.Lines(j, 48); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 21); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[4]))
                                                {
                                                    for (int l = k; l < xmlSmaliProperties.LinesCount; l++)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[5]))
                                                        {
                                                            for (int m = l; m <= scaleIndex.Lines(l, 9); m++)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[6]))
                                                                {
                                                                    for (int n = m; n <= scaleIndex.Lines(m, 64); n++)
                                                                    {
                                                                        if (xmlSmaliProperties.Lines[n].PartialsContains(targetSearchTerms[7]))
                                                                        {
                                                                            for (int o = n; o <= scaleIndex.Lines(n, 33); o++)
                                                                            {
                                                                                if (xmlSmaliProperties.Lines[o].PartialsContains(targetSearchTerms[8]))
                                                                                {
                                                                                    for (int p = o; p <= scaleIndex.Lines(o, 21); p++)
                                                                                    {
                                                                                        if (xmlSmaliProperties.Lines[p].PartialsContains(targetSearchTerms[9]))
                                                                                        {
                                                                                            for (int q = k; q < xmlSmaliProperties.LinesCount; q++)
                                                                                            {
                                                                                                if (xmlSmaliProperties.Lines[q].Trim().StartsWith(xmlSmaliProperties.Lines[k].GetLabelName()))
                                                                                                {
                                                                                                    string seekbarXPosRegister = xmlSmaliProperties.Lines[j].GetRegister(1);
                                                                                                    
                                                                                                    codeInject.Lines(
                                                                                                        [
                                                                                                            ("",

                                                                                                            q + 1,

                                                                                                            [
                                                                                                                $"invoke-virtual {{p0, {seekbarXPosRegister}}}, {xmlSmaliProperties.Lines[m].GetMethodDescriptor()}",
                                                                                                                $"invoke-virtual {{p0, {seekbarXPosRegister}}}, {xmlSmaliProperties.Lines[p].GetMethodDescriptor()}",
                                                                                                            ])
                                                                                                        ]
                                                                                                    ).Write();

                                                                                                    return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Shorts_Player_Bypasser()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"com.google.android.apps.youtube.PlaybackStartDescriptor\"",
                        "\"com.google.android.apps.youtube.ReelWatchActivityIntentCreator.CSI_START_BASELINE_KEY\"",
                        "\"com.google.android.apps.youtube.ReelWatchActivityIntentCreator.LOAD_TYPE_KEY\"",
                        "\"com.google.android.apps.youtube.ReelWatchActivityIntentCreator.IS_REFERRED_FROM_DISCOVER_KEY\"",
                        "\"ReelWatchFragmentArgs\"",
                        "\"reels_fragment_descriptor\"",
                        ".method",
                        "\"PlaybackStartDescriptor:\\n  VideoId:%s\\n  PlaylistId:%s\\n  Index:%d\\n  VideoIds:%s\"",
                        "invoke-static Ljava/util/Locale;->getDefault()Ljava/util/Locale;",
                        "invoke-virtual ()Ljava/lang/String;"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2],
                                targetSearchTerms[3],
                                targetSearchTerms[4],
                                targetSearchTerms[5]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[6]))
                                        {
                                            string playbackStartDescriptorClassName = xmlSmaliProperties.Lines[j].GetClassNameFromMethodParameters(1);

                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(playbackStartDescriptorClassName);

                                            for (int k = 0; k < xmlSmaliProperties.ProxiedLinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.ProxiedLines[k].PartialsContains(targetSearchTerms[7]))
                                                {
                                                    for (int l = k; l >= scaleIndex.ProxiedLines(k, -97); l--)
                                                    {
                                                        if (xmlSmaliProperties.ProxiedLines[l].PartialsContains(targetSearchTerms[8]))
                                                        {
                                                            for (int m = l; m <= scaleIndex.ProxiedLines(l, 9); m++)
                                                            {
                                                                if (xmlSmaliProperties.ProxiedLines[m].PartialsContains(targetSearchTerms[9]))
                                                                {
                                                                    codeInject.Lines(
                                                                        [
                                                                            ("",

                                                                            j + 2,

                                                                            [
                                                                                $"invoke-virtual/range {{p1 .. p1}}, L{playbackStartDescriptorClassName};->{xmlSmaliProperties.ProxiedLines[m].GetMethodName()}()Ljava/lang/String;",
                                                                                "move-result-object v0",
                                                                                $"invoke-static {{v0}}, L{uUtilsPath};->OpenNewVideo(Ljava/lang/String;)V",
                                                                                "return-void",
                                                                            ])
                                                                        ]
                                                                    ).Write();

                                                                    return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                     [
                         "<shortcut android:shortcutId=\"shorts-shortcut\"",
                         "<shortcut"
                     ],

                     true,

                     (
                         xmlSmaliProperties,
                         targetSearchTerms,
                         scaleIndex,
                         codeInject,
                         interactionsCount,
                         infoForNextSubPatch
                     ) => {
                         if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/xml/main_shortcuts.xml")))
                         {
                             xmlSmaliProperties.ReadXMLSmaliLines();

                             for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                             {
                                 if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                 {
                                     for (int j = i; j < xmlSmaliProperties.LinesCount; j++)
                                     {
                                         codeInject.LinesReplace(
                                             [
                                                 ("Launcher Button Shortcut Removal",

                                                 j,

                                                 [""])
                                             ]
                                         );

                                         if (xmlSmaliProperties.Lines[j + 1].PartialsContains(targetSearchTerms[1]))
                                         {
                                             codeInject.Write();

                                             return (interactionsCount, false, infoForNextSubPatch);
                                         }
                                     }
                                 }
                             }
                         }

                         return (interactionsCount, true, infoForNextSubPatch);
                     }
                 ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                     [
                         "<FrameLayout android:id=\"@id/button_shorts_container\"",
                         "<FrameLayout"
                     ],

                     true,

                     (
                         xmlSmaliProperties,
                         targetSearchTerms,
                         scaleIndex,
                         codeInject,
                         interactionsCount,
                         infoForNextSubPatch
                     ) => {
                         if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/layout/appwidget_two_rows.xml")))
                         {
                             xmlSmaliProperties.ReadXMLSmaliLines();

                             for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                             {
                                 if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                 {
                                     for (int j = i; j < xmlSmaliProperties.LinesCount; j++)
                                     {
                                         codeInject.LinesReplace(
                                             [
                                                 ("Launcher Widget Button Removal",

                                                 j,

                                                 [""])
                                             ]
                                         );

                                         if (xmlSmaliProperties.Lines[j + 1].PartialsContains(targetSearchTerms[1]))
                                         {
                                             codeInject.Write();

                                             return (interactionsCount, false, infoForNextSubPatch);
                                         }
                                     }
                                 }
                             }
                         }

                         return (interactionsCount, true, infoForNextSubPatch);
                     }
                 ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Search_Trending_Suggestions_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("string", "p13n_header"),
                        SmaliUtils.GetResourceHexByName("dimen", "suggestion_category_divider_height"),
                        "invoke-virtual Landroid/util/SparseIntArray;->clear()V",
                        "new-instance Ljava/util/ArrayList;",
                        "iput-object :Ljava/lang/String;"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k >= 0; k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 38); l++)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[3]))
                                                        {
                                                            for (int m = l; m >= scaleIndex.Lines(l, -5); m--)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[4]))
                                                                {
                                                                    string checkStringFreeRegister = xmlSmaliProperties.Lines[l].GetRegister(1);

                                                                    codeInject.Lines(
                                                                        [
                                                                            ("",

                                                                            m + 1,

                                                                            [
                                                                                $"invoke-virtual {{{xmlSmaliProperties.Lines[m].GetRegister(1)}}}, Ljava/lang/String;->isEmpty()Z",
                                                                                $"move-result {checkStringFreeRegister}",
                                                                                $"if-eqz {checkStringFreeRegister}, :hide_search_trending_suggestions",
                                                                                "return-void",
                                                                                ":hide_search_trending_suggestions",
                                                                            ])
                                                                        ]
                                                                    ).Write();

                                                                    return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }
        
        public static List<(bool, bool)> Start_Video_Panel_Disabler()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"engagement_panel_close_listener_key\"",
                        "\"triggered_on_ui_ready\"",
                        "invoke-static/range )Lj$/util/Optional;",
                        "move "
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 70); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -8); k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("",

                                                            j,

                                                            [
                                                                $"if-eqz {xmlSmaliProperties.Lines[k].GetRegister(1)}, :start_video_regular_panel",
                                                                "return-void",
                                                                ":start_video_regular_panel"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"engagement_panel_close_listener_key\"",
                        "\"triggered_on_ui_ready\"",
                        ".method public final ;Ljava/util/Map;)V",
                        "invoke-virtual Lj$/util/Optional;->isEmpty()Z",
                        "if-eqz"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 123); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -17); k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[4]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("Shop Items",

                                                            k + 1,

                                                            [
                                                                "return-void"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Top_And_Navigation_Bars_Buttons_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "mobile_topbar_button_item"),
                        SmaliUtils.GetResourceHexByName("id", "new_content_dot"),
                        "invoke-static (I)L",
                        "move-result-object",
                        "invoke-virtual setOnClickListener(Landroid/view/View$OnClickListener;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 86); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 67); l++)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[4]))
                                                        {
                                                            codeInject.Lines(
                                                                [
                                                                    ("Top Bar",

                                                                    l + 1,

                                                                    [
                                                                        $"invoke-static {{{xmlSmaliProperties.Lines[l].GetRegister(1)}}}, L{uBlockerPath};->HideTopBarButtons(Landroid/view/View;)V"
                                                                    ]),

                                                                    ("Top Bar",

                                                                    k + 1,

                                                                    [
                                                                        $"invoke-static {{{xmlSmaliProperties.Lines[k].GetRegister(1)}}}, L{uUtilsPath};->SetTopBarPivot(Ljava/lang/Enum;)V"
                                                                    ])
                                                                ]
                                                            ).Write();

                                                            return (interactionsCount, false, infoForNextSubPatch);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(318370164),
                        SmaliUtils.GetResourceHexByName("layout", "avatar_clipped_image_view_with_text_tab"),
                        "invoke-virtual/range Lcom/google/android/libraries/youtube/rendering/ui/pivotbar/PivotBar;-> )Landroid/view/View;",
                        "move-result-object",
                        "invoke-static (I)L",
                        "move-result-object",
                        ".end method"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            infoForNextSubPatch = ["0"];

                            next_reference:
                            bool shouldBreak = false;
                            for (int i = int.Parse(infoForNextSubPatch[0]); i < xmlSmaliProperties.LinesCount && !shouldBreak; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 6); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            for (int k = j; k >= 0; k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[4]))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 6); l++)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[5]))
                                                        {
                                                            codeInject.Lines(
                                                                [
                                                                    ("Navigation Bar",

                                                                    j + 1,

                                                                    [
                                                                        $"invoke-static {{{xmlSmaliProperties.Lines[j].GetRegister(1)}}}, L{uBlockerPath};->HideNavigationBarButtons(Landroid/view/View;)V"
                                                                    ]),

                                                                    ("Navigation Bar",

                                                                    l + 1,

                                                                    [
                                                                        $"invoke-static {{{xmlSmaliProperties.Lines[l].GetRegister(1)}}}, L{uUtilsPath};->SetNavigationBarPivot(Ljava/lang/Enum;)V"
                                                                    ])
                                                                ]
                                                            );

                                                            interactionsCount++;
                                                            infoForNextSubPatch[0] = j.ToString();

                                                            shouldBreak = true;

                                                            goto next_reference;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }

                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[6]) && interactionsCount > 0)
                                {
                                    codeInject.Write();

                                    return (0, false, []);
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "image_only_tab"),
                        "invoke-direct/range ;-><init>(Lcom/google/android/libraries/youtube/rendering/ui/pivotbar/PivotBar;ILandroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/util/Map; )V",
                        "return-object",
                        ".field public final :Landroid/view/View"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 34); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    string abstractedViewClassname = xmlSmaliProperties.Lines[j].GetClassNamesFromMethodDescriptor(1);

                                                    xmlSmaliProperties.ReadXMLSmaliProxiedLines(abstractedViewClassname);
                                                    string viewFieldName = "";
                                                    for (int l = 0; l < xmlSmaliProperties.ProxiedLinesCount; l++)
                                                    {
                                                        if (xmlSmaliProperties.ProxiedLines[l].PartialsContains(targetSearchTerms[3]))
                                                        {
                                                            viewFieldName = xmlSmaliProperties.ProxiedLines[l].GetFieldName(false);

                                                            break;
                                                        }
                                                    }

                                                    if (!String.IsNullOrEmpty(viewFieldName))
                                                    {
                                                        string abstractedViewClassRegister = xmlSmaliProperties.Lines[k].GetRegister(1);

                                                        codeInject.Lines(
                                                            [
                                                                ("Navigation Bar Create Button",

                                                                k,

                                                                [
                                                                    $"iget-object v1, {abstractedViewClassRegister}, L{abstractedViewClassname};->{viewFieldName}:Landroid/view/View;",
                                                                    $"invoke-static {{v1}}, L{uUtilsPath};->HideView(Landroid/view/View;)V"
                                                                ])
                                                            ]
                                                        ).Write();

                                                        return (interactionsCount, false, infoForNextSubPatch);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Tab_Me_Account_Buttons_Filtering()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"Error casting %s\"",
                        "\"SafeLayoutParams\"",
                        ".method public static (Landroid/view/View;II)V",
                        ".method public static HideViewGroupByMarginLayout",
                        ".param"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    xmlSmaliProperties.ReadXMLSmaliProxiedLines(uUtilsPath);

                                    for (int j = 0; j < xmlSmaliProperties.ProxiedLinesCount; j++)
                                    {
                                        if (xmlSmaliProperties.ProxiedLines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            for (int k = j; k <= scaleIndex.ProxiedLines(j, 3); k++)
                                            {
                                                if (xmlSmaliProperties.ProxiedLines[k].PartialsContains(targetSearchTerms[4]))
                                                {
                                                    codeInject.ProxiedLines(
                                                        [
                                                            ("",

                                                            k + 1,

                                                            [
                                                                $"const/16 v0, 0x0",
                                                                $"invoke-static {{p0, v0, v0}}, L{Path.GetFileNameWithoutExtension(xmlSmaliProperties.Path)};->{xmlSmaliProperties.Lines[i].GetMethodName()}(Landroid/view/View;II)V"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,
                
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "compact_list_item"),
                        SmaliUtils.GetResourceHexByName("id", "image_view"),
                        "check-cast Lcom/google/android/apps/youtube/app/common/widget/TintableImageView;",
                        "invoke-static",
                        "iget :I",
                        "invoke-static",
                        "invoke-virtual Lcom/google/android/libraries/youtube/common/ui/CircularImageView;->setVisibility(I)V",
                        "invoke-static (I)I",
                        "invoke-virtual Landroid/widget/TextView;->setVisibility(I)V",
                        "iget-object",
                        SmaliUtils.GetResourceHexByName("attr", "ytCallToAction"),
                        "invoke-virtual Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 112); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 15); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[3]))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 9); l++)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[4]))
                                                        {
                                                            for (int m = l; m <= scaleIndex.Lines(l, 5); m++)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[5]))
                                                                {
                                                                    for (int n = m; n >= scaleIndex.Lines(m, -321); n--)
                                                                    {
                                                                        if (xmlSmaliProperties.Lines[n].PartialsContains(targetSearchTerms[6]))
                                                                        {
                                                                            for (int o = n; o >= scaleIndex.Lines(n, -29); o--)
                                                                            {
                                                                                if (xmlSmaliProperties.Lines[o].PartialsContains(targetSearchTerms[7]))
                                                                                {
                                                                                    for (int p = o; p >= scaleIndex.Lines(o, -37); p--)
                                                                                    {
                                                                                        if (xmlSmaliProperties.Lines[p].PartialsContains(targetSearchTerms[8]))
                                                                                        {
                                                                                            for (int q = p; q <= scaleIndex.Lines(p, 7); q++)
                                                                                            {
                                                                                                if (xmlSmaliProperties.Lines[q].PartialsContains(targetSearchTerms[9]))
                                                                                                {
                                                                                                    for (int r = q; r >= 0; r--)
                                                                                                    {
                                                                                                        if (xmlSmaliProperties.Lines[r].PartialsContains(targetSearchTerms[10]))
                                                                                                        {
                                                                                                            for (int s = r; s <= scaleIndex.Lines(r, 28); s++)
                                                                                                            {
                                                                                                                if (xmlSmaliProperties.Lines[s].PartialsContains(targetSearchTerms[11]))
                                                                                                                {
                                                                                                                    string enumNameRegister = xmlSmaliProperties.Lines[s].GetRegister(2);

                                                                                                                    codeInject.Lines(
                                                                                                                        [
                                                                                                                            ("",

                                                                                                                            s + 1,

                                                                                                                            [
                                                                                                                                $"move-object/from16 {enumNameRegister}, p2",
                                                                                                                                $"check-cast {enumNameRegister}, L{xmlSmaliProperties.Lines[q].GetClassNamesFromMethodDescriptor(1)};",
                                                                                                                                $"if-eqz {enumNameRegister}, :check_first_enum_obj_null",
                                                                                                                                $"iget-object {enumNameRegister}, {enumNameRegister}, {xmlSmaliProperties.Lines[q].GetMethodDescriptor()}",
                                                                                                                                $"invoke-static {{{enumNameRegister}}}, {xmlSmaliProperties.Lines[k].GetMethodDescriptor()}",
                                                                                                                                $"move-result-object {enumNameRegister}",
                                                                                                                                $"iget {enumNameRegister}, {enumNameRegister}, {xmlSmaliProperties.Lines[l].GetMethodDescriptor()}",
                                                                                                                                $"invoke-static {{{enumNameRegister}}}, {xmlSmaliProperties.Lines[m].GetMethodDescriptor()}",
                                                                                                                                $"move-result-object {enumNameRegister}",
                                                                                                                                $"if-eqz {enumNameRegister}, :check_second_enum_obj_null",
                                                                                                                                $"invoke-static {{{xmlSmaliProperties.Lines[s].GetRegister(1)}, {enumNameRegister}}}, L{uBlockerPath};->HideTabMeAccountButton(Landroid/view/View;Ljava/lang/Enum;)V",
                                                                                                                                ":check_second_enum_obj_null",
                                                                                                                                ":check_first_enum_obj_null"
                                                                                                                            ])
                                                                                                                        ]
                                                                                                                    ).Write();

                                                                                                                    return (interactionsCount, false, infoForNextSubPatch);
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
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Video_ADS_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        ";->isEmpty()Z",
                        "Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z",
                        "Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream",
                        ".method public static ;)Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2],
                                targetSearchTerms[3]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -50); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -22); k--)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    for (int l = k; l >= 0; l--)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[3]))
                                                        {
                                                            codeInject.Lines(
                                                                [
                                                                    ("",

                                                                    l + 2,

                                                                    [
                                                                        "const/16 v0, 0x1",
                                                                        "return v0"
                                                                    ])
                                                                ]
                                                            ).Write();

                                                            return (interactionsCount, false, infoForNextSubPatch);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Video_Player_Save_Button()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("id", "time_bar_live_label"),
                        SmaliUtils.GetResourceHexByName("id", "fullscreen_button"),
                        "move-result-object",
                        "<FrameLayout android:id=\"@id/time_bar_chapter_title_container\""
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 11); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("",

                                                    j + 1,

                                                    [
                                                        $"invoke-static {{{xmlSmaliProperties.Lines[j].GetRegister(1)}}}, L{uStreamingDataRequestPath};->InjectSaveVideoToWatchLaterButton(Landroid/view/View;)V",
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("layout", "vr_button"),
                        "invoke-direct ;-><init>(Lcom/google/android/libraries/youtube/common/ui/TouchImageView;)V",
                        ".method public final (Z)V"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 34); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(xmlSmaliProperties.Lines[j].GetClassNamesFromMethodDescriptor(1));

                                            for (int k = 0; k < xmlSmaliProperties.ProxiedLinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.ProxiedLines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.ProxiedLines(
                                                        [
                                                            ("Player VR Button Disabler",

                                                            k + 2,

                                                            [
                                                                "return-void"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("<FrameLayout android:id=\"@id/time_bar_chapter_title_container\"", "", "<FrameLayout android:id=\"@id/time_bar_chapter_title_container\" android:layout_marginEnd=\"50dp\" ")
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (xmlSmaliProperties.Path.EndsWith(uDropUtils.GetOSSpecificFullPath("/youtube_video_exploder_controls_bottom_ui_container.xml")))
                        {
                            if (targetSearchTerms.Any(st => xmlSmaliProperties.Full.PartialsContains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        ("",

                                        -1,

                                        [""])
                                    ],

                                    targetSearchTerms
                                ).Write();

                                return (interactionsCount, false, infoForNextSubPatch);
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Video_Preview_Flyout_Buttons_Filtering()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"ElementTransformer cannot be null\"",
                        "\"Text missing for BottomSheetMenuItem with iconType: \"",
                        "\"Text missing for BottomSheetMenuItem.\"",
                        "invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;",
                        "invoke-static (I)L",
                        "iget",
                        "invoke-static ;)Ljava/lang/CharSequence;",
                        "move-result-object"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0],
                                targetSearchTerms[1],
                                targetSearchTerms[2]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[2]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 11); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[3]))
                                        {
                                            for (int k = 0; k < xmlSmaliProperties.LinesCount; k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[1]))
                                                {
                                                    for (int l = k; l >= scaleIndex.Lines(k, -22); l--)
                                                    {
                                                        if (xmlSmaliProperties.Lines[l].PartialsContains(targetSearchTerms[4]))
                                                        {
                                                            for (int m = l; m >= scaleIndex.Lines(l, -5); m--)
                                                            {
                                                                if (xmlSmaliProperties.Lines[m].PartialsContains(targetSearchTerms[5]))
                                                                {
                                                                    for (int n = m; n >= scaleIndex.Lines(m, -39); n--)
                                                                    {
                                                                        if (xmlSmaliProperties.Lines[n].PartialsContains(targetSearchTerms[6]))
                                                                        {
                                                                            for (int o = n; o >= scaleIndex.Lines(n, -4); o--)
                                                                            {
                                                                                if (xmlSmaliProperties.Lines[o].PartialsContains(targetSearchTerms[7]))
                                                                                {
                                                                                    string returnObject = xmlSmaliProperties.Lines[j];
                                                                                    string enumObject = xmlSmaliProperties.Lines[l].GetMethodDescriptor();
                                                                                    string currentButtonObject = xmlSmaliProperties.Lines[m].GetMethodDescriptor();
                                                                                    string currentButtonObjectRegister = xmlSmaliProperties.Lines[o].GetRegister(1);
                                                                                    string buttonCheckFreeRegister = xmlSmaliProperties.Lines[k].GetRegister(1);

                                                                                    codeInject.Lines(
                                                                                        [
                                                                                            ("",

                                                                                            o + 1,

                                                                                            [
                                                                                                $"iget {buttonCheckFreeRegister}, {currentButtonObjectRegister}, {currentButtonObject}",
                                                                                                $"invoke-static {{{buttonCheckFreeRegister}}}, {enumObject}",
                                                                                                $"move-result-object {buttonCheckFreeRegister}",
                                                                                                $"invoke-static {{{buttonCheckFreeRegister}}}, L{uBlockerPath};->HideVideoPreviewFlyoutButton(Ljava/lang/Enum;)Z",
                                                                                                $"move-result {buttonCheckFreeRegister}",
                                                                                                $"if-eqz {buttonCheckFreeRegister}, :video_preview_flyout_buttons_filtering",
                                                                                                returnObject,
                                                                                                $"move-result-object {buttonCheckFreeRegister}",
                                                                                                $"return-object {buttonCheckFreeRegister}",
                                                                                                ":video_preview_flyout_buttons_filtering"
                                                                                            ])
                                                                                        ]
                                                                                    ).Write();

                                                                                    return (interactionsCount, false, infoForNextSubPatch);
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

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Video_Quality()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByDecimal(45400072),
                        ".method )Z"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("New Quality UI Enabler",

                                                    j + 2,

                                                    [
                                                        "const/16 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"LithoRVSLCBinder\"",
                        ".method public constructor <init>",
                        "move-object/from16 p2",
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[1]))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 12); j++)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[2]))
                                        {
                                            codeInject.Lines(
                                                [
                                                    ("Qualities Flyout Fast Access",

                                                    j + 1,

                                                    [
                                                        $"invoke-static {{{xmlSmaliProperties.Lines[j].GetRegister(1)}}}, L{uBlockerPath};->OpenVideoResolutionsFlyout(Landroid/support/v7/widget/RecyclerView;)V"
                                                    ])
                                                ]
                                            ).Write();

                                            return (interactionsCount, false, infoForNextSubPatch);
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHexByName("string", "quality_ds_res"),
                        "invoke-virtual ;->ordinal()I",
                        "move-result "
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (new[] {
                                targetSearchTerms[0]
                            }.All(xmlSmaliProperties.Full.PartialsContains))
                        {
                            xmlSmaliProperties.ReadXMLSmaliLines();

                            for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                            {
                                if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[0]))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -35); j--)
                                    {
                                        if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[1]))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 5); k++)
                                            {
                                                if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[2]))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            ("Show Quality Only In Video Settings",

                                                            k + 1,

                                                            [
                                                               $"const/16 {xmlSmaliProperties.Lines[k].GetRegister(1)}, 0x3"
                                                            ])
                                                        ]
                                                    ).Write();

                                                    return (interactionsCount, false, infoForNextSubPatch);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }

        public static List<(bool, bool)> Video_Reload_After_Timeout()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "Ljava/lang/Math;->atan2(DD)D",
                        "Ljava/lang/Math;->toDegrees(D)D",
                        "Landroid/view/MotionEvent;->getEventTime()J",
                        ".method public final (Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z",
                        "invoke-static Ljava/lang/Math;->hypot(DD)D",
                        "invoke-virtual ()V",
                        ".method public constructor <init>",
                        "invoke-direct Ljava/lang/Object;-><init>()V",
                        ".method public static DismissVideoPlayer()V",
                        ".locals 0"
                    ],

                    true,

                    (
                        xmlSmaliProperties,
                        targetSearchTerms,
                        scaleIndex,
                        codeInject,
                        interactionsCount,
                        infoForNextSubPatch
                    ) => {
                        if (interactionsCount < 2)
                        {
                            if (new[] {
                                    targetSearchTerms[0],
                                    targetSearchTerms[1],
                                    targetSearchTerms[2],
                                }.All(xmlSmaliProperties.Full.PartialsContains))
                            {
                                xmlSmaliProperties.ReadXMLSmaliLines();

                                for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                                {
                                    if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[3]))
                                    {
                                        for (int j = i; j <= scaleIndex.Lines(i, 499); j++)
                                        {
                                            if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[4]))
                                            {
                                                for (int k = j; k >= scaleIndex.Lines(j, -15); k--)
                                                {
                                                    if (xmlSmaliProperties.Lines[k].PartialsContains(targetSearchTerms[5]))
                                                    {
                                                        infoForNextSubPatch.Add("firstSmaliInfo");
                                                        infoForNextSubPatch.Add(xmlSmaliProperties.Lines[k].GetClassNamesFromMethodDescriptor(1));
                                                        infoForNextSubPatch.Add(xmlSmaliProperties.Lines[k].GetMethodName());

                                                        interactionsCount++;

                                                        return (interactionsCount, true, infoForNextSubPatch);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }


                            if (xmlSmaliProperties.Full.GetOccurrenceCount("Landroid/view/View;->setOnClickListener") == 2 &&
                                xmlSmaliProperties.Full.GetOccurrenceCount("0x") == 3)
                            {
                                xmlSmaliProperties.ReadXMLSmaliLines();

                                for (int i = 0; i < xmlSmaliProperties.LinesCount; i++)
                                {
                                    if (xmlSmaliProperties.Lines[i].PartialsContains(targetSearchTerms[6]) &&
                                        xmlSmaliProperties.Lines[i].GetMethodParametersCount() == 26)
                                    {
                                        for (int j = i; j <= scaleIndex.Lines(i, 5); j++)
                                        {
                                            if (xmlSmaliProperties.Lines[j].PartialsContains(targetSearchTerms[7]))
                                            {
                                                infoForNextSubPatch.Add("secondSmaliInfo");
                                                infoForNextSubPatch.Add((j + 1).ToString());
                                                infoForNextSubPatch.Add(xmlSmaliProperties.Path);

                                                interactionsCount++;

                                                return (interactionsCount, true, infoForNextSubPatch);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        else
                        {
                            int firstSmaliInfoIndex = infoForNextSubPatch.IndexOf("firstSmaliInfo");
                            int secondSmaliInfoIndex = infoForNextSubPatch.IndexOf("secondSmaliInfo");

                            string dismissVideoPlayerClassFieldName = "dismissVideoPlayerClass";
                            string dismissVideoPlayerClass = infoForNextSubPatch[firstSmaliInfoIndex + 1];
                            
                            xmlSmaliProperties.ReadXMLSmaliProxiedLines(uUtilsPath);

                            for (int i = 0; i < xmlSmaliProperties.ProxiedLinesCount; i++)
                            {
                                if (xmlSmaliProperties.ProxiedLines[i].PartialsContains(targetSearchTerms[8]))
                                {
                                    int registersAmountIndex = i + 1;

                                    if (xmlSmaliProperties.ProxiedLines[registersAmountIndex].PartialsContains(targetSearchTerms[9]))
                                    {
                                        codeInject.ProxiedLinesReplace(
                                            [
                                                ("",

                                                registersAmountIndex,

                                                [
                                                    ".locals 1",
                                                    $"sget-object v0, L{uUtilsPath};->{dismissVideoPlayerClassFieldName}:L{dismissVideoPlayerClass};",
                                                    "if-eqz v0, :dismiss_video_player",
                                                    $"invoke-virtual {{v0}}, L{dismissVideoPlayerClass};->{infoForNextSubPatch[firstSmaliInfoIndex + 2]}()V",
                                                    ":dismiss_video_player",
                                                    "return-void"
                                                ])
                                            ]
                                        ).Write();
                                    }

                                    codeInject.ProxiedLines(
                                        [
                                            ("",

                                            i,

                                            [
                                                $".field public static {dismissVideoPlayerClassFieldName}:L{dismissVideoPlayerClass};"
                                            ])
                                        ]
                                    ).Write();

                                    interactionsCount++;

                                    break;
                                }
                            }

                            if (interactionsCount == 3) {
                                xmlSmaliProperties.ReadXMLSmaliProxiedLines(infoForNextSubPatch[secondSmaliInfoIndex + 2]);

                                codeInject.ProxiedLines(
                                    [
                                        ("",

                                        int.Parse(infoForNextSubPatch[secondSmaliInfoIndex + 1]),

                                        [
                                            $"sput-object p3, L{uUtilsPath};->{dismissVideoPlayerClassFieldName}:L{dismissVideoPlayerClass};"
                                        ])
                                    ]
                                ).Write();

                                return (0, false, []);
                            }
                        }

                        return (interactionsCount, true, infoForNextSubPatch);
                    }
                ).SubModuleStatus
            ];
        }
    }
}
