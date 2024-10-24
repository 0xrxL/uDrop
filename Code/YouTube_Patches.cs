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

        public static List<bool> Test()
        {
            return [
                
            ];
        }

        public static List<bool> Debug()
        {
            return [
                new SmaliUtils.SubPatchModule<(string, int)[]>(
                    [
                        ("Landroid/view/MotionEvent;->getAction()I", 1),
                        (" onDoubleTap(", 2),
                        (" onDoubleTapEvent(", 2),
                        (" onClick(", 2),
                        (" onItemClick(", 2),
                        (" onBackPressed(", 2),
                        (" getOnBackPressedDispatcher(", 2),
                        (" onTouch(", 2),
                        (" onTouchEvent(", 2),
                        (" onCreate(", 2),
                        (" onCreateLayout(", 2)
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        for (int i = 3; i <= 3; i++)
                        {
                            if (new[] {
                                    smaliSearchKeys[i].Item1
                                }.All(smaliProperties.Full.Contains))
                            {
                                smaliProperties.ReadSmaliLines();    

                                for (int j = 0; j < smaliProperties.LinesCount; j++)
                                {
                                    if (smaliProperties.Lines[j].Contains(smaliSearchKeys[i].Item1))
                                    {
                                        (int, string[]) patch = (
                                            j + smaliSearchKeys[i].Item2,

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

                                        codeInject.Lines(
                                            [
                                                (("", false),

                                                patch.Item1,

                                                patch.Item2)
                                            ]
                                        );

                                        j += patch.Item1.Equals(j) ? patch.Item2.Length + 1 : 0;
                                    }
                                }

                                codeInject.Write();

                                patchInteractions++;
                            }
                        }

                        if (patchInteractions > 0 && smaliProperties.Path.Equals(smaliProperties.LastOfPath))
                        {
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
                        new($"\"{playServicesName.Original}.android.gms.accountsettings.action.VIEW_SETTINGS\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.auth.account.authapi.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.auth.accounts\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.auth.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.chimera\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.clearcut.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.common.telemetry.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.droidguard.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.feedback.internal.IFeedbackService\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.fonts\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.gass.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.gmscompliance.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.googlehelp.HELP\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.googlehelp.service.GoogleHelpService.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.icing.LIGHTWEIGHT_INDEX_SERVICE\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.languageprofile.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.measurement.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.people.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.phenotype\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.phenotype.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.potokens.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.pseudonymous.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.signin.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.usagereporting.service.START\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gms.wallet.service.BIND\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gsf.action.GET_GLS\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"content://{playServicesName.Original}.android.gms.phenotype/\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"content://{playServicesName.Original}.android.gsf.gservices\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"content://{playServicesName.Original}.android.gsf.gservices/prefix\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.gsf.login\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.android.providers.gsf.permission.READ_GSERVICES\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"{playServicesName.Original}.iid.TOKEN_REQUEST\"", playServicesName.Original, playServicesName.Transformed),
                        new($"\"content://{playServicesName.Original}.settings/partner\"", playServicesName.Original, playServicesName.Transformed)
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith(".smali"))
                        {
                            if (smaliSearchKeys.Any(st => smaliProperties.Full.Contains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        (("", false),

                                        -1,

                                        [""])
                                    ],
                                    
                                    smaliSearchKeys
                                ).Write();

                                patchInteractions++;
                            }
                        }

                        if (patchInteractions > 0 && smaliProperties.Path.Equals(smaliProperties.LastOfPath))
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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\AndroidManifest.xml"))
                        {
                            if (smaliSearchKeys.Any(st => smaliProperties.Full.Contains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        (("", false),

                                        -1,

                                        [""])
                                    ],

                                    smaliSearchKeys
                                ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\AndroidManifest.xml"))
                        {
                            if (smaliSearchKeys.Any(st => smaliProperties.Full.Contains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        (("Package Name Change", false),

                                        -1,

                                        [""])
                                    ],

                                    smaliSearchKeys
                                ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\AndroidManifest.xml"))
                        {
                            if (smaliSearchKeys.Any(st => smaliProperties.Full.Contains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        (("App Label Name Change", false),

                                        -1,

                                        [""])
                                    ],

                                    smaliSearchKeys
                                ).Write();
                            }

                            return (patchInteractions, false, smaliInfo);
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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\AndroidManifest.xml"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -3); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("MicroG Detection Signature", true),
                                                
                                                    j,

                                                    [
                                                        $"<meta-data android:name=\"{playServicesName.Transformed}.android.gms.SPOOFED_PACKAGE_NAME\" android:value=\"{playServicesName.Original}.android.youtube\"/>",
                                                        $"<meta-data android:name=\"{playServicesName.Transformed}.android.gms.SPOOFED_PACKAGE_SIGNATURE\" android:value=\"24bb24c05e47e0aefa68a58a766179d9b613a600\"/>",
                                                        $"<meta-data android:name=\"{playServicesName.Transformed}.MICROG_PACKAGE_NAME\" android:value=\"{playServicesName.Transformed}.android.gms\"/>"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\AndroidManifest.xml"))
                        {
                            if (smaliSearchKeys.Any(st => smaliProperties.Full.Contains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        (("MicroG Detection Signature", false),

                                        -1,

                                        [""])
                                    ],

                                    smaliSearchKeys
                                ).Write();

                                return (patchInteractions, false, smaliInfo);
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,
                
                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("<style name=\"Theme.YouTube.Launcher.Cairo\" parent=\"@style/Base.V23.Theme.YouTube.Launcher.Cairo.Dark\" />", "", "<style name=\"Theme.YouTube.Home\" parent=\"@style/Base.V23.Theme.YouTube.Launcher.Cairo.Dark\">\n    <item name=\"android:windowBackground\">@color/yt_black0</item>\n    </style>"),
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\values-night\\styles.xml"))
                        {
                            if (smaliSearchKeys.Any(st => smaliProperties.Full.Contains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        (("Splashscreen Color Fix", false),

                                        -1,

                                        [""])
                                    ],

                                    smaliSearchKeys
                                ).Write();

                                return (patchInteractions, false, smaliInfo);
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"mServiceBroker is null, client disconnected\"",
                        ".method"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("GMS Service Broker Disabler", true),

                                                    j + 1,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();
                                            
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
                        "\"Primes instant initialization\"",
                        ", Ljava/lang/Object;-><init>()V",
                        ".method",
                        ")V"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Primes Initialization Disabler", true),

                                                    j + 1,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            );

                                            for (int k = j; k < smaliProperties.LinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2],
                                                        smaliSearchKeys[3]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("Primes Initialization Disabler", true),

                                                            k + 2,

                                                            [
                                                                "return-void"
                                                            ])
                                                        ]
                                                    );
                                                }

                                                if (k.Equals(smaliProperties.LinesCount - 1))
                                                {
                                                    codeInject.Write();

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
                        "\"Primes did not observe lifecycle events in the expected order. %s is not initializing in Application#onCreate\"",
                        "if-"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 18); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Primes Lifecycle Disabler", true),

                                                    j - 1,

                                                    [
                                                        $"const/4 {smaliProperties.Lines[j].GetRegister(1)}, 0x1"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 18); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Primes Background Disabler", true),

                                                    j - 1,

                                                    [
                                                        $"const/4 {smaliProperties.Lines[j].GetRegister(1)}, 0x1"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Google Signature Check Disabler", true),

                                                    j,

                                                    [
                                                        "const/4 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Google Signature Check Disabler", true),

                                                    j,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

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
                        new("</PreferenceScreen>", "</PreferenceScreen>", $"<PreferenceCategory android:persistent=\"false\" android:layout=\"@layout/preference_group_title\" android:title=\"uTube\" android:key=\"microg_group_key\" app:iconSpaceReserved=\"false\">\n        <Preference android:icon=\"@drawable/microg_settings_key_icon\" android:title=\"MicroG\"> <intent android:targetPackage=\"{playServicesName.Transformed}.android.gms\" android:targetClass=\"org.microg.gms.ui.SettingsActivity\"/> </Preference>\n        </PreferenceCategory>\n        </PreferenceScreen>")
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\settings_fragment_cairo.xml"))
                        {
                            if (smaliSearchKeys.Any(st => smaliProperties.Full.Contains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        (("MicroG Settings Button", true),

                                        -1,

                                        [""])
                                    ],

                                    smaliSearchKeys
                                ).Write();

                                return (patchInteractions, false, smaliInfo);
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,
                
                new SmaliUtils.SubPatchModule<SmaliUtils.StringTransform[]>(
                    [
                        new("<Preference android:persistent=\"false\" android:layout=\"@layout/preference_with_icon\" android:key=\"@string/premium_early_access_browse_page_key\" android:fragment=\"placeholder\" android:iconSpaceReserved=\"true\" />", "", "")
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\settings_fragment_cairo.xml"))
                        {
                            if (smaliSearchKeys.Any(st => smaliProperties.Full.Contains(st.Original)))
                            {
                                codeInject.FullReplace(
                                    [
                                        (("Experimental Features Button Removal", true),

                                        -1,

                                        [""])
                                    ],

                                    smaliSearchKeys
                                ).Write();

                                return (patchInteractions, false, smaliInfo);
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Cast Service Disabler", true),

                                                    j + 2,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\MediaRouteButton.smali"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (smaliSearchKeys
                                        .All(smaliProperties.Lines[i].Contains))
                                {
                                    codeInject.Lines(
                                        [
                                            (("Cast Button Removal", true),

                                            i + 2,

                                            [
                                                "const/16 p1, 0x8"
                                            ])
                                        ]
                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -28); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("Package Name Fix", true),

                                                            k + 1,

                                                            [
                                                                $"const-string {smaliProperties.Lines[k].GetRegister(1)}, \"com.google.android.youtube\""
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[2]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 189); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[3]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[4]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    string buildURIRegister = smaliProperties.Lines[k].GetRegister(1);

                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{buildURIRegister}}}, L{clientSpoofingPath};->blockGetWatchRequest(Landroid/net/Uri;)Landroid/net/Uri;",
                                                                $"move-result-object {buildURIRegister}"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[2],
                                        smaliSearchKeys[3]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 9); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[4],
                                                smaliSearchKeys[5],
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[6]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    string toStringURIRegister = smaliProperties.Lines[k].GetRegister(1);

                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{toStringURIRegister}}}, L{clientSpoofingPath};->blockInitPlaybackRequest(Ljava/lang/String;)Ljava/lang/String;",
                                                                $"move-result-object {toStringURIRegister}"
                                                            ])
                                                        ]
                                                    ).Write();
                                                    
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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                        smaliSearchKeys[2]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 48); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[3],
                                                smaliSearchKeys[4]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -10); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[5]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    string buildRequestFirstRegister = smaliProperties.Lines[j].GetRegister(2);
                                                    string buildRequestSecondRegister = smaliProperties.Lines[j].GetRegister(3);

                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            k,

                                                            [
                                                                $"move-object {buildRequestSecondRegister}, p1",
                                                                $"invoke-static {{{buildRequestFirstRegister}, {buildRequestSecondRegister}}}, L{clientSpoofingPath};->fetchStreams(Ljava/lang/String;Ljava/util/Map;)V"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 15); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 9); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 11); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[4]
                                                            }.All(smaliProperties.Lines[l].Contains))
                                                        {
                                                            for (int m = l; m <= scaleIndex.Lines(l, 3); m++)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[5]
                                                                    }.All(smaliProperties.Lines[m].Contains))
                                                                {
                                                                    for (int n = m; n <= scaleIndex.Lines(m, 9); n++)
                                                                    {
                                                                        if (new[] {
                                                                                smaliSearchKeys[6]
                                                                            }.All(smaliProperties.Lines[n].Contains))
                                                                        {
                                                                            string firstClassName = smaliProperties.Lines[m].GetInvokedSectionClass(2);
                                                                            smaliProperties.SetNewSmaliTarget(firstClassName);
                                                                            string firstFieldName = "";
                                                                            for (int o = 0; o < smaliProperties.NewLinesCount; o++)
                                                                            {
                                                                                if (new[] {
                                                                                        smaliSearchKeys[7],
                                                                                        smaliSearchKeys[8]
                                                                                    }.All(smaliProperties.NewLines[o].Contains))
                                                                                {
                                                                                    firstFieldName = smaliProperties.NewLines[o].Split(' ', ':')[2];

                                                                                    break;
                                                                                }
                                                                            }

                                                                            string secondClassName = smaliProperties.Lines[m].GetInvokedSectionClass(1);
                                                                            smaliProperties.SetNewSmaliTarget(secondClassName);
                                                                            string secondFieldName = "";
                                                                            for (int o = 0; o < smaliProperties.NewLinesCount; o++)
                                                                            {
                                                                                if (new[] {
                                                                                        smaliSearchKeys[7],
                                                                                        $"L{secondClassName};"
                                                                                    }.All(smaliProperties.NewLines[o].Contains))
                                                                                {
                                                                                    secondFieldName = smaliProperties.NewLines[o].Split(' ', ':')[4];

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
                                                                                        (("", true),

                                                                                        n + 1,

                                                                                        [
                                                                                            $"invoke-direct {{{smaliProperties.Lines[n].GetRegister(2)}, {smaliProperties.Lines[n].GetRegister(1)}}}, L{smaliProperties.Lines[l].GetInvokedSectionClass(1)};->{Init.projectInfo.Item3}_SetStreamingData(L{firstClassName};)V"
                                                                                        ])
                                                                                    ]
                                                                                );

                                                                                for (int o = n; o <= scaleIndex.Lines(n, 45); o++)
                                                                                {
                                                                                    if (new[] {
                                                                                            smaliSearchKeys[9]
                                                                                        }.All(smaliProperties.Lines[o].Contains))
                                                                                    {
                                                                                        for (int p = o; p < smaliProperties.LinesCount; p++)
                                                                                        {
                                                                                            if (new[] {
                                                                                                    smaliSearchKeys[10]
                                                                                                }.All(smaliProperties.Lines[p].Contains))
                                                                                            {
                                                                                                string thirdClassName = smaliProperties.Lines[o].GetInvokedSectionClass(1);

                                                                                                codeInject.Lines(
                                                                                                    [
                                                                                                        (("", true),

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
                                                                                                            $"iget-object v1, v0, {smaliProperties.Lines[k].GetInvokedSection()}",
                                                                                                            "if-eqz v1, :override_streaming_data",
                                                                                                            $"iput-object v1, p0, {smaliProperties.Lines[l].GetInvokedSection()}",
                                                                                                            ":override_streaming_data",
                                                                                                            "return-void",
                                                                                                            ".end method"
                                                                                                        ])
                                                                                                    ]
                                                                                                ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2],
                                smaliSearchKeys[3]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[4]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 116); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[5]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -10); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[6],
                                                        smaliSearchKeys[7]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l >= scaleIndex.Lines(k, -18); l--)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[8],
                                                                smaliSearchKeys[9]
                                                            }.All(smaliProperties.Lines[l].Contains))
                                                        {
                                                            for (int m = l; m >= scaleIndex.Lines(l, -7); m--)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[10],
                                                                        smaliSearchKeys[11]
                                                                    }.All(smaliProperties.Lines[m].Contains))
                                                                {
                                                                    for (int n = m; n <= smaliProperties.LinesCount; n++)
                                                                    {
                                                                        if (new[] {
                                                                                smaliSearchKeys[12]
                                                                            }.All(smaliProperties.Lines[n].Contains))
                                                                        {
                                                                            string byteArrayInvokedSection = smaliProperties.Lines[k].GetInvokedSection();

                                                                            codeInject.Lines(
                                                                                [
                                                                                    (("", true),

                                                                                    n - 2,

                                                                                    [
                                                                                        $"iget-object v1, v0, {smaliProperties.Lines[m].GetInvokedSection()}",
                                                                                        $"iget v2, v0, {smaliProperties.Lines[l].GetInvokedSection()}",
                                                                                        $"iget-object v3, v0, {byteArrayInvokedSection}",
                                                                                        $"invoke-static {{v1, v2, v3}}, L{clientSpoofingPath};->removeVideoPlaybackPostBody(Landroid/net/Uri;I[B)[B",
                                                                                        "move-result-object v1",
                                                                                        $"iput-object v1, v0, {byteArrayInvokedSection}"
                                                                                    ])
                                                                                ]
                                                                            ).Write();

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

        public static List<bool> HD_Seekbar_Thumbnail()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex(45399684),
                        ".method",
                        ")Z"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -26); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("", true),

                                                    j + 2,

                                                    [
                                                        "const/4 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

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

        public static List<bool> Double_Speed_Seek_Disabler()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        SmaliUtils.GetResourceHex("dimen", "seek_easy_horizontal_touch_offset_to_start_scrubbing"),
                        "invoke-virtual",
                        "Landroid/view/MotionEvent;->getAction()I",
                        "move-result ",
                        "const-wide/16"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                        smaliSearchKeys[2]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j < scaleIndex.Lines(i, 6); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[3]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k < scaleIndex.Lines(j, 4); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[4]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    string compareValueRegister = smaliProperties.Lines[k].GetRegister(1);

                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            j + 1,

                                                            [
                                                                $"const/4 {compareValueRegister}, 0x2",
                                                                $"if-eq v2, {compareValueRegister}, :disable_double_speed_seek",
                                                                $"const/4 {compareValueRegister}, 0x0",
                                                                $"return {compareValueRegister}",
                                                                ":disable_double_speed_seek"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -114); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            smaliProperties.SetNewSmaliTarget(smaliProperties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < smaliProperties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliProperties.Lines[j].GetMethodName()
                                                    }.All(smaliProperties.NewLines[k].Contains))
                                                {
                                                    codeInject.NewLines(
                                                        [
                                                            (("", true),

                                                            k + 2,

                                                            [
                                                                "const/4 v0, 0x1",
                                                                "return v0"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j < smaliProperties.LinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 262); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3],
                                                        smaliSearchKeys[4]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 20); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[5],
                                                                smaliSearchKeys[6]
                                                            }.All(smaliProperties.Lines[l].Contains))
                                                        {
                                                            smaliProperties.SetNewSmaliTarget(smaliProperties.Lines[l].GetInvokedSectionClass(1));

                                                            for (int m = 0; m < smaliProperties.NewLinesCount; m++)
                                                            {
                                                                if (new[] {
                                                                        smaliProperties.Lines[l].GetMethodName()
                                                                    }.All(smaliProperties.NewLines[m].Contains))
                                                                {
                                                                    codeInject.NewLines(
                                                                        [
                                                                            (("", true),

                                                                            m + 2,

                                                                            [
                                                                                "const/4 v0, 0x1",
                                                                                "return v0"
                                                                            ])
                                                                        ]
                                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -26); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Shorts Player", true),

                                                    j + 2,

                                                    [
                                                        "const/4 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Shorts Player", true),

                                                    j + 2,

                                                    [
                                                        "const/4 v0, 0x1",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                        smaliSearchKeys[2]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 33); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[3]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 8); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[1],
                                                        smaliSearchKeys[4]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 20); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[1],
                                                                smaliSearchKeys[5]
                                                            }.All(smaliProperties.Lines[l].Contains))
                                                        {
                                                            for (int m = l; m >= 0; m--)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[6]
                                                                    }.All(smaliProperties.Lines[m].Contains))
                                                                {
                                                                    codeInject.Lines(
                                                                        [
                                                                            (("", true),

                                                                            m + 2,

                                                                            [
                                                                                "return-void"
                                                                            ])
                                                                        ]
                                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 57); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2],
                                                smaliSearchKeys[3]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[4]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{smaliProperties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideNormalView(Landroid/view/View;)V"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        "move-result-object",
                        "invoke-virtual/range {",
                        "/pivotbar/PivotBar;->",
                        ")Landroid/view/View;",
                        "move-result-object"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    if (patchInteractions.Equals(0))
                                    {
                                        for (int j = i; j >= scaleIndex.Lines(i, -153); j--)
                                        {
                                            if (new[] {
                                                    smaliSearchKeys[2]
                                                }.All(smaliProperties.Lines[j].Contains))
                                            {
                                                for (int k = j; k >= scaleIndex.Lines(j, -30); k--)
                                                {
                                                    if (new[] {
                                                            smaliSearchKeys[3],
                                                            smaliSearchKeys[4]
                                                        }.All(smaliProperties.Lines[k].Contains))
                                                    {
                                                        for (int l = k; l <= scaleIndex.Lines(k, 6); l++)
                                                        {
                                                            if (new[] {
                                                                    smaliSearchKeys[5]
                                                                }.All(smaliProperties.Lines[l].Contains))
                                                            {
                                                                codeInject.Lines(
                                                                    [
                                                                        (("Navigation Bar Button", true),

                                                                        l + 1,

                                                                        [
                                                                            $"sput-object {smaliProperties.Lines[l].GetRegister(1)}, L{blockerPath};->navigationBarPivot:Ljava/lang/Enum;"
                                                                        ])
                                                                    ]
                                                                );

                                                                patchInteractions += 1;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    if (patchInteractions.Equals(1))
                                    {
                                        for (int j = i; j <= scaleIndex.Lines(i, 86); j++)
                                        {
                                            if (new[] {
                                                    smaliSearchKeys[6],
                                                    smaliSearchKeys[7],
                                                    smaliSearchKeys[8],
                                                }.All(smaliProperties.Lines[j].Contains))
                                            {
                                                for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                                {
                                                    if (new[] {
                                                            smaliSearchKeys[9]
                                                        }.All(smaliProperties.Lines[k].Contains))
                                                    {
                                                        codeInject.Lines(
                                                            [
                                                                (("Navigation Bar Button", true),

                                                                k + 1,

                                                                [
                                                                    $"invoke-static {{{smaliProperties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideShortsNavigationButton(Landroid/view/View;)V"
                                                                ])
                                                            ]
                                                        ).Write();

                                                        return (0, false, smaliInfo);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        return (0, true, smaliInfo);
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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -8); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -10); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("Shorts Contains Promo Banner", true),

                                                            k,

                                                            [
                                                                $"const/4 {smaliProperties.Lines[k].GetRegister(1)}, 0x0"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        SmaliUtils.GetResourceHex(45614842),
                        "invoke-interface",
                        "Lcom/google/protobuf/MessageLite;",
                        ".method",
                        "()Z"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -580); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= 0; k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3],
                                                        smaliSearchKeys[4]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("Startup Player Disabler", true),

                                                            k + 2,

                                                            [
                                                                "const/4 v0, 0x0",
                                                                "return v0"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        "Landroid/view/Display;->getSize(Landroid/graphics/Point;)V",
                        "\"window\"",
                        "\"accessibility\"",
                        "Landroid/view/MotionEvent;->getAction()I",
                        "add-int/lit8",
                        "-0x1",
                        "move-result "
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2],
                                smaliSearchKeys[3]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[3]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 414); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[4],
                                                smaliSearchKeys[5]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -4); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[6]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("Double Tap To Like", true),

                                                            k + 1,

                                                            [
                                                                $"const/4 {smaliProperties.Lines[k].GetRegister(1)}, 0x0"
                                                            ])
                                                        ]
                                                    ).Write();

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

        public static List<bool> Homepage_Floating_Button_Removal()
        {
            return [
                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "\"fab\"",
                        "\"pcc\""
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (smaliProperties.Path.EndsWith("\\MainActivity.smali"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j < smaliProperties.LinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = i; k < j; k++)
                                            {
                                                codeInject.LinesReplace(
                                                    [
                                                        (("", true),

                                                        k,

                                                        [""])
                                                    ]
                                                );
                                            }

                                            codeInject.Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j < smaliProperties.LinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 262); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3],
                                                        smaliSearchKeys[4]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 20); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[5],
                                                                smaliSearchKeys[6]
                                                            }.All(smaliProperties.Lines[l].Contains))
                                                        {
                                                            smaliProperties.SetNewSmaliTarget(smaliProperties.Lines[l].GetInvokedSectionClass(1));

                                                            for (int m = 0; m < smaliProperties.NewLinesCount; m++)
                                                            {
                                                                if (new[] {
                                                                        smaliProperties.Lines[l].GetMethodName()
                                                                    }.All(smaliProperties.NewLines[m].Contains))
                                                                {
                                                                    codeInject.NewLines(
                                                                        [
                                                                            (("", true),

                                                                            m + 2,

                                                                            [
                                                                                $"invoke-static {{}}, L{blockerPath};->checkIsShortsPlayer()Z",
                                                                                "move-result v0",
                                                                                "if-nez v0, :hide_engagement_panel",
                                                                                "const/4 v0, 0x0",
                                                                                $"sput-boolean v0, L{blockerPath};->initVideoPanel:Z",
                                                                                ":hide_engagement_panel"
                                                                            ])
                                                                        ]
                                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -74); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -6); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2],
                                                        smaliSearchKeys[3]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    smaliProperties.SetNewSmaliTarget(smaliProperties.Lines[k].GetInvokedSectionClass(1));

                                                    for (int l = 0; l < smaliProperties.NewLinesCount; l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[4]
                                                            }.All(smaliProperties.NewLines[l].Contains))
                                                        {
                                                            codeInject.NewLines(
                                                                [
                                                                    (("", true),

                                                                    l + 2,

                                                                    [
                                                                        "const/4 v0, 0x1",
                                                                        $"sput-boolean v0, L{blockerPath};->initVideoPanel:Z"
                                                                    ])
                                                                ]
                                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[2]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    codeInject.Lines(
                                        [
                                            (("", true),

                                            i + 2,

                                            [
                                                "const/4 v0, 0x1",
                                                $"sput-boolean v0, L{blockerPath};->initVideoPanel:Z"
                                            ])
                                        ]
                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -6); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            smaliProperties.SetNewSmaliTarget(smaliProperties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < smaliProperties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(smaliProperties.NewLines[k].Contains))
                                                {
                                                    codeInject.NewLines(
                                                        [
                                                            (("", true),

                                                            k + 2,

                                                            [
                                                                "const/4 v0, 0x1",
                                                                $"sput-boolean v0, L{blockerPath};->initVideoPanel:Z"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("", true),

                                                    j + 1,

                                                    [
                                                        $"sget-boolean v0, L{blockerPath};->initVideoPanel:Z",
                                                        "if-nez v0, :hide_engagement_panel",
                                                        "const/4 v0, 0x0",
                                                        "return-object v0",
                                                        ":hide_engagement_panel"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 17); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -25); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3],
                                                        smaliSearchKeys[4]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    smaliProperties.SetNewSmaliTarget(smaliProperties.Lines[k].GetInvokedSectionClass(1));

                                                    for (int l = 0; l < smaliProperties.NewLinesCount; l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[5]
                                                            }.All(smaliProperties.NewLines[l].Contains))
                                                        {
                                                            for (int m = l; m >= 0; m--)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[6],
                                                                        smaliSearchKeys[7],
                                                                    }.All(smaliProperties.NewLines[m].Contains))
                                                                {
                                                                    codeInject.NewLines(
                                                                        [
                                                                            (("", true),

                                                                            m + 2,

                                                                            [
                                                                                "move-object/from16 v0, p3",
                                                                                $"sput-object v0, L{blockerPath};->currentPlayerID:Ljava/lang/String;"
                                                                            ])
                                                                        ]
                                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("", true),

                                                    j + 2,

                                                    [
                                                        $"invoke-static {{}}, L{blockerPath};->checkIsShortsPlayer()Z",
                                                        "move-result v0",
                                                        $"sput-boolean v0, L{blockerPath};->captionsButton:Z"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("", true),

                                                    j + 1,

                                                    [
                                                        "const/4 v0, 0x1",
                                                        $"sput-boolean v0, L{blockerPath};->captionsButton:Z"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\SubtitleTrack.smali"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("", true),

                                                    j + 2,

                                                    [
                                                        $"sget-boolean v0, L{blockerPath};->captionsButton:Z",
                                                        "if-nez v0, :disable_init_caption",
                                                        "const/4 v0, 0x1",
                                                        "return v0",
                                                        ":disable_init_caption"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 18); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.LinesReplace(
                                                [
                                                    (("", true),

                                                    j,

                                                    [""])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 18); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.LinesReplace(
                                                [
                                                    (("", true),

                                                    j,

                                                    [""])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k < smaliProperties.LinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("Countdown Disabler", true),

                                                            k,

                                                            [
                                                                $"invoke-static {{{smaliProperties.Lines[k].GetRegister(1)}}}, L{blockerPath};->DisableAutoPlayCountdown(Landroid/view/View;)V"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 136); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 30); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2],
                                                        smaliSearchKeys[3]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            k - 1,

                                                            [
                                                                $"const/4 {smaliProperties.Lines[k].GetRegister(2)}, 0x0"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                            smaliSearchKeys[0],
                            smaliSearchKeys[1]
                        }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                    smaliSearchKeys[1]
                                }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 17); j++)
                                    {
                                        if (new[] {
                                            smaliSearchKeys[2],
                                            smaliSearchKeys[3]
                                        }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            smaliProperties.SetNewSmaliTarget(smaliProperties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < smaliProperties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[4]
                                                    }.All(smaliProperties.NewLines[k].Contains))
                                                {
                                                    for (int l = k; l <= scaleIndex.NewLines(k, 9); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[5]
                                                            }.All(smaliProperties.NewLines[l].Contains))
                                                        {
                                                            codeInject.NewLines(
                                                                [
                                                                    (("", true),

                                                                    l,

                                                                    [
                                                                        $"sput {smaliProperties.NewLines[l].GetRegister(2)}, L{blockerPath};->currentNavBarIndex:I"
                                                                    ])
                                                                ]
                                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                            smaliSearchKeys[0]
                        }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                    smaliSearchKeys[1]
                                }.All(smaliProperties.Lines[i].Contains))
                                {
                                    codeInject.Lines(
                                        [
                                            (("", true),

                                            i + 2,

                                            [
                                                "const/4 v0, 0x0",
                                                $"sput v0, L{blockerPath};->currentNavBarIndex:I"
                                            ])
                                        ]
                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\watchwhile\\MainActivity.smali"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    codeInject.Lines(
                                        [
                                            (("", true),

                                            i + 2,

                                            [
                                                "const/4 v0, 0x0",
                                                $"sput v0, L{blockerPath};->currentNavBarIndex:I"
                                            ])
                                        ]
                                    ).Write();

                                    return (patchInteractions, false, smaliInfo);
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply
            ];
        }

        public static List<bool> End_Screen_Videos_Removal()
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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 17); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("", true),

                                                    j + 1,

                                                    [
                                                        $"invoke-static {{{smaliProperties.Lines[j].GetRegister(1)}}}, L{blockerPath};->HideNormalView(Landroid/view/View;)V"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 17); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("", true),

                                                    j + 1,

                                                    [
                                                        $"invoke-static {{{smaliProperties.Lines[j].GetRegister(1)}}}, L{blockerPath};->HideNormalView(Landroid/view/View;)V"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 17); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("", true),

                                                    j + 1,

                                                    [
                                                        $"invoke-static {{{smaliProperties.Lines[j].GetRegister(1)}}}, L{blockerPath};->HideNormalView(Landroid/view/View;)V"
                                                    ])
                                                ]
                                            ).Write();

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
                        SmaliUtils.GetResourceHex("dimen", "app_related_end_screen_item_padding"),
                        "invoke-virtual",
                        "(IZI)V"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = smaliProperties.LinesCount - 1; i >= scaleIndex.Lines(i, -10); i--)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                        smaliSearchKeys[2]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    smaliProperties.SetNewSmaliTarget(smaliProperties.Lines[i].GetInvokedSectionClass(1));

                                    for (int j = 0; j < smaliProperties.NewLinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliProperties.Lines[i].GetMethodName()
                                            }.All(smaliProperties.NewLines[j].Contains))
                                        {
                                            codeInject.NewLines(
                                                [
                                                    (("", true),

                                                    j + 2,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

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
                        "Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z",
                        "Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;",
                        "Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;",
                        "Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V",
                        "Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z",
                        ".method"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2],
                                smaliSearchKeys[3],
                                smaliSearchKeys[4]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[2]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[5]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Suggestions", true),

                                                    j + 2,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -79); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("", true),

                                                    j - 1,

                                                    [
                                                        $"const/16 {smaliProperties.Lines[j].GetRegister(2)}, 0x8"
                                                    ])
                                                ]
                                            ).Write();

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
                        ".method"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("", true),

                                                    j + 2,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 20); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Promoted Video ADS", true),

                                                    j + 1,

                                                    [
                                                        $"invoke-static {{{smaliProperties.Lines[j].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -18); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            smaliProperties.SetNewSmaliTarget(smaliProperties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < smaliProperties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(smaliProperties.NewLines[k].Contains))
                                                {
                                                    for (int l = k; l >= scaleIndex.NewLines(k, -5); l--)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[4]
                                                            }.All(smaliProperties.NewLines[l].Contains))
                                                        {
                                                            for (int m = l; m >= scaleIndex.NewLines(l, -3); m--)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[5],
                                                                        smaliSearchKeys[6]
                                                                    }.All(smaliProperties.NewLines[m].Contains))
                                                                {
                                                                    codeInject.NewLines(
                                                                        [
                                                                            (("Promoted Video ADS", true),

                                                                            l + 1,

                                                                            [
                                                                                $"invoke-static {{{smaliProperties.NewLines[l].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                                            ])
                                                                        ]
                                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2],
                                smaliSearchKeys[3]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[4],
                                                smaliSearchKeys[5]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Video ADS", true),

                                                    j + 2,

                                                    [
                                                        "return-void"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[9]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= 0; j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2],
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k < smaliProperties.LinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3],
                                                        smaliSearchKeys[4],
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    for (int l = k; l <= scaleIndex.Lines(k, 63); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[5],
                                                                smaliSearchKeys[6]
                                                            }.All(smaliProperties.Lines[l].Contains))
                                                        {
                                                            for (int m = l; m <= scaleIndex.Lines(l, 140); m++)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[7],
                                                                        smaliSearchKeys[8]
                                                                    }.All(smaliProperties.Lines[m].Contains))
                                                                {
                                                                    for (int n = m; n < smaliProperties.LinesCount; n++)
                                                                    {
                                                                        if (new[] {
                                                                                smaliSearchKeys[9]
                                                                            }.All(smaliProperties.Lines[n].Contains))
                                                                        {
                                                                            for (int o = n; o <= scaleIndex.Lines(n, 32); o++)
                                                                            {
                                                                                if (new[] {
                                                                                        smaliSearchKeys[10]
                                                                                    }.All(smaliProperties.Lines[o].Contains))
                                                                                {
                                                                                    for (int p = o; p <= scaleIndex.Lines(o, 8); p++)
                                                                                    {
                                                                                        if (new[] {
                                                                                                smaliSearchKeys[11]
                                                                                            }.All(smaliProperties.Lines[p].Contains))
                                                                                        {
                                                                                            for (int q = n; q >= scaleIndex.Lines(n, -12); q--)
                                                                                            {
                                                                                                if (new[] {
                                                                                                        smaliSearchKeys[12]
                                                                                                    }.All(smaliProperties.Lines[q].Contains))
                                                                                                {
                                                                                                    string throwExceptionRegister = smaliProperties.Lines[n].GetRegister(1);
                                                                                                    string stringBuilderFirstRegister = smaliProperties.Lines[m].GetRegister(1);
                                                                                                    string stringBuilderSecondRegister = smaliProperties.Lines[m].GetRegister(2);

                                                                                                    codeInject.Lines(
                                                                                                        [
                                                                                                            (("Litho Tree", true),

                                                                                                            q + 1,

                                                                                                            [
                                                                                                                $"if-nez {smaliProperties.Lines[q].GetRegister(1)}, :litho_tree",
                                                                                                                $"move-object/from16 {throwExceptionRegister}, p1",
                                                                                                                $"invoke-static {{{throwExceptionRegister}}}, {smaliProperties.Lines[o].GetInvokedSection()}",
                                                                                                                $"move-result-object {throwExceptionRegister}",
                                                                                                                $"iget-object {throwExceptionRegister}, {throwExceptionRegister}, {smaliProperties.Lines[p].GetInvokedSection()}",
                                                                                                                $"return-object {throwExceptionRegister}",
                                                                                                                ":litho_tree"
                                                                                                            ]),
                                                                                                        
                                                                                                            (("Litho Tree", true),

                                                                                                            m + 1,

                                                                                                            [
                                                                                                                $"invoke-static {{{stringBuilderFirstRegister}, {smaliProperties.Lines[l].GetRegister(1)}}}, L{blockerPath};->HideLithoView(Ljava/lang/StringBuilder;Ljava/lang/String;)Z",
                                                                                                                $"move-result {stringBuilderFirstRegister}",
                                                                                                                $"if-eqz {stringBuilderFirstRegister}, :litho_component",
                                                                                                                $"const/4 {stringBuilderSecondRegister}, 0x0",
                                                                                                                $"return-object {stringBuilderSecondRegister}",
                                                                                                                ":litho_component"
                                                                                                            ])
                                                                                                        ]
                                                                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\SwipeRefreshLayout.smali"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 6); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Swipe To Refresh Fix", true),

                                                    j + 1,

                                                    [
                                                        $"const/4 {smaliProperties.Lines[j].GetRegister(1)}, 0x0"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Full.ReferenceEntriesCount(smaliSearchKeys[0]).Equals(2))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                        smaliSearchKeys[2]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 27); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[3]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Back To Exit Fix", true),

                                                    j,

                                                    [
                                                        "const/4 v1, 0x0",
                                                        $"sput-boolean v1, L{blockerPath};->isTopView:Z"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(j, 86); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            smaliProperties.SetNewSmaliTarget(smaliProperties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < smaliProperties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(smaliProperties.NewLines[k].Contains))
                                                {
                                                    for (int l = k; l <= scaleIndex.NewLines(l, 5); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[3]
                                                            }.All(smaliProperties.NewLines[l].Contains))
                                                        {
                                                            codeInject.NewLines(
                                                                [
                                                                    (("Back To Exit Fix", true),

                                                                    l + 1,

                                                                    [
                                                                        "const/4 v2, 0x1",
                                                                        $"sput-boolean v2, L{blockerPath};->isTopView:Z"
                                                                    ])
                                                                ]
                                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\watchwhile\\MainActivity.smali"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 32); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Back To Exit Fix", true),

                                                    j,

                                                    [
                                                        $"invoke-static {{p0}}, L{blockerPath};->CloseActivityOnBackPressed(Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;)V"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 10); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 9); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{smaliProperties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 9); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 9); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{smaliProperties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 9); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{smaliProperties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 13); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{smaliProperties.Lines[k].GetRegister(1)}}}, L{blockerPath};->HideLayoutView(Landroid/view/View;)V"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (smaliProperties.Path.EndsWith("\\CompactYpcOfferModuleView.smali"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j < smaliProperties.LinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k >= scaleIndex.Lines(j, -6); k--)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[2]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("Under Video Box", true),

                                                            k,

                                                            [
                                                                $"const/4 {smaliProperties.Lines[k].GetRegister(2)}, 0x0",
                                                                $"const/4 {smaliProperties.Lines[k].GetRegister(3)}, 0x0"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 22); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            smaliProperties.SetNewSmaliTarget(smaliProperties.Lines[j].GetInvokedSectionClass(1));

                                            for (int k = 0; k < smaliProperties.NewLinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliProperties.Lines[j].GetMethodName()
                                                    }.All(smaliProperties.NewLines[k].Contains))
                                                {
                                                    for (int l = k; l <= scaleIndex.NewLines(k, 296); l++)
                                                    {
                                                        if (new[] {
                                                                smaliSearchKeys[3],
                                                                smaliSearchKeys[4]
                                                            }.All(smaliProperties.NewLines[l].Contains))
                                                        {
                                                            for (int m = l; m >= scaleIndex.NewLines(l, -5); m--)
                                                            {
                                                                if (new[] {
                                                                        smaliSearchKeys[5]
                                                                    }.All(smaliProperties.NewLines[m].Contains))
                                                                {
                                                                    codeInject.NewLines(
                                                                        [
                                                                            (("", true),

                                                                            m,

                                                                            [
                                                                                $"const/4 {smaliProperties.NewLines[m].GetRegister(1)}, 0x0"
                                                                            ])
                                                                        ]
                                                                    ).Write();

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
                        SmaliUtils.GetResourceHex(45400072),
                        ".method",
                        ")Z"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -9); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Newer Quality Layout Enabler", true),

                                                    j + 2,

                                                    [
                                                        "const/4 v0, 0x0",
                                                        "return v0"
                                                    ])
                                                ]
                                            ).Write();

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
                        "\"LithoRVSLCBinder\"",
                        ".method public constructor <init>",
                        "move-object/from16",
                        ", p2",
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 12); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2],
                                                smaliSearchKeys[3]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("", true),

                                                    j + 1,

                                                    [
                                                        $"invoke-static {{{smaliProperties.Lines[j].GetRegister(1)}}}, L{blockerPath};->OpenVideoResolutionFlyout(Landroid/support/v7/widget/RecyclerView;)V"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -35); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[1],
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 5); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            k + 1,

                                                            [
                                                               $"const/4 {smaliProperties.Lines[k].GetRegister(1)}, 0x3"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        "\"c.supportedViewport\"",
                        "\"player.exception\"",
                        "\"vprng\"",
                        ".method",
                        "(Ljava/util/List;Ljava/util/Collection;Ljava/lang/String;L",
                        ")[Lcom/google/android/libraries/youtube/innertube/model/media/VideoQuality;",
                        "Lcom/google/android/libraries/youtube/innertube/model/media/FormatStreamModel;->",
                        "()Ljava/lang/String;",
                        "move-result-object",
                        "Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
                        "if-"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[3],
                                        smaliSearchKeys[4],
                                        smaliSearchKeys[5]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 389); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[6],
                                                smaliSearchKeys[7]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            if (patchInteractions.Equals(1)) {
                                                for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                                {
                                                    if (new[] {
                                                            smaliSearchKeys[8]
                                                        }.All(smaliProperties.Lines[k].Contains))
                                                    {
                                                        for (int l = k; l <= scaleIndex.Lines(k, 31); l++)
                                                        {
                                                            if (new[] {
                                                                    smaliSearchKeys[9]
                                                                }.All(smaliProperties.Lines[l].Contains))
                                                            {
                                                                for (int m = l; m >= scaleIndex.Lines(l, -6); m--)
                                                                {
                                                                    if (new[] {
                                                                            smaliSearchKeys[10]
                                                                        }.All(smaliProperties.Lines[m].Contains))
                                                                    {
                                                                        string ifCondRegister = smaliProperties.Lines[m].GetRegister(1);
                                                                        string videoResolutionItemRegister = smaliProperties.Lines[k].GetRegister(1);

                                                                        codeInject.Lines(
                                                                            [
                                                                                (("Premium Resolution Disabler", true),

                                                                                l + 1,

                                                                                [
                                                                                    ":hide_premium_resolution"
                                                                                ]),
                                                                            
                                                                                (("Premium Resolution Disabler", true),

                                                                                l,

                                                                                [
                                                                                    $"invoke-static {{{videoResolutionItemRegister}}}, L{blockerPath};->HidePremiumResolution(Ljava/lang/String;)Z",
                                                                                    $"move-result {ifCondRegister}",
                                                                                    $"if-nez {ifCondRegister}, :hide_premium_resolution"
                                                                                ])
                                                                            ]
                                                                        ).Write();

                                                                        return (0, false, smaliInfo);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }

                                            patchInteractions += 1;
                                        }
                                    }
                                }
                            }
                        }

                        return (0, true, smaliInfo);
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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\TrackingUrlModel.smali"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0],
                                        smaliSearchKeys[1]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j >= scaleIndex.Lines(i, -12); j--)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[2]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k <= scaleIndex.Lines(j, 6); k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[3]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    string trackingUrlRegister = smaliProperties.Lines[k].GetRegister(1);

                                                    codeInject.Lines(
                                                        [
                                                            (("", true),

                                                            k + 1,

                                                            [
                                                                $"invoke-static {{{trackingUrlRegister}}}, L{blockerPath};->overrideTrackingUrl(Landroid/net/Uri;)Landroid/net/Uri;",
                                                                $"move-result-object {trackingUrlRegister}"
                                                            ])
                                                        ]
                                                    ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (smaliProperties.Path.EndsWith("\\values\\colors.xml"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                for (int j = 0; j < smaliSearchKeys.Length; j++)
                                {
                                    if (new[] {
                                            smaliSearchKeys[j]
                                        }.All(smaliProperties.Lines[i].Contains))
                                    {
                                        codeInject.LinesReplace(
                                            [
                                                (("Global Colors Attributes", true),

                                                i,

                                                [
                                                    $"<color name={smaliSearchKeys[j]}>@android:color/black</color>"
                                                ])
                                            ]
                                        );
                                    }
                                }
                            }

                            codeInject.Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[2],
                                        smaliSearchKeys[3]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j <= scaleIndex.Lines(i, 444); j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[4],
                                                smaliSearchKeys[5]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Lines(
                                                [
                                                    (("Litho UI Colors", true),

                                                    j - 1,

                                                    [
                                                        $"invoke-static {{p1}}, L{blockerPath};->ChangeLithoUIColor(I)I",
                                                        "move-result p1"
                                                    ])
                                                ]
                                            ).Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo
                    ) => {
                        if (new[] {
                                smaliSearchKeys[0],
                                smaliSearchKeys[1],
                                smaliSearchKeys[2]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    for (int j = i; j < smaliProperties.LinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[3]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            string[] patch = [
                                                $"invoke-static {{v0}}, L{blockerPath};->GetSystemTheme(Ljava/lang/Enum;)V"
                                            ];

                                            codeInject.Lines(
                                                [
                                                    (("System Theme Setter", true),

                                                    j,

                                                    patch)
                                                ]
                                            ).Write();

                                            j += patch.Length + 1;
                                        }

                                        if (new[] {
                                                smaliSearchKeys[4]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            codeInject.Write();

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
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (new[] {
                                smaliSearchKeys[0]
                            }.All(smaliProperties.Full.Contains))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[1],
                                        smaliSearchKeys[2],
                                        smaliSearchKeys[3]
                                    }.All(smaliProperties.Lines[i].Contains) &&
                                    smaliProperties.Lines[i].MethodParametersCount().Equals(2))
                                {
                                    for (int j = i; j < smaliProperties.LinesCount; j++)
                                    {
                                        if (new[] {
                                                smaliSearchKeys[4],
                                                smaliSearchKeys[0]
                                            }.All(smaliProperties.Lines[j].Contains))
                                        {
                                            for (int k = j; k < smaliProperties.LinesCount; k++)
                                            {
                                                if (new[] {
                                                        smaliSearchKeys[5]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    patchInteractions = patchInteractions.Equals(0) ? 1 : 0;

                                                    codeInject.Lines(
                                                        [
                                                            (("App Theme Setter", true),

                                                            k + 1,

                                                            [
                                                                $"const/4 v1, 0x{patchInteractions}",
                                                                $"sput-boolean v1, L{blockerPath};->isDarkTheme:Z"
                                                            ])
                                                        ]
                                                    ).Write();
                                                }

                                                if (new[] {
                                                        smaliSearchKeys[6]
                                                    }.All(smaliProperties.Lines[k].Contains))
                                                {
                                                    codeInject.Write();

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
                        "<background android:drawable=\"@mipmap/adaptiveproduct_youtube_2024_q4_background_color_108\" />"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (smaliProperties.Path.EndsWith("\\ringo2_ic_launcher.xml"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    codeInject.LinesReplace(
                                        [
                                            (("Custom Launcher Icon", true),

                                            i,

                                            [""])
                                        ]
                                    ).Write();

                                    return (patchInteractions, false, smaliInfo);
                                }
                            }
                        }

                        return (patchInteractions, true, smaliInfo);
                    }
                ).Apply,

                new SmaliUtils.SubPatchModule<string[]>(
                    [
                        "<background android:drawable=\"@mipmap/adaptiveproduct_youtube_2024_q4_background_color_108\" />"
                    ],

                    true,

                    (
                        smaliProperties,
                        smaliSearchKeys,
                        scaleIndex,
                        codeInject,
                        patchInteractions,
                        smaliInfo

                    ) => {
                        if (smaliProperties.Path.EndsWith("\\ringo2_ic_launcher_round.xml"))
                        {
                            smaliProperties.ReadSmaliLines();

                            for (int i = 0; i < smaliProperties.LinesCount; i++)
                            {
                                if (new[] {
                                        smaliSearchKeys[0]
                                    }.All(smaliProperties.Lines[i].Contains))
                                {
                                    codeInject.LinesReplace(
                                        [
                                            (("Custom Launcher Icon", true),

                                            i,

                                            [""])
                                        ]
                                    ).Write();

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