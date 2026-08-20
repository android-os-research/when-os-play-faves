.class public Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;
.super Ljava/lang/Object;
.source "ParsedPermissionUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateFootprint(Lcom/android/server/pm/pkg/component/ParsedPermission;)I
    .registers 2

    .line 273
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 274
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 276
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/2addr v0, p0

    :cond_13
    return v0
.end method

.method public static declareDuplicatePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z
    .registers 9

    .line 306
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_5a

    .line 309
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v1}, Landroid/util/ArrayMap;-><init>(I)V

    move v4, v2

    :goto_11
    if-ge v4, v1, :cond_5a

    .line 311
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 312
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v6

    .line 313
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 314
    invoke-static {v5, v7}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->isMalformedDuplicate(Lcom/android/server/pm/pkg/component/ParsedPermission;Lcom/android/server/pm/pkg/component/ParsedPermission;)Z

    move-result v7

    if-eqz v7, :cond_54

    const v0, 0x534e4554

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "213323615"

    aput-object v3, v1, v2

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " seems malicious"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 316
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v2

    .line 320
    :cond_54
    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_5a
    return v2
.end method

.method public static getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I
    .registers 1

    .line 265
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result p0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static getProtectionFlags(Lcom/android/server/pm/pkg/component/ParsedPermission;)I
    .registers 1

    .line 269
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result p0

    and-int/lit8 p0, p0, -0x10

    return p0
.end method

.method public static isAppOp(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z
    .registers 1

    .line 260
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isMalformedDuplicate(Lcom/android/server/pm/pkg/component/ParsedPermission;Lcom/android/server/pm/pkg/component/ParsedPermission;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    if-eqz p1, :cond_2d

    .line 288
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2d

    .line 292
    :cond_12
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1e

    return v3

    .line 295
    :cond_1e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v3

    :cond_2d
    :goto_2d
    return v0
.end method

.method public static isRuntime(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z
    .registers 2

    .line 256
    invoke-static {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static parsePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v14, p4

    .line 53
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 54
    new-instance v13, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v13}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;-><init>()V

    .line 55
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

    move-result-object v16

    .line 58
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v12, p2

    invoke-virtual {v0, v12, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v7, 0x8

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x2

    const/16 v19, 0x9

    move-object v1, v13

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v11

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 p3, v11

    move/from16 v11, v17

    move/from16 v12, v18

    move-object v0, v13

    move/from16 v13, v19

    .line 60
    :try_start_4d
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 70
    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_1a8

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_5f
    const/16 v1, 0xb

    move-object/from16 v2, p3

    .line 73
    :try_start_63
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_1a6

    const-string v4, "PackageParsing"

    const-string v5, "android"

    if-eqz v3, :cond_8f

    .line 75
    :try_start_6d
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 76
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setBackgroundPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    goto :goto_8f

    .line 79
    :cond_7b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " defines a background permission. Only the \'android\' package can do that."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    :goto_8f
    const/4 v1, 0x4

    .line 86
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 88
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v3

    const/4 v6, 0x3

    .line 90
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v3

    const/4 v6, 0x7

    .line 93
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    const/16 v3, 0xa

    .line 96
    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_fd

    move-object v7, v0

    move-object/from16 v0, p1

    .line 102
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "array"

    .line 103
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 104
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_de

    .line 106
    invoke-virtual {v7, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setKnownCerts([Ljava/lang/String;)V

    goto :goto_de

    .line 109
    :cond_d5
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_de

    .line 111
    invoke-virtual {v7, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V

    .line 114
    :cond_de
    :goto_de
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getKnownCerts()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_109

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " defines a knownSigner permission but the provided knownCerts resource is null"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109

    :cond_fd
    move-object v7, v0

    move-object/from16 v0, p1

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_109

    .line 124
    invoke-virtual {v7, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V

    .line 129
    :cond_109
    :goto_109
    invoke-static {v7}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->isRuntime(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z

    move-result v3

    if-eqz v3, :cond_145

    invoke-virtual {v7}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11a

    goto :goto_145

    .line 134
    :cond_11a
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_157

    .line 135
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_12a

    goto :goto_157

    .line 136
    :cond_12a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission cannot be both soft and hard restricted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_145
    :goto_145
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    invoke-virtual {v7, v3}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 131
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x9

    invoke-virtual {v7, v3}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    :try_end_157
    .catchall {:try_start_6d .. :try_end_157} :catchall_1a6

    .line 141
    :cond_157
    :goto_157
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getProtectionLevel()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v2

    .line 144
    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    .line 147
    invoke-static {v7}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtectionFlags(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v2

    and-int/lit16 v2, v2, -0x3041

    if-eqz v2, :cond_181

    .line 151
    invoke-static {v7}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_181

    .line 152
    invoke-static {v7}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v2

    if-eq v2, v1, :cond_181

    const-string v0, "<permission> protectionLevel specifies a non-instant, non-appop, non-runtimeOnly flag but is not based on signature or internal type"

    .line 153
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_181
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v5, v7

    move-object/from16 v6, p4

    .line 157
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 159
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 162
    :cond_19b
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_1a6
    move-exception v0

    goto :goto_1ab

    :catchall_1a8
    move-exception v0

    move-object/from16 v2, p3

    .line 141
    :goto_1ab
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    throw v0
.end method

.method public static parsePermissionGroup(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p4

    .line 216
    new-instance v14, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-direct {v14}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;-><init>()V

    .line 217
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

    move-result-object v15

    .line 219
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x5

    const/16 v17, 0x2

    const/16 v18, 0x8

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p0

    move-object v4, v11

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 p3, v11

    move/from16 v11, v16

    move/from16 v12, v17

    move/from16 v13, v18

    .line 221
    :try_start_46
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 230
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 231
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_bd

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_58
    const/16 v1, 0xc

    const/4 v2, 0x0

    move-object/from16 v3, p3

    .line 235
    :try_start_5d
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestDetailRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v4, 0x9

    .line 236
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v4, 0xa

    .line 237
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestDetailRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v4, 0xb

    .line 238
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/4 v4, 0x3

    .line 239
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setPriority(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/4 v4, 0x6

    .line 240
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    :try_end_94
    .catchall {:try_start_5d .. :try_end_94} :catchall_bb

    .line 243
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object v5, v14

    move-object/from16 v6, p4

    .line 246
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 248
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 249
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 252
    :cond_b0
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_bb
    move-exception v0

    goto :goto_c0

    :catchall_bd
    move-exception v0

    move-object/from16 v3, p3

    .line 243
    :goto_c0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    throw v0
.end method

.method public static parsePermissionTree(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p4

    .line 169
    new-instance v14, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v14}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;-><init>()V

    .line 170
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

    move-result-object v15

    .line 173
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x5

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v12, v17

    move/from16 v13, v18

    .line 175
    :try_start_42
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 184
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 185
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_b6

    .line 188
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_54
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_6d

    .line 193
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    :cond_6d
    if-gez v1, :cond_89

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<permission-tree> name has less than three segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_89
    const/4 v1, 0x0

    .line 200
    invoke-virtual {v14, v1}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v1

    const/4 v2, 0x1

    .line 201
    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setTree(Z)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object v5, v14

    move-object/from16 v6, p4

    .line 203
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 204
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 205
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 208
    :cond_ab
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_b6
    move-exception v0

    .line 188
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    throw v0
.end method
