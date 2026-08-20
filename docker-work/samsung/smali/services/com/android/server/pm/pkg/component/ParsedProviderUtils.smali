.class public Lcom/android/server/pm/pkg/component/ParsedProviderUtils;
.super Ljava/lang/Object;
.source "ParsedProviderUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseGrantUriPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedProviderImpl;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 222
    :try_start_6
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 225
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_1b

    .line 228
    new-instance v1, Landroid/os/PatternMatcher;

    invoke-direct {v1, v4, v5}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_4b

    :cond_1b
    const/4 v4, 0x2

    .line 230
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_28

    .line 233
    new-instance v1, Landroid/os/PatternMatcher;

    invoke-direct {v1, v7, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_4b

    .line 235
    :cond_28
    invoke-virtual {p2, v6, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 238
    new-instance v1, Landroid/os/PatternMatcher;

    invoke-direct {v1, v4, v6}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_4b

    .line 240
    :cond_34
    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 243
    new-instance v1, Landroid/os/PatternMatcher;

    invoke-direct {v1, v4, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_4b

    .line 245
    :cond_40
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 248
    new-instance v1, Landroid/os/PatternMatcher;

    invoke-direct {v1, v2, v3}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    :cond_4b
    :goto_4b
    if-eqz v1, :cond_54

    .line 256
    invoke-virtual {p0, v1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->addUriPermissionPattern(Landroid/os/PatternMatcher;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    .line 257
    invoke-virtual {p0, v6}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    goto :goto_82

    :cond_54
    const-string v1, "PackageParsing"

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <path-permission>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_82
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_86
    .catchall {:try_start_6 .. :try_end_86} :catchall_8a

    .line 269
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_8a
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    throw p0
.end method

.method public static parsePathPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedProviderImpl;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 276
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 279
    :try_start_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 281
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 283
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1f

    move-object v8, v6

    :cond_1f
    const/4 v9, 0x2

    .line 288
    invoke-virtual {v2, v9, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_27

    goto :goto_28

    :cond_27
    move-object v6, v10

    :goto_28
    if-eqz v8, :cond_30

    .line 296
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move v10, v7

    goto :goto_31

    :cond_30
    move v10, v5

    :goto_31
    if-eqz v6, :cond_38

    .line 300
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_e7

    move v10, v7

    :cond_38
    const-string v11, " "

    const-string v12, " at "

    const-string v13, "PackageParsing"

    if-nez v10, :cond_70

    .line 309
    :try_start_40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No readPermission or writePermission for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_6c
    .catchall {:try_start_40 .. :try_end_6c} :catchall_e7

    .line 366
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_70
    const/4 v10, 0x0

    const/4 v14, 0x7

    .line 317
    :try_start_72
    invoke-virtual {v2, v14, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    if-eqz v14, :cond_7f

    .line 319
    new-instance v10, Landroid/content/pm/PathPermission;

    invoke-direct {v10, v14, v15, v8, v6}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    :cond_7f
    const/4 v14, 0x5

    .line 322
    invoke-virtual {v2, v14, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8c

    .line 324
    new-instance v10, Landroid/content/pm/PathPermission;

    invoke-direct {v10, v14, v9, v8, v6}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    :cond_8c
    const/4 v9, 0x4

    .line 327
    invoke-virtual {v2, v9, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_99

    .line 330
    new-instance v10, Landroid/content/pm/PathPermission;

    invoke-direct {v10, v14, v7, v8, v6}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    :cond_99
    const/4 v7, 0x6

    .line 333
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a6

    .line 336
    new-instance v10, Landroid/content/pm/PathPermission;

    invoke-direct {v10, v7, v9, v8, v6}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 339
    :cond_a6
    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b1

    .line 342
    new-instance v10, Landroid/content/pm/PathPermission;

    invoke-direct {v10, v7, v5, v8, v6}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_b1
    :goto_b1
    if-eqz v10, :cond_b7

    .line 351
    invoke-virtual {v0, v10}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->addPathPermission(Landroid/content/pm/PathPermission;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    goto :goto_df

    .line 358
    :cond_b7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_df
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_e3
    .catchall {:try_start_72 .. :try_end_e3} :catchall_e7

    .line 366
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_e7
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    throw v0
.end method

.method public static parseProvider([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p7

    .line 59
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v9

    .line 60
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 61
    new-instance v7, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v7}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;-><init>()V

    .line 62
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    .line 64
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    invoke-virtual {v6, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v10, 0x11

    const/16 v11, 0xe

    const/16 v12, 0x12

    const/4 v13, 0x6

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0xf

    const/16 v17, 0x2

    const/16 v18, 0x8

    const/16 v19, 0x13

    const/16 v20, 0x15

    const/16 v21, 0x17

    move-object v1, v7

    move-object/from16 v2, v22

    move-object/from16 v3, p0

    move-object/from16 p0, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move/from16 v6, p4

    move-object/from16 v23, v7

    move/from16 v7, p5

    move-object/from16 v24, v8

    move-object/from16 v8, p6

    move/from16 v25, v9

    move-object/from16 v9, p7

    .line 67
    :try_start_4b
    invoke-static/range {v1 .. v21}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 82
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_14c

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_5d
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v3, p0

    .line 85
    :try_start_62
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    .line 90
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v6, v23

    invoke-virtual {v6, v4}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setSyncable(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v4

    const/4 v5, 0x7

    const/16 v7, 0x11

    const/4 v8, 0x1

    move/from16 v9, v25

    if-ge v9, v7, :cond_7c

    move v7, v8

    goto :goto_7d

    :cond_7c
    move v7, v2

    .line 92
    :goto_7d
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    const/4 v4, 0x3

    .line 95
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 97
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_91

    move-object v5, v4

    :cond_91
    if-nez v5, :cond_9b

    .line 103
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPermission()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    goto :goto_9e

    .line 105
    :cond_9b
    invoke-virtual {v6, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    :goto_9e
    const/4 v5, 0x5

    .line 107
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a6

    goto :goto_a7

    :cond_a6
    move-object v4, v5

    :goto_a7
    if-nez v4, :cond_b1

    .line 113
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPermission()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    goto :goto_b4

    .line 115
    :cond_b1
    invoke-virtual {v6, v4}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    :goto_b4
    const/16 v4, 0xd

    .line 119
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 118
    invoke-virtual {v6, v4}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v4

    const/16 v5, 0x16

    .line 121
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 120
    invoke-virtual {v4, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setForceUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v4

    const/16 v5, 0x9

    .line 124
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 123
    invoke-virtual {v4, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setMultiProcess(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v4

    const/16 v5, 0xc

    .line 125
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setInitOrder(I)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v4

    .line 126
    invoke-virtual {v6}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    const/16 v9, 0x10

    invoke-static {v7, v9, v3}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    const/16 v4, 0x14

    .line 129
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 132
    invoke-virtual {v6}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v2

    const/high16 v4, 0x100000

    or-int/2addr v2, v4

    invoke-virtual {v6, v2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    move-object/from16 v2, p1

    .line 133
    invoke-interface {v2, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_103
    .catchall {:try_start_62 .. :try_end_103} :catchall_14a

    goto :goto_106

    :cond_104
    move-object/from16 v2, p1

    .line 136
    :goto_106
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isCantSaveState()Z

    move-result v3

    if-eqz v3, :cond_122

    .line 141
    invoke-virtual {v6}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getProcessName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v24

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    const-string v1, "Heavy-weight applications can not have providers in main process"

    .line 142
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_122
    if-nez v1, :cond_12b

    const-string v1, "<provider> does not include authorities attribute"

    .line 148
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 150
    :cond_12b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_138

    const-string v1, "<provider> has empty authorities attribute"

    .line 151
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 153
    :cond_138
    invoke-virtual {v6, v1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setAuthority(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p7

    .line 155
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseProviderTags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/server/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_14a
    move-exception v0

    goto :goto_14f

    :catchall_14c
    move-exception v0

    move-object/from16 v3, p0

    .line 136
    :goto_14f
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    throw v0
.end method

.method public static parseProviderTags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/server/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Lcom/android/server/pm/pkg/component/ParsedProviderImpl;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 163
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 165
    :cond_e
    :goto_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1e

    .line 167
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v15, :cond_d1

    :cond_1e
    const/4 v3, 0x2

    if-eq v0, v3, :cond_22

    goto :goto_e

    .line 172
    :cond_22
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_d6

    :goto_31
    move v1, v4

    goto :goto_6c

    :sswitch_33
    const-string/jumbo v1, "path-permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_31

    :cond_3d
    const/4 v1, 0x4

    goto :goto_6c

    :sswitch_3f
    const-string/jumbo v1, "property"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_31

    :cond_49
    move v1, v2

    goto :goto_6c

    :sswitch_4b
    const-string/jumbo v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_31

    :cond_55
    move v1, v3

    goto :goto_6c

    :sswitch_57
    const-string/jumbo v2, "meta-data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto :goto_31

    :sswitch_61
    const-string/jumbo v1, "grant-uri-permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_31

    :cond_6b
    const/4 v1, 0x0

    :cond_6c
    :goto_6c
    packed-switch v1, :pswitch_data_ec

    move-object/from16 v9, p1

    .line 204
    invoke-static {v9, v10, v12, v14}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_c6

    :pswitch_76
    move-object/from16 v9, p1

    .line 200
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parsePathPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_c6

    :pswitch_7d
    move-object/from16 v9, p1

    .line 193
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_c6

    :pswitch_84
    move-object/from16 v9, p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v9, p6

    .line 177
    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 183
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 184
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Landroid/content/IntentFilter;->getOrder()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getOrder()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setOrder(I)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 186
    invoke-virtual {v13, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->addIntent(Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;)V

    goto :goto_c6

    .line 190
    :pswitch_bd
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_c6

    .line 196
    :pswitch_c2
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseGrantUriPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 208
    :cond_c6
    :goto_c6
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 209
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 213
    :cond_d1
    invoke-interface {v14, v13}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :sswitch_data_d6
    .sparse-switch
        -0x6c28de5f -> :sswitch_61
        -0x4284098e -> :sswitch_57
        -0x3d616837 -> :sswitch_4b
        -0x3b32222b -> :sswitch_3f
        0x25eb3477 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_bd
        :pswitch_84
        :pswitch_7d
        :pswitch_76
    .end packed-switch
.end method
