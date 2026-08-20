.class public Lcom/android/server/pm/pkg/component/ParsedProcessUtils;
.super Ljava/lang/Object;
.source "ParsedProcessUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAllowPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 68
    :try_start_7
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v1, "android.permission.INTERNET"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 71
    invoke-static {p0, v0}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_24

    .line 74
    :cond_19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 77
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :catchall_24
    move-exception p0

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    throw p0
.end method

.method public static parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestDenyPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    :try_start_7
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v1, "android.permission.INTERNET"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 53
    invoke-static {p0, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_24

    .line 56
    :cond_19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 59
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :catchall_24
    move-exception p0

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    throw p0
.end method

.method public static parseProcess(Ljava/util/Set;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;-><init>()V

    .line 85
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestProcess:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz p0, :cond_15

    .line 88
    :try_start_d
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    :cond_15
    const/4 p0, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v1, p0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move v6, p5

    move-object v7, p1

    move-object v8, p6

    .line 93
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 96
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p5

    if-eqz p5, :cond_38

    .line 97
    invoke-interface {p6, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_e9

    .line 115
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 100
    :cond_38
    :try_start_38
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    .line 102
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {p5, v3}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    .line 105
    invoke-virtual {v0, p5, v3}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->putAppClassNameForPackage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 p5, -0x1

    .line 106
    invoke-virtual {v1, p1, p5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setGwpAsanMode(I)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    const/4 p1, 0x3

    .line 107
    invoke-virtual {v1, p1, p5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p5

    invoke-virtual {v0, p5}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setMemtagMode(I)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    const/4 p5, 0x4

    .line 108
    invoke-virtual {v1, p5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 109
    invoke-virtual {v1, p5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_6f

    move v2, p0

    .line 111
    :cond_6f
    invoke-virtual {v0, v2}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;
    :try_end_72
    .catchall {:try_start_38 .. :try_end_72} :catchall_e9

    .line 115
    :cond_72
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 120
    :cond_79
    :goto_79
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    if-eq v2, p0, :cond_e4

    if-ne v2, p1, :cond_87

    .line 121
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_e4

    :cond_87
    if-eq v2, p1, :cond_79

    if-ne v2, p5, :cond_8c

    goto :goto_79

    .line 128
    :cond_8c
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "allow-permission"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c2

    const-string v3, "deny-permission"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    const-string v2, "<process>"

    .line 147
    invoke-static {v2, p2, p4, p6}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_d9

    .line 132
    :cond_aa
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 131
    invoke-static {v2, p3, p4, p6}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 134
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 135
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    goto :goto_d9

    .line 140
    :cond_c2
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 139
    invoke-static {v2, p3, p4, p6}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 142
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 143
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    .line 151
    :cond_d9
    :goto_d9
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 152
    invoke-interface {p6, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 156
    :cond_e4
    invoke-interface {p6, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :catchall_e9
    move-exception p0

    .line 115
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    throw p0
.end method

.method public static parseProcesses([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 165
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 168
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    .line 169
    :cond_a
    :goto_a
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c6

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1a

    .line 170
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_c6

    :cond_1a
    if-eq v3, v5, :cond_a

    const/4 v5, 0x4

    if-ne v3, v5, :cond_20

    goto :goto_a

    .line 177
    :cond_20
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_cc

    :goto_2f
    move v4, v5

    goto :goto_50

    :sswitch_31
    const-string v4, "deny-permission"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_2f

    :cond_3a
    const/4 v4, 0x2

    goto :goto_50

    :sswitch_3c
    const-string/jumbo v6, "process"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    goto :goto_2f

    :sswitch_46
    const-string v4, "allow-permission"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_2f

    :cond_4f
    const/4 v4, 0x0

    :cond_50
    :goto_50
    packed-switch v4, :pswitch_data_da

    const-string v3, "<processes>"

    .line 208
    invoke-static {v3, p1, p3, p5}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    goto :goto_bb

    .line 180
    :pswitch_5a
    invoke-static {v2, p2, p3, p5}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 183
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 184
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    goto :goto_bb

    :pswitch_6b
    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    .line 196
    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseProcess(Ljava/util/Set;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 199
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 200
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedProcess;

    .line 201
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_bb

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<process> specified existing name \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-interface {p5, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    goto :goto_bb

    .line 188
    :pswitch_ab
    invoke-static {v2, p2, p3, p5}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 191
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 192
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 212
    :cond_bb
    :goto_bb
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 213
    invoke-interface {p5, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 218
    :cond_c6
    invoke-interface {p5, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_cc
    .sparse-switch
        -0x49dc292d -> :sswitch_46
        -0x1272e191 -> :sswitch_3c
        0x62d33430 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_6b
        :pswitch_5a
    .end packed-switch
.end method
