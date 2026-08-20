.class public Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;
.super Ljava/lang/Object;
.source "ParsedMainComponentUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseIntentFilter(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZZZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v7, p9

    .line 120
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object/from16 v6, p9

    .line 119
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 123
    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1c
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 127
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    if-nez v3, :cond_66

    if-eqz p8, :cond_66

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No actions in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageParsing"

    .line 130
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 133
    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_66
    if-eqz p4, :cond_6a

    const/4 v1, 0x1

    goto :goto_75

    :cond_6a
    if-eqz p7, :cond_74

    .line 140
    invoke-static {v1}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isImplicitlyExposedIntent(Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x2

    goto :goto_75

    :cond_74
    const/4 v1, 0x0

    .line 145
    :goto_75
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 147
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;
    .registers 37
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "IZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "IIIIIIIIIIII)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p7

    move-object/from16 v12, p8

    move/from16 v11, p11

    move/from16 v10, p12

    move/from16 v9, p17

    move/from16 v8, p19

    move/from16 v7, p20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move v15, v8

    move/from16 v8, p13

    move v15, v9

    move/from16 v9, p14

    move v15, v10

    move/from16 v10, p15

    move v15, v11

    move/from16 v11, p16

    move/from16 v12, p18

    .line 54
    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_3b

    return-object v0

    :cond_3b
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v15, v2, :cond_53

    .line 62
    invoke-virtual {v14, v15, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->isDirectBootAware()Z

    move-result v3

    if-eqz v3, :cond_53

    move-object/from16 v3, p3

    .line 64
    invoke-interface {v3, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_55

    :cond_53
    move-object/from16 v3, p3

    :goto_55
    move/from16 v4, p12

    if-eq v4, v2, :cond_60

    .line 69
    invoke-virtual {v14, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    :cond_60
    move/from16 v0, p17

    if-eq v0, v2, :cond_a8

    .line 74
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_73

    const/16 v4, 0x400

    .line 75
    invoke-virtual {v14, v0, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_77

    .line 81
    :cond_73
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_77
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 p9, v4

    move-object/from16 p10, v3

    move-object/from16 p11, v0

    move/from16 p12, p5

    move-object/from16 p13, p2

    move-object/from16 p14, p8

    .line 85
    invoke-static/range {p9 .. p14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_9c

    move-object/from16 v3, p8

    .line 89
    invoke-interface {v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_9c
    move-object/from16 v3, p8

    .line 92
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    goto :goto_aa

    :cond_a8
    move-object/from16 v3, p8

    :goto_aa
    move/from16 v0, p19

    if-eq v0, v2, :cond_b5

    .line 96
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setSplitName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    :cond_b5
    move-object/from16 v0, p7

    if-eqz v0, :cond_c2

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getSplitName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c2

    .line 100
    invoke-virtual {v13, v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setSplitName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    :cond_c2
    move/from16 v0, p20

    if-eq v0, v2, :cond_d5

    .line 104
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d5

    const-string v1, "\\|"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setAttributionTags([Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 110
    :cond_d5
    invoke-interface {v3, v13}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method
