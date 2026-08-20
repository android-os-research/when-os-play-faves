.class public Lcom/android/server/pm/pkg/component/ParsedServiceUtils;
.super Ljava/lang/Object;
.source "ParsedServiceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseService([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
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
            "Lcom/android/server/pm/pkg/component/ParsedService;",
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

    move-object/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v7, p7

    .line 55
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 56
    new-instance v5, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;

    invoke-direct {v5}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;-><init>()V

    .line 57
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 59
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v9, v8, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v10, 0xc

    const/4 v11, 0x7

    const/16 v12, 0xd

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x2

    const/16 v18, 0x6

    const/16 v19, 0xf

    const/16 v20, 0x11

    const/16 v21, 0x14

    move-object v1, v5

    move-object v2, v4

    move-object/from16 v22, v3

    move-object/from16 v3, p0

    move-object/from16 v23, v4

    move-object/from16 v4, p1

    move-object/from16 v24, v5

    move-object/from16 v5, v22

    move-object/from16 v25, v6

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 61
    :try_start_47
    invoke-static/range {v1 .. v21}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_5b

    move-object/from16 v11, p7

    .line 79
    invoke-interface {v11, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_222

    .line 113
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_5b
    move-object/from16 v11, p7

    const/4 v1, 0x5

    move-object/from16 v2, v22

    .line 82
    :try_start_60
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_71

    .line 84
    invoke-virtual {v2, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    move-object/from16 v14, v24

    invoke-virtual {v14, v1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    goto :goto_73

    :cond_71
    move-object/from16 v14, v24

    :goto_73
    const/4 v15, 0x3

    .line 88
    invoke-virtual {v2, v15, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7b

    goto :goto_7f

    .line 90
    :cond_7b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPermission()Ljava/lang/String;

    move-result-object v1

    :goto_7f
    invoke-virtual {v14, v1}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    const/16 v1, 0x13

    .line 92
    invoke-virtual {v2, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->setForegroundServiceType(I)Lcom/android/server/pm/pkg/component/ParsedServiceImpl;

    move-result-object v1

    .line 95
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    const/16 v4, 0x9

    const/4 v10, 0x1

    invoke-static {v10, v4, v2}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    const/16 v5, 0xa

    const/4 v9, 0x2

    .line 97
    invoke-static {v9, v5, v2}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v4, v5

    const/4 v5, 0x4

    const/16 v6, 0xe

    .line 99
    invoke-static {v5, v6, v2}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x12

    .line 101
    invoke-static {v5, v6, v2}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v6, 0xb

    .line 103
    invoke-static {v5, v6, v2}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 95
    invoke-virtual {v1, v3}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    const/16 v1, 0x10

    .line 106
    invoke-virtual {v2, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_d2

    .line 109
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v1

    const/high16 v3, 0x100000

    or-int/2addr v1, v3

    invoke-virtual {v14, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 110
    invoke-interface {v0, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_d2
    .catchall {:try_start_60 .. :try_end_d2} :catchall_220

    .line 113
    :cond_d2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isCantSaveState()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 119
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    const-string v0, "Heavy-weight applications can not have services in main process"

    .line 120
    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 124
    :cond_ee
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 126
    :goto_f2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v10, :cond_1d3

    if-ne v1, v15, :cond_100

    .line 128
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v8, :cond_1d3

    :cond_100
    if-eq v1, v9, :cond_103

    goto :goto_f2

    .line 134
    :cond_103
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_22a

    goto :goto_136

    :sswitch_113
    const-string/jumbo v3, "property"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d

    goto :goto_136

    :cond_11d
    move v2, v9

    goto :goto_136

    :sswitch_11f
    const-string/jumbo v3, "intent-filter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_129

    goto :goto_136

    :cond_129
    move v2, v10

    goto :goto_136

    :sswitch_12b
    const-string/jumbo v3, "meta-data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    goto :goto_136

    :cond_135
    move v2, v13

    :goto_136
    packed-switch v2, :pswitch_data_238

    move-object/from16 v7, p3

    move-object/from16 v6, v23

    .line 157
    invoke-static {v6, v0, v7, v11}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object/from16 v13, p2

    goto :goto_14f

    :pswitch_144
    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v6, v23

    .line 154
    invoke-static {v14, v0, v5, v7, v11}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object v13, v5

    :goto_14f
    move-object/from16 v21, v6

    move-object v15, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    goto/16 :goto_1bc

    :pswitch_15a
    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v6, v23

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v13, v5

    move/from16 v5, v16

    move-object/from16 v21, v6

    move/from16 v6, v17

    move-object v15, v7

    move/from16 v7, v18

    move/from16 v17, v8

    move/from16 v8, v19

    move/from16 v18, v9

    move/from16 v9, v20

    move/from16 v19, v10

    move-object/from16 v10, p7

    .line 137
    invoke-static/range {v1 .. v10}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1bc

    .line 143
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 144
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 145
    invoke-virtual {v3}, Landroid/content/IntentFilter;->getOrder()I

    move-result v3

    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getOrder()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setOrder(I)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 146
    invoke-virtual {v14, v2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->addIntent(Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;)V

    goto :goto_1bc

    :pswitch_1ac
    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v21, v23

    .line 150
    invoke-static {v14, v0, v13, v15, v11}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 161
    :cond_1bc
    :goto_1bc
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1c7

    .line 162
    invoke-interface {v11, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_1c7
    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v23, v21

    const/4 v13, 0x0

    const/4 v15, 0x3

    goto/16 :goto_f2

    :cond_1d3
    move/from16 v19, v10

    if-nez v12, :cond_21b

    .line 167
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e4

    move/from16 v13, v19

    goto :goto_1e5

    :cond_1e4
    const/4 v13, 0x0

    :goto_1e5
    if-eqz v13, :cond_218

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

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

    .line 169
    invoke-interface {v11, v0, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_218

    .line 175
    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 178
    :cond_218
    invoke-virtual {v14, v13}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 181
    :cond_21b
    invoke-interface {v11, v14}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_220
    move-exception v0

    goto :goto_225

    :catchall_222
    move-exception v0

    move-object/from16 v2, v22

    .line 113
    :goto_225
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    throw v0

    nop

    :sswitch_data_22a
    .sparse-switch
        -0x4284098e -> :sswitch_12b
        -0x3d616837 -> :sswitch_11f
        -0x3b32222b -> :sswitch_113
    .end sparse-switch

    :pswitch_data_238
    .packed-switch 0x0
        :pswitch_1ac
        :pswitch_15a
        :pswitch_144
    .end packed-switch
.end method
