.class public Lcom/android/server/pm/pkg/component/ParsedActivityUtils;
.super Ljava/lang/Object;
.source "ParsedActivityUtils.java"


# static fields
.field public static final LOG_UNSAFE_BROADCASTS:Z = false

.field public static final RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field public static final SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityConfigChanges(II)I
    .registers 2

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static getActivityResizeMode(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I
    .registers 7

    .line 512
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x28

    .line 514
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2f

    if-eqz v0, :cond_10

    goto :goto_2f

    .line 525
    :cond_10
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isResizeableActivityViaSdkVersion()Z

    move-result p0

    if-eqz p0, :cond_17

    return v3

    .line 533
    :cond_17
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x6

    return p0

    .line 535
    :cond_1f
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x5

    return p0

    :cond_27
    const/16 p0, 0xe

    if-ne p2, p0, :cond_2d

    const/4 p0, 0x7

    return p0

    :cond_2d
    const/4 p0, 0x4

    return p0

    :cond_2f
    :goto_2f
    const/4 p0, 0x0

    if-eqz v0, :cond_39

    .line 518
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_39

    goto :goto_3a

    :cond_39
    move v3, p0

    .line 517
    :goto_3a
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_41

    const/4 p0, 0x2

    :cond_41
    return p0
.end method

.method public static parseActivityAlias(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p5

    .line 237
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v9, p1

    move-object/from16 v8, p2

    invoke-virtual {v9, v8, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v1, 0x7

    const/16 v2, 0x400

    .line 239
    :try_start_f
    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    const-string v1, "<activity-alias> does not specify android:targetActivity"

    .line 243
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_115

    .line 302
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 246
    :cond_1f
    :try_start_1f
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v2, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty class name in package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_115

    .line 302
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_42
    const/4 v2, 0x0

    .line 254
    :try_start_43
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v3

    .line 255
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    const/16 v22, 0x0

    move/from16 v5, v22

    :goto_4f
    if-ge v5, v4, :cond_66

    .line 257
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 258
    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_63

    move-object v2, v6

    goto :goto_66

    :cond_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_66
    :goto_66
    if-nez v2, :cond_95

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<activity-alias> target activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in manifest with activities = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parsedActivities = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_91
    .catchall {:try_start_43 .. :try_end_91} :catchall_115

    .line 302
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 271
    :cond_95
    :try_start_95
    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->makeAlias(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v23

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24
    :try_end_b3
    .catchall {:try_start_95 .. :try_end_b3} :catchall_115

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x6

    const/4 v12, -0x1

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x2

    const/16 v18, -0x1

    const/16 v19, 0xb

    const/16 v20, -0x1

    const/16 v21, 0xc

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v4, p0

    move-object v5, v7

    move-object/from16 v25, v7

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 274
    :try_start_d7
    invoke-static/range {v1 .. v21}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 288
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 289
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_e5
    .catchall {:try_start_d7 .. :try_end_e5} :catchall_113

    .line 302
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 294
    :cond_e9
    :try_start_e9
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f5

    const/4 v1, 0x1

    move v9, v1

    goto :goto_f7

    :cond_f5
    move/from16 v9, v22

    :goto_f7
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v11, 0x9

    const/4 v12, 0x3

    const/4 v13, 0x5

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move-object/from16 v3, v24

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, v25

    move-object/from16 v10, p5

    .line 296
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/server/pm/pkg/component/ParsedActivityImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_10f
    .catchall {:try_start_e9 .. :try_end_10f} :catchall_113

    .line 302
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_113
    move-exception v0

    goto :goto_118

    :catchall_115
    move-exception v0

    move-object/from16 v25, v7

    :goto_118
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    .line 303
    throw v0
.end method

.method public static parseActivityOrAlias(Lcom/android/server/pm/pkg/component/ParsedActivityImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedActivityImpl;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/TypedArray;",
            "ZZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "III)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p9

    move/from16 v0, p12

    const/16 v1, 0x400

    move/from16 v2, p10

    .line 321
    invoke-virtual {v11, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 323
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {v2, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_45

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " specified invalid parentActivityName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageParsing"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 329
    :cond_45
    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setParentActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    :cond_48
    :goto_48
    const/4 v13, 0x0

    move/from16 v1, p11

    .line 333
    invoke-virtual {v11, v1, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz p7, :cond_55

    .line 338
    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    goto :goto_5f

    :cond_55
    if-eqz v1, :cond_58

    goto :goto_5c

    .line 340
    :cond_58
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPermission()Ljava/lang/String;

    move-result-object v1

    :goto_5c
    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    :goto_5f
    if-eqz p7, :cond_64

    const/16 v1, 0xe

    goto :goto_66

    :cond_64
    const/16 v1, 0x3d

    .line 344
    :goto_66
    invoke-static {v11, v10, v1, v12}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 347
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 348
    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 351
    :cond_75
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_80

    .line 353
    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 357
    :cond_80
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_8d

    .line 359
    invoke-virtual {v11, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 362
    :cond_8d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 364
    :cond_91
    :goto_91
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a1

    .line 366
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v15, :cond_17f

    :cond_a1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a5

    goto :goto_91

    .line 372
    :cond_a5
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    xor-int/lit8 v2, p6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v3, p8

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p9

    .line 373
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 375
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 376
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz v1, :cond_fa

    .line 378
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 379
    invoke-virtual {v2}, Landroid/content/IntentFilter;->getOrder()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getOrder()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setOrder(I)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 380
    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->addIntent(Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;)V

    goto :goto_fa

    .line 401
    :cond_e9
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 402
    invoke-static {v7, v8, v10, v9, v12}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    :cond_fa
    :goto_fa
    move-object v1, v0

    move-object/from16 v0, p2

    goto/16 :goto_174

    .line 403
    :cond_ff
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "property"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 404
    invoke-static {v7, v8, v10, v9, v12}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_fa

    :cond_111
    if-nez p6, :cond_149

    if-nez p7, :cond_149

    .line 405
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preferred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v3, p8

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p9

    .line 406
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 409
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 410
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz v1, :cond_fa

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_fa

    :cond_149
    if-nez p6, :cond_16e

    if-nez p7, :cond_16e

    .line 416
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 418
    invoke-static {v10, v9, v12}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 420
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    goto :goto_fa

    :cond_16e
    move-object/from16 v0, p2

    .line 424
    invoke-static {v0, v8, v9, v12}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 427
    :goto_174
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 428
    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_17f
    if-nez p7, :cond_1aa

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getLaunchMode()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1aa

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "android.activity.launch_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1aa

    const-string/jumbo v3, "singleInstancePerTask"

    .line 437
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 438
    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    :cond_1aa
    if-nez p7, :cond_1cb

    const/16 v0, 0x3b

    .line 445
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.can_display_on_remote_devices"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1bf

    move v0, v13

    :cond_1bf
    if-eqz v0, :cond_1cb

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    invoke-virtual {v7, v0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 458
    :cond_1cb
    invoke-static {v7, v12}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->resolveActivityWindowLayout(Lcom/android/server/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 459
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 460
    invoke-interface {v12, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 462
    :cond_1da
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v7, v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    if-nez v14, :cond_226

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f0

    move v13, v1

    :cond_1f0
    if-eqz v13, :cond_223

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Targeting S+ (version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and above) requires that an explicit value for android:exported be defined when intent filters are present"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x8f45e27

    .line 467
    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 472
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_223

    .line 473
    invoke-interface {v12, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 476
    :cond_223
    invoke-virtual {v7, v13}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 479
    :cond_226
    invoke-interface {v12, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseActivityOrReceiver([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 33
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

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
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v9, p7

    .line 90
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 91
    new-instance v7, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v7}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 93
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "receiver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 95
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    invoke-virtual {v6, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v10, 0x1e

    const/16 v11, 0x11

    const/16 v12, 0x2a

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x17

    const/16 v17, 0x3

    const/16 v18, 0x7

    const/16 v19, 0x2c

    const/16 v20, 0x30

    const/16 v21, 0x39

    move-object v1, v7

    move-object/from16 v2, v23

    move-object/from16 v3, p0

    move-object/from16 p0, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move/from16 v6, p4

    move-object/from16 p4, v7

    move/from16 v7, p5

    move-object/from16 v24, v8

    move-object/from16 v8, p6

    move-object v0, v9

    move-object/from16 v9, p7

    .line 98
    :try_start_69
    invoke-static/range {v1 .. v21}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 112
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 113
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_77
    .catchall {:try_start_69 .. :try_end_77} :catchall_2d3

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_7b
    if-eqz v22, :cond_99

    .line 116
    :try_start_7d
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isCantSaveState()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 118
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    const-string v1, "Heavy-weight applications can not have receivers in main process"

    .line 119
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_95
    .catchall {:try_start_7d .. :try_end_95} :catchall_2d3

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_99
    move-object/from16 v2, v24

    :cond_9b
    const/4 v1, 0x0

    move-object/from16 v14, p0

    .line 128
    :try_start_9e
    invoke-virtual {v14, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v4, p4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setTheme(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x1a

    .line 129
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getUiOptions()I

    move-result v6

    invoke-virtual {v14, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setUiOptions(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 131
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    const/16 v5, 0x40

    const/16 v6, 0x13

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAllowTaskReparenting()Z

    move-result v7

    invoke-static {v5, v6, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v5

    const/16 v6, 0x12

    const/16 v7, 0x8

    .line 132
    invoke-static {v7, v6, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0xb

    const/4 v8, 0x4

    .line 133
    invoke-static {v8, v6, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0xd

    const/16 v9, 0x20

    .line 134
    invoke-static {v9, v6, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x100

    const/16 v10, 0x16

    .line 135
    invoke-static {v6, v10, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0xa

    const/4 v10, 0x2

    .line 136
    invoke-static {v10, v6, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x800

    const/16 v11, 0x18

    .line 137
    invoke-static {v6, v11, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x9

    const/4 v11, 0x1

    .line 138
    invoke-static {v11, v6, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x80

    const/16 v12, 0x15

    .line 139
    invoke-static {v6, v12, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x27

    const/16 v12, 0x400

    .line 140
    invoke-static {v12, v6, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x1d

    .line 141
    invoke-static {v12, v6, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0xc

    const/16 v13, 0x10

    .line 142
    invoke-static {v13, v6, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/high16 v6, 0x20000000

    const/16 v15, 0x3f

    .line 143
    invoke-static {v6, v15, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 131
    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    if-nez v22, :cond_263

    .line 146
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    const/16 v5, 0x200

    const/16 v6, 0x19

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isBaseHardwareAccelerated()Z

    move-result v15

    invoke-static {v5, v6, v15, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v5

    const/high16 v6, -0x80000000

    const/16 v15, 0x1f

    .line 147
    invoke-static {v6, v15, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/high16 v6, 0x40000

    const/16 v15, 0x3e

    .line 148
    invoke-static {v6, v15, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x2000

    const/16 v15, 0x23

    .line 149
    invoke-static {v6, v15, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x1000

    const/16 v15, 0x24

    .line 150
    invoke-static {v6, v15, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x4000

    const/16 v15, 0x25

    .line 151
    invoke-static {v6, v15, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/high16 v6, 0x800000

    const/16 v15, 0x33

    .line 152
    invoke-static {v6, v15, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/high16 v6, 0x400000

    const/16 v15, 0x29

    .line 153
    invoke-static {v6, v15, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/high16 v6, 0x1000000

    const/16 v15, 0x34

    .line 154
    invoke-static {v6, v15, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/high16 v6, 0x2000000

    const/16 v15, 0x38

    .line 155
    invoke-static {v6, v15, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    const/high16 v5, 0x10000000

    const/16 v6, 0x3c

    .line 156
    invoke-static {v5, v6, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v3, v5

    .line 146
    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 158
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v3

    const/16 v5, 0x36

    invoke-static {v11, v5, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    const/16 v6, 0x3a

    .line 160
    invoke-static {v10, v6, v11, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 158
    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    const/16 v3, 0x31

    .line 163
    invoke-virtual {v14, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setColorMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x21

    .line 164
    invoke-virtual {v14, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setDocumentLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0xe

    .line 165
    invoke-virtual {v14, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x26

    .line 166
    invoke-virtual {v14, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLockTaskLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x22

    .line 167
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v6

    invoke-virtual {v14, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMaxRecents(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 168
    invoke-virtual {v14, v9, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPersistableMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x2b

    .line 169
    invoke-virtual {v14, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setRequestedVrComponent(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x2e

    const/4 v6, -0x1

    .line 170
    invoke-virtual {v14, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setRotationAnimation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x14

    .line 171
    invoke-virtual {v14, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setSoftInputMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 173
    invoke-virtual {v14, v13, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v9, 0x2f

    .line 174
    invoke-virtual {v14, v9, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 172
    invoke-static {v5, v9}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    const/16 v3, 0xf

    .line 177
    invoke-virtual {v14, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object v10, v0

    move-object/from16 v0, p1

    .line 178
    invoke-static {v0, v14, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->getActivityResizeMode(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I

    move-result v5

    .line 179
    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setScreenOrientation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 180
    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setResizeMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    const/16 v3, 0x32

    .line 182
    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_24d

    .line 183
    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    if-ne v6, v8, :cond_24d

    .line 186
    invoke-virtual {v14, v3, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 185
    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMaxAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    :cond_24d
    const/16 v3, 0x35

    .line 190
    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_27e

    .line 191
    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    if-ne v6, v8, :cond_27e

    .line 194
    invoke-virtual {v14, v3, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 193
    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMinAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    goto :goto_27e

    :cond_263
    move-object v10, v0

    move-object/from16 v0, p1

    .line 198
    invoke-virtual {v4, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 199
    invoke-virtual {v3, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 200
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v8, 0x1c

    invoke-static {v6, v8, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 204
    :cond_27e
    :goto_27e
    invoke-virtual {v14, v7, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTaskAffinity()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-static {v2, v5, v3, v10}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 210
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_298

    .line 211
    invoke-interface {v10, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_294
    .catchall {:try_start_9e .. :try_end_294} :catchall_2d1

    .line 229
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 214
    :cond_298
    :try_start_298
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    const/16 v2, 0x2d

    .line 216
    invoke-virtual {v14, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_2b6

    .line 218
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    invoke-virtual {v4, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 219
    invoke-interface {v0, v11}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_2b6
    const/4 v8, 0x0

    const/16 v11, 0x1b

    const/4 v12, 0x4

    const/4 v13, 0x6

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v14

    move/from16 v7, v22

    move-object/from16 v10, p7

    .line 222
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/server/pm/pkg/component/ParsedActivityImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2cd
    .catchall {:try_start_298 .. :try_end_2cd} :catchall_2d1

    .line 229
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_2d1
    move-exception v0

    goto :goto_2d6

    :catchall_2d3
    move-exception v0

    move-object/from16 v14, p0

    :goto_2d6
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    throw v0
.end method

.method public static parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    .line 547
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x3

    .line 553
    :try_start_7
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v0, v1, :cond_19

    .line 555
    invoke-virtual {p0, p1, v4, v4, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    move v6, p1

    goto :goto_22

    :cond_19
    if-ne v0, v2, :cond_21

    .line 558
    invoke-virtual {p0, p1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    move v6, v3

    goto :goto_23

    :cond_21
    move v6, v3

    :goto_22
    move p1, v5

    :goto_23
    const/4 v0, 0x4

    .line 561
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7

    if-ne v7, v1, :cond_2f

    .line 563
    invoke-virtual {p0, v0, v4, v4, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v3

    goto :goto_38

    :cond_2f
    if-ne v7, v2, :cond_38

    .line 566
    invoke-virtual {p0, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move v7, v3

    move v3, v0

    goto :goto_3a

    :cond_38
    :goto_38
    move v7, v3

    move v3, v5

    :goto_3a
    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 569
    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 570
    invoke-virtual {p0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    const/4 v0, 0x2

    .line 571
    invoke-virtual {p0, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 574
    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 576
    new-instance v12, Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v0, v12

    move v1, p1

    move v2, v6

    move v4, v7

    move v5, v8

    move v6, v9

    move v7, v10

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    .line 579
    invoke-interface {p2, v12}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_63

    .line 581
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_63
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 582
    throw p1
.end method

.method public static parseIntentFilter(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/server/pm/pkg/component/ParsedActivityImpl;",
            "ZZ",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
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

    move-object v10, p1

    move-object/from16 v11, p6

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move v4, p3

    move v7, p2

    move-object/from16 v9, p6

    .line 487
    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 492
    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 495
    :cond_1f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz v0, :cond_4b

    .line 497
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 499
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 501
    :cond_3b
    invoke-virtual {v1}, Landroid/content/IntentFilter;->isImplicitlyVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 503
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v1

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    .line 502
    invoke-virtual {p1, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 507
    :cond_4b
    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static resolveActivityWindowLayout(Lcom/android/server/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    .line 594
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 596
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 600
    :cond_15
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 601
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 604
    :cond_2c
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 606
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    if-nez p0, :cond_4a

    .line 608
    new-instance p0, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    goto :goto_4c

    .line 612
    :cond_4a
    iput-object v10, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 614
    :goto_4c
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method
