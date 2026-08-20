.class public Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;
.super Ljava/lang/Object;
.source "ParsedIntentInfoUtils.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "PackageParsing"

.field public static final sRRFilter:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 61
    invoke-static {}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->getInstance()Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->sRRFilter:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseData(Lcom/android/server/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 207
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    .line 208
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 210
    :try_start_b
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_ed

    if-eqz v0, :cond_22

    .line 214
    :try_start_11
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_ed

    goto :goto_22

    :catch_15
    move-exception p0

    .line 216
    :try_start_16
    invoke-virtual {p0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_ed

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_22
    :goto_22
    const/16 v0, 0xa

    .line 220
    :try_start_24
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 223
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addMimeGroup(Ljava/lang/String;)V

    :cond_2d
    const/4 v0, 0x1

    .line 226
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 229
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_37
    const/4 v1, 0x7

    .line 232
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 235
    invoke-virtual {p0, v1, p2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_41
    const/16 v1, 0x8

    .line 239
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 242
    invoke-virtual {p0, v1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_4c
    const/16 v1, 0x9

    .line 246
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_65

    if-nez p3, :cond_62

    const-string/jumbo p0, "sspPattern not allowed here; ssp must be literal"

    .line 250
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_5e
    .catchall {:try_start_24 .. :try_end_5e} :catchall_ed

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 253
    :cond_62
    :try_start_62
    invoke-virtual {p0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_65
    const/16 v1, 0xe

    .line 257
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    if-eqz v1, :cond_7e

    if-nez p3, :cond_7b

    const-string/jumbo p0, "sspAdvancedPattern not allowed here; ssp must be literal"

    .line 261
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_ed

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 264
    :cond_7b
    :try_start_7b
    invoke-virtual {p0, v1, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_7e
    const/16 v1, 0xc

    .line 268
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    if-eqz v1, :cond_8a

    .line 271
    invoke-virtual {p0, v1, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 276
    :cond_8a
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_97

    .line 281
    invoke-virtual {p0, v1, v5}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_97
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a0

    .line 287
    invoke-virtual {p0, v1, p2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_a0
    const/4 v1, 0x5

    .line 290
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_aa

    .line 293
    invoke-virtual {p0, v1, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_aa
    const/4 v0, 0x6

    .line 296
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c1

    if-nez p3, :cond_be

    const-string/jumbo p0, "pathPattern not allowed here; path must be literal"

    .line 300
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_ba
    .catchall {:try_start_7b .. :try_end_ba} :catchall_ed

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 303
    :cond_be
    :try_start_be
    invoke-virtual {p0, v0, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_c1
    const/16 v0, 0xd

    .line 306
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d9

    if-nez p3, :cond_d6

    const-string/jumbo p0, "pathAdvancedPattern not allowed here; path must be literal"

    .line 310
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_d2
    .catchall {:try_start_be .. :try_end_d2} :catchall_ed

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 313
    :cond_d6
    :try_start_d6
    invoke-virtual {p0, v0, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_d9
    const/16 p3, 0xb

    .line 316
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e4

    .line 319
    invoke-virtual {p0, p2, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_e4
    const/4 p0, 0x0

    .line 323
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_e9
    .catchall {:try_start_d6 .. :try_end_e9} :catchall_ed

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_ed
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    throw p0
.end method

.method public static parseIntentInfo(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    .line 69
    new-instance v3, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-direct {v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;-><init>()V

    .line 70
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 71
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 74
    :try_start_17
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 73
    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    const/4 v8, 0x3

    .line 75
    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->setOrder(I)V

    .line 77
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    if-eqz v9, :cond_3c

    .line 79
    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v10}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 80
    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    if-nez v10, :cond_3c

    .line 81
    invoke-virtual {v9}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 85
    :cond_3c
    sget-boolean v9, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v9, :cond_48

    const/4 v9, 0x7

    .line 86
    invoke-virtual {v5, v9, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 90
    :cond_48
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIcon()I

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_56

    .line 92
    invoke-virtual {v5, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 91
    invoke-virtual {v3, v9}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    :cond_56
    if-eqz p5, :cond_60

    const/4 v9, 0x6

    .line 96
    invoke-virtual {v5, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->setAutoVerify(Z)V
    :try_end_60
    .catchall {:try_start_17 .. :try_end_60} :catchall_180

    .line 101
    :cond_60
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 106
    :goto_6c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    if-eq v11, v10, :cond_13e

    if-ne v11, v8, :cond_7a

    .line 108
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v9, :cond_13e

    :cond_7a
    if-eq v11, v6, :cond_7d

    goto :goto_6c

    .line 114
    :cond_7d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 115
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_186

    goto :goto_ad

    :sswitch_8d
    const-string v13, "category"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_96

    goto :goto_ad

    :cond_96
    move v12, v6

    goto :goto_ad

    :sswitch_98
    const-string v13, "data"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a1

    goto :goto_ad

    :cond_a1
    move v12, v10

    goto :goto_ad

    :sswitch_a3
    const-string v13, "action"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ac

    goto :goto_ad

    :cond_ac
    move v12, v7

    :goto_ad
    const/4 v11, 0x0

    const-wide/32 v13, 0x9029125

    const-string/jumbo v15, "name"

    const-string/jumbo v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "No value supplied for <android:name>"

    packed-switch v12, :pswitch_data_194

    const-string v6, "<intent-filter>"

    move-object/from16 v12, p1

    .line 158
    invoke-static {v6, v12, v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto/16 :goto_12f

    :pswitch_c6
    move-object/from16 v12, p1

    .line 140
    invoke-interface {v1, v6, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d3

    .line 142
    invoke-interface {v2, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_12f

    .line 143
    :cond_d3
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e1

    .line 144
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 146
    invoke-interface {v2, v7, v13, v14}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_12f

    .line 149
    :cond_e1
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 150
    invoke-interface {v2, v11}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_12f

    :pswitch_e9
    move-object/from16 v12, p1

    move/from16 v6, p4

    .line 155
    invoke-static {v3, v0, v1, v6, v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->parseData(Lcom/android/server/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v6, v7

    goto :goto_12f

    :pswitch_f3
    move-object/from16 v12, p1

    .line 117
    invoke-interface {v1, v6, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_100

    .line 119
    invoke-interface {v2, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_12f

    .line 120
    :cond_100
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_10e

    .line 121
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    invoke-interface {v2, v7, v13, v14}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_12f

    .line 126
    :cond_10e
    sget-object v7, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->sRRFilter:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    if-eqz v7, :cond_128

    .line 127
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 128
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v14

    .line 129
    invoke-virtual {v7, v13, v14, v6}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->filterReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_128

    .line 130
    new-instance v7, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;

    invoke-direct {v7, v6, v13, v14}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_128
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    invoke-interface {v2, v11}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 162
    :goto_12f
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_13a

    .line 163
    invoke-interface {v2, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_13a
    const/4 v6, 0x2

    const/4 v7, 0x0

    goto/16 :goto_6c

    :cond_13e
    const-string v0, "android.intent.category.DEFAULT"

    .line 167
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setHasDefault(Z)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 170
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14b
    :goto_14b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;

    .line 172
    iget-object v5, v1, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->isPackageXXXIntent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_167

    .line 173
    invoke-static {v4}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->hasPackageSSP(Landroid/content/IntentFilter;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/4 v5, 0x0

    goto :goto_168

    :cond_167
    move v5, v10

    :goto_168
    if-eqz v5, :cond_14b

    .line 179
    iget-object v5, v1, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->removeAction(Ljava/lang/String;)V

    .line 181
    sget-object v5, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->sRRFilter:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    iget-object v6, v1, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;->mPackageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;->mCodePath:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v1}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->addViolationLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    .line 201
    :cond_17b
    invoke-interface {v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_180
    move-exception v0

    .line 101
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    throw v0

    nop

    :sswitch_data_186
    .sparse-switch
        -0x54d081ca -> :sswitch_a3
        0x2eefaa -> :sswitch_98
        0x302bcfe -> :sswitch_8d
    .end sparse-switch

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_f3
        :pswitch_e9
        :pswitch_c6
    .end packed-switch
.end method
