.class public Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;
.super Ljava/lang/Object;
.source "RuntimeManifestUtils.java"


# static fields
.field public static final blacklist ATTR_MAX_VALUE:Ljava/lang/String; = "maxValue"

.field public static final blacklist ATTR_MIN_VALUE:Ljava/lang/String; = "minValue"

.field public static final blacklist ATTR_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final blacklist ATTR_PROPERTY_VALUE:Ljava/lang/String; = "propertyValue"

.field public static final blacklist ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final blacklist ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final blacklist COUNTRYCODE:Ljava/lang/String;

.field public static final blacklist DEBUG:Z = true

.field public static final blacklist META_RUNTIME_MANIFEST:Ljava/lang/String; = "runtime.manifest.overlay"

.field public static final blacklist ONEUI_VERSION:Ljava/lang/String;

.field public static final blacklist SALESCODE:Ljava/lang/String;

.field public static final blacklist TAG:Ljava/lang/String; = "RuntimeManifestUtils"

.field public static final blacklist TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final blacklist TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final blacklist TAG_POLICY:Ljava/lang/String; = "policy"

.field public static final blacklist TAG_PROVIDER:Ljava/lang/String; = "provider"

.field public static final blacklist TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final blacklist TAG_RUNTIME_MANIFEST:Ljava/lang/String; = "runtime-manifest"

.field public static final blacklist TAG_SERVICE:Ljava/lang/String; = "service"

.field private static blacklist sCountryCodeForTest:Ljava/lang/String;

.field private static blacklist sIsTest:Z

.field private static blacklist sOneuiVersionForTest:Ljava/lang/String;

.field private static blacklist sSalesCodeForTest:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->SALESCODE:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->COUNTRYCODE:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "ro.build.version.oneui"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->ONEUI_VERSION:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sCountryCodeForTest:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sOneuiVersionForTest:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;

    .line 323
    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_3f

    .line 326
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "cls":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 328
    .local v1, "c":C
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_28

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 331
    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3e

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .local v3, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 337
    .end local v3    # "b":Ljava/lang/StringBuilder;
    :cond_3e
    return-object v0

    .line 324
    .end local v0    # "cls":Ljava/lang/String;
    .end local v1    # "c":C
    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getCountryCode()Ljava/lang/String;
    .registers 1

    .line 58
    sget-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sCountryCodeForTest:Ljava/lang/String;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->COUNTRYCODE:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public static blacklist getMatchingPolicy(Ljava/util/List;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;)",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;"
        }
    .end annotation

    .line 253
    .local p0, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    .line 254
    .local v1, "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getType()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 256
    goto :goto_4

    .line 258
    :cond_1b
    const-string v3, "SALESCODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "RuntimeManifestUtils"

    if-eqz v3, :cond_52

    .line 259
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 261
    goto :goto_4

    .line 263
    :cond_30
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matched policy(salescode): "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-object v1

    .line 269
    .end local v3    # "value":Ljava/lang/String;
    :cond_51
    goto :goto_b9

    :cond_52
    const-string v3, "COUNTRYCODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 270
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 271
    .restart local v3    # "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 272
    goto :goto_4

    .line 274
    :cond_65
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matched policy(countrycode): "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-object v1

    .line 274
    .end local v3    # "value":Ljava/lang/String;
    :cond_86
    goto :goto_b8

    .line 280
    :cond_87
    const-string v3, "ONEUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 281
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getMinValue()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getMaxValue()J

    move-result-wide v7

    .line 282
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getOneUiVersion()J

    move-result-wide v9

    .line 281
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->matchOneUiPolicy(JJJ)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matched policy(oneui): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-object v1

    .line 280
    :cond_b8
    :goto_b8
    nop

    .line 289
    .end local v1    # "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .end local v2    # "type":Ljava/lang/String;
    :cond_b9
    :goto_b9
    goto/16 :goto_4

    .line 290
    :cond_bb
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getOneUiVersion()J
    .registers 4

    .line 62
    sget-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sOneuiVersionForTest:Ljava/lang/String;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->ONEUI_VERSION:Ljava/lang/String;

    .line 64
    .local v0, "versionStr":Ljava/lang/String;
    :goto_9
    :try_start_9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_e

    return-wide v1

    .line 65
    :catch_e
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static blacklist getSalesCode()Ljava/lang/String;
    .registers 1

    .line 54
    sget-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->SALESCODE:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method private static blacklist matchOneUiPolicy(JJJ)Z
    .registers 11
    .param p0, "minValue"    # J
    .param p2, "maxValue"    # J
    .param p4, "curVersion"    # J

    .line 294
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    const-string v4, "RuntimeManifestUtils"

    if-gez v2, :cond_20

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid current OneUi version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v3

    .line 298
    :cond_20
    cmp-long v2, p0, v0

    if-gez v2, :cond_49

    cmp-long v2, p2, v0

    if-gez v2, :cond_49

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value set, min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v3

    .line 302
    :cond_49
    cmp-long v2, p0, v0

    if-ltz v2, :cond_68

    cmp-long v2, p4, p0

    if-gez v2, :cond_68

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s lower than minValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return v3

    .line 308
    :cond_68
    cmp-long v0, p2, v0

    if-ltz v0, :cond_87

    cmp-long v0, p4, p2

    if-lez v0, :cond_87

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s higher than maxValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return v3

    .line 314
    :cond_87
    const/4 v0, 0x1

    return v0
.end method

.method static blacklist parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 23
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 93
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 94
    .local v3, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    const/4 v0, -0x1

    .line 95
    .local v0, "parserType":I
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 96
    .local v4, "outerDepth":I
    :goto_f
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .end local v0    # "parserType":I
    .local v6, "parserType":I
    const/4 v0, 0x1

    if-eq v5, v0, :cond_156

    const/4 v5, 0x3

    if-ne v6, v5, :cond_25

    .line 97
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_21

    goto :goto_25

    :cond_21
    move/from16 v18, v4

    goto/16 :goto_158

    .line 98
    :cond_25
    :goto_25
    if-eq v6, v5, :cond_14f

    const/4 v5, 0x4

    if-ne v6, v5, :cond_2e

    .line 99
    move/from16 v18, v4

    goto/16 :goto_151

    .line 101
    :cond_2e
    new-instance v5, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    invoke-direct {v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;-><init>()V

    .line 102
    .local v5, "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "elementName":Ljava/lang/String;
    const-string v8, "policy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "RuntimeManifestUtils"

    if-eqz v8, :cond_133

    .line 104
    const/4 v8, 0x0

    const-string/jumbo v10, "type"

    invoke-interface {v1, v8, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, "type":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_52

    .line 106
    invoke-virtual {v5, v10}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setType(Ljava/lang/String;)V

    .line 108
    :cond_52
    const-string/jumbo v11, "value"

    invoke-interface {v1, v8, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, "value":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_62

    .line 110
    invoke-virtual {v5, v11}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setValue(Ljava/lang/String;)V

    .line 112
    :cond_62
    const-string v12, "minValue"

    invoke-interface {v1, v8, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 113
    .local v12, "minValue":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_71

    .line 114
    invoke-virtual {v5, v12}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setMinValue(Ljava/lang/String;)V

    .line 116
    :cond_71
    const-string v13, "maxValue"

    invoke-interface {v1, v8, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 117
    .local v13, "maxValue":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_80

    .line 118
    invoke-virtual {v5, v13}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setMaxValue(Ljava/lang/String;)V

    .line 120
    :cond_80
    const-string v14, "propertyName"

    invoke-interface {v1, v8, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 121
    .local v14, "propertyName":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8f

    .line 122
    invoke-virtual {v5, v14}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPropertyName(Ljava/lang/String;)V

    .line 124
    :cond_8f
    const-string v15, "propertyValue"

    invoke-interface {v1, v8, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, "propertyValue":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9e

    .line 126
    invoke-virtual {v5, v15}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPropertyValue(Ljava/lang/String;)V

    .line 129
    :cond_9e
    sget-object v8, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {v2, v1, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 132
    .local v8, "ta":Landroid/content/res/TypedArray;
    :try_start_a4
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v17
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_12c

    move-object/from16 v18, v17

    .line 134
    .local v18, "v":Landroid/util/TypedValue;
    move-object/from16 v0, v18

    .end local v18    # "v":Landroid/util/TypedValue;
    .local v0, "v":Landroid/util/TypedValue;
    if-eqz v0, :cond_ca

    .line 135
    move/from16 v18, v4

    .end local v4    # "outerDepth":I
    .local v18, "outerDepth":I
    :try_start_b0
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v4, :cond_c0

    .line 136
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setLabelRes(I)V

    .line 137
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setCoercedLabel(Ljava/lang/CharSequence;)V

    goto :goto_cc

    .line 139
    :cond_c0
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setLabelRes(I)V

    .line 140
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setCoercedLabel(Ljava/lang/CharSequence;)V

    goto :goto_cc

    .line 134
    .end local v18    # "outerDepth":I
    .restart local v4    # "outerDepth":I
    :cond_ca
    move/from16 v18, v4

    .line 143
    .end local v4    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_cc
    const/4 v4, 0x2

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "v":Landroid/util/TypedValue;
    .local v16, "v":Landroid/util/TypedValue;
    invoke-virtual {v8, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    .line 145
    .local v0, "iconValue":I
    if-eqz v0, :cond_db

    .line 146
    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setIconRes(I)V

    .line 148
    :cond_db
    const/4 v4, 0x5

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v20

    if-eqz v20, :cond_ed

    .line 150
    move/from16 v20, v0

    const/4 v0, 0x1

    .end local v0    # "iconValue":I
    .local v20, "iconValue":I
    invoke-virtual {v8, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 153
    .local v0, "enabled":Z
    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setEnabled(Z)V
    :try_end_ec
    .catchall {:try_start_b0 .. :try_end_ec} :catchall_12a

    goto :goto_ef

    .line 148
    .end local v20    # "iconValue":I
    .local v0, "iconValue":I
    :cond_ed
    move/from16 v20, v0

    .line 156
    .end local v0    # "iconValue":I
    .end local v16    # "v":Landroid/util/TypedValue;
    :goto_ef
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    nop

    .line 159
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 162
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .local v4, "ta":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    const/4 v8, 0x0

    :try_start_fb
    invoke-virtual {v4, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 165
    .local v0, "priority":I
    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPriority(I)V

    .line 166
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_105
    .catchall {:try_start_fb .. :try_end_105} :catchall_125

    .line 168
    nop

    .end local v0    # "priority":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    nop

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parsed "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "minValue":Ljava/lang/String;
    .end local v13    # "maxValue":Ljava/lang/String;
    .end local v14    # "propertyName":Ljava/lang/String;
    .end local v15    # "propertyValue":Ljava/lang/String;
    goto :goto_14e

    .line 168
    .restart local v4    # "ta":Landroid/content/res/TypedArray;
    .restart local v10    # "type":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    .restart local v12    # "minValue":Ljava/lang/String;
    .restart local v13    # "maxValue":Ljava/lang/String;
    .restart local v14    # "propertyName":Ljava/lang/String;
    .restart local v15    # "propertyValue":Ljava/lang/String;
    :catchall_125
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    throw v0

    .line 156
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    .restart local v8    # "ta":Landroid/content/res/TypedArray;
    :catchall_12a
    move-exception v0

    goto :goto_12f

    .end local v18    # "outerDepth":I
    .local v4, "outerDepth":I
    :catchall_12c
    move-exception v0

    move/from16 v18, v4

    .end local v4    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_12f
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    throw v0

    .line 174
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "minValue":Ljava/lang/String;
    .end local v13    # "maxValue":Ljava/lang/String;
    .end local v14    # "propertyName":Ljava/lang/String;
    .end local v15    # "propertyValue":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .restart local v4    # "outerDepth":I
    :cond_133
    move/from16 v18, v4

    .end local v4    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <runtime-manifest>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 177
    .end local v5    # "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .end local v7    # "elementName":Ljava/lang/String;
    :goto_14e
    goto :goto_151

    .line 98
    .end local v18    # "outerDepth":I
    .restart local v4    # "outerDepth":I
    :cond_14f
    move/from16 v18, v4

    .line 96
    .end local v4    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_151
    move v0, v6

    move/from16 v4, v18

    goto/16 :goto_f

    .end local v18    # "outerDepth":I
    .restart local v4    # "outerDepth":I
    :cond_156
    move/from16 v18, v4

    .line 178
    .end local v4    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_158
    return-object v3
.end method

.method public static blacklist parseRuntimeManifestPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
    .registers 14
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;-><init>()V

    .line 186
    .local v0, "overlay":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, "application":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v2, "activities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v3, "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v4, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v5, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    const-string/jumbo v6, "runtime-manifest"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 194
    :goto_24
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 195
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "elementName":Ljava/lang/String;
    if-nez v6, :cond_3e

    .line 198
    nop

    .line 244
    .end local v6    # "elementName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addApplicationPolicies(Ljava/util/List;)V

    .line 245
    invoke-virtual {v0, v2}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addActivityPolicies(Ljava/util/Map;)V

    .line 246
    invoke-virtual {v0, v3}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addReceiverPolicies(Ljava/util/Map;)V

    .line 247
    invoke-virtual {v0, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addServicePolicies(Ljava/util/Map;)V

    .line 248
    invoke-virtual {v0, v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addProviderPolicies(Ljava/util/Map;)V

    .line 249
    return-object v0

    .line 200
    .restart local v6    # "elementName":Ljava/lang/String;
    :cond_3e
    const-string v7, "application"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 201
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v7

    .line 202
    .local v7, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_d5

    .line 204
    .end local v7    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_4f
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {p1, p0, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 206
    .local v7, "ta":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 208
    .local v8, "name":Ljava/lang/String;
    const/4 v9, 0x3

    :try_start_57
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_f0

    move-object v8, v9

    .line 211
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    nop

    .line 214
    if-nez v8, :cond_63

    .line 215
    goto :goto_24

    .line 217
    :cond_63
    const-string v9, "activity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 218
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 219
    .local v9, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_d5

    .line 220
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d5

    .line 222
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_7f
    const-string/jumbo v9, "receiver"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 223
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 224
    .restart local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_d5

    .line 225
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d5

    .line 227
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_9c
    const-string/jumbo v9, "service"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b9

    .line 228
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 229
    .restart local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_d5

    .line 230
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d5

    .line 232
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_b9
    const-string/jumbo v9, "provider"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 233
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 234
    .restart local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_d5

    .line 235
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .end local v6    # "elementName":Ljava/lang/String;
    .end local v7    # "ta":Landroid/content/res/TypedArray;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_d5
    :goto_d5
    goto/16 :goto_24

    .line 238
    .restart local v6    # "elementName":Ljava/lang/String;
    .restart local v7    # "ta":Landroid/content/res/TypedArray;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_d7
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <runtime-manifest>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 211
    :catchall_f0
    move-exception v9

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    throw v9
.end method

.method public static blacklist setCountryCode(Ljava/lang/String;)V
    .registers 1
    .param p0, "countryCode"    # Ljava/lang/String;

    .line 77
    sput-object p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sCountryCodeForTest:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static blacklist setOneUiVersionForTest(Ljava/lang/String;)V
    .registers 1
    .param p0, "oneUiVersion"    # Ljava/lang/String;

    .line 82
    sput-object p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sOneuiVersionForTest:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static blacklist setSalesCodeForTest(Ljava/lang/String;)V
    .registers 1
    .param p0, "salesCode"    # Ljava/lang/String;

    .line 72
    sput-object p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static blacklist setTestMode(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 87
    sput-boolean p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    .line 88
    return-void
.end method

.method public static blacklist useLegacyRuntimeManifest(Landroid/os/Bundle;)Z
    .registers 2
    .param p0, "metaData"    # Landroid/os/Bundle;

    .line 318
    if-eqz p0, :cond_e

    const-string/jumbo v0, "runtime.manifest.overlay"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method
