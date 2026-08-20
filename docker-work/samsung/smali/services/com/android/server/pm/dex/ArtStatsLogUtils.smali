.class public Lcom/android/server/pm/dex/ArtStatsLogUtils;
.super Ljava/lang/Object;
.source "ArtStatsLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;,
        Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;
    }
.end annotation


# static fields
.field public static final ART_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK:I = 0xe

.field public static final ART_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK:I = 0xf

.field public static final ART_COMPILATION_REASON_INSTALL_BULK_DOWNGRADED:I = 0xf

.field public static final ART_COMPILATION_REASON_INSTALL_BULK_SECONDARY:I = 0xe

.field public static final ART_COMPILATION_REASON_INSTALL_BULK_SECONDARY_DOWNGRADED:I = 0x10

.field public static final COMPILATION_REASON_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPILE_FILTER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISA_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFILE_DEX_METADATA:Ljava/lang/String; = "primary.prof"

.field public static final STATUS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ArtStatsLogUtils"

.field public static final VDEX_DEX_METADATA:Ljava/lang/String; = "primary.vdex"


# direct methods
.method public static synthetic $r8$lambda$KKCDwBfk-vsajJmVWECdcY8NKPU(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->lambda$getApkType$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetCOMPILATION_REASON_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->COMPILATION_REASON_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetCOMPILE_FILTER_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->COMPILE_FILTER_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetISA_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->ISA_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSTATUS_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->STATUS_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 18

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->COMPILATION_REASON_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x5

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xc

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xd

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x6

    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0xe

    .line 77
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 76
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x7

    .line 78
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0xf

    .line 79
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 78
    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x8

    .line 80
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x10

    .line 81
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 80
    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x9

    .line 82
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0xa

    move-object/from16 v17, v2

    .line 84
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x13

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-interface {v0, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->COMPILE_FILTER_MAP:Ljava/util/Map;

    const-string v2, "error"

    .line 98
    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "unknown"

    .line 100
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "assume-verified"

    .line 102
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "extract"

    .line 104
    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "verify"

    .line 106
    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "quicken"

    .line 108
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "space-profile"

    .line 110
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "space"

    .line 112
    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "speed-profile"

    .line 114
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v9, "speed"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "everything-profile"

    .line 118
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "everything"

    .line 120
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "run-from-apk"

    .line 122
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "run-from-apk-fallback"

    .line 124
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "run-from-vdex-fallback"

    .line 126
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->ISA_MAP:Ljava/util/Map;

    const-string v1, "arm"

    .line 133
    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "arm64"

    .line 134
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "x86"

    .line 135
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "x86_64"

    .line 136
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "mips"

    .line 137
    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "mips64"

    .line 138
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v17

    move-object v3, v13

    move-object v4, v13

    move-object v5, v6

    move-object v7, v8

    move-object v9, v10

    move-object v11, v12

    .line 306
    invoke-static/range {v2 .. v13}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->STATUS_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findFileName(Landroid/util/jar/StrictJarFile;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 266
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 267
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 268
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static getApkType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 3

    .line 187
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 189
    :cond_8
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/pm/dex/ArtStatsLogUtils$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/pm/dex/ArtStatsLogUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x2

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static getDexBytes(Ljava/lang/String;)J
    .registers 8

    const/4 v0, 0x0

    .line 200
    :try_start_1
    new-instance v1, Landroid/util/jar/StrictJarFile;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_43
    .catchall {:try_start_1 .. :try_end_7} :catchall_41

    .line 203
    :try_start_7
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "classes(\\d)*[.]dex"

    .line 204
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, ""

    .line 205
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 206
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 208
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 209
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 210
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_36} :catch_3f
    .catchall {:try_start_7 .. :try_end_36} :catchall_3c

    add-long/2addr v3, v5

    goto :goto_19

    .line 220
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3b

    :catch_3b
    return-wide v3

    :catchall_3c
    move-exception p0

    move-object v0, v1

    goto :goto_61

    :catch_3f
    move-object v0, v1

    goto :goto_43

    :catchall_41
    move-exception p0

    goto :goto_61

    .line 215
    :catch_43
    :goto_43
    :try_start_43
    sget-object v1, Lcom/android/server/pm/dex/ArtStatsLogUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when parsing APK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_41

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_60

    .line 220
    :try_start_5d
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_60

    :catch_60
    :cond_60
    return-wide v1

    :goto_61
    if-eqz v0, :cond_66

    :try_start_63
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_66

    .line 224
    :catch_66
    :cond_66
    throw p0
.end method

.method public static getDexMetadataType(Ljava/lang/String;)I
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 v0, 0x0

    .line 233
    :try_start_5
    new-instance v1, Landroid/util/jar/StrictJarFile;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_3b
    .catchall {:try_start_5 .. :try_end_b} :catchall_39

    :try_start_b
    const-string/jumbo v0, "primary.prof"

    .line 236
    invoke-static {v1, v0}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->findFileName(Landroid/util/jar/StrictJarFile;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v3, "primary.vdex"

    .line 237
    invoke-static {v1, v3}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->findFileName(Landroid/util/jar/StrictJarFile;Ljava/lang/String;)Z

    move-result p0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_37
    .catchall {:try_start_b .. :try_end_19} :catchall_34

    if-eqz v0, :cond_22

    if-eqz p0, :cond_22

    const/4 p0, 0x3

    .line 257
    :try_start_1e
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    return p0

    :cond_22
    if-eqz v0, :cond_29

    const/4 p0, 0x1

    :try_start_25
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_28

    :catch_28
    return p0

    :cond_29
    if-eqz p0, :cond_30

    const/4 p0, 0x2

    :try_start_2c
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_2f

    :catch_2f
    return p0

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_33

    :catch_33
    return v2

    :catchall_34
    move-exception p0

    move-object v0, v1

    goto :goto_58

    :catch_37
    move-object v0, v1

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_58

    .line 252
    :catch_3b
    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/android/server/pm/dex/ArtStatsLogUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when parsing dex metadata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_39

    const/4 p0, 0x5

    if-eqz v0, :cond_57

    .line 257
    :try_start_54
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    return p0

    :goto_58
    if-eqz v0, :cond_5d

    :try_start_5a
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5d

    .line 261
    :catch_5d
    :cond_5d
    throw p0
.end method

.method public static synthetic lambda$getApkType$0(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 189
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static writeStatsLog(Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;JLjava/lang/String;IJLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 26

    .line 153
    invoke-static/range {p7 .. p7}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->getDexMetadataType(Ljava/lang/String;)I

    move-result v12

    move/from16 v0, p9

    int-to-long v7, v0

    const/16 v6, 0xa

    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p4

    move/from16 v4, p8

    move-object/from16 v5, p3

    move v9, v12

    move/from16 v10, p10

    move-object/from16 v11, p11

    .line 154
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;->write(JIILjava/lang/String;IJIILjava/lang/String;)V

    .line 170
    invoke-static/range {p12 .. p12}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->getDexBytes(Ljava/lang/String;)J

    move-result-wide v7

    const/16 v6, 0xb

    .line 164
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;->write(JIILjava/lang/String;IJIILjava/lang/String;)V

    const/16 v6, 0xc

    move-wide/from16 v7, p5

    .line 174
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;->write(JIILjava/lang/String;IJIILjava/lang/String;)V

    return-void
.end method
