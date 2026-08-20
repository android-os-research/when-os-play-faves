.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;
.super Ljava/lang/Object;
.source "ZstdUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;
    }
.end annotation


# static fields
.field private static final SKIPPABLE_FRAME_MAGIC:[B

.field private static final ZSTANDARD_FRAME_MAGIC:[B

.field private static volatile cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 35
    fill-array-data v0, :array_20

    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 42
    fill-array-data v0, :array_26

    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->SKIPPABLE_FRAME_MAGIC:[B

    .line 49
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    :try_start_14
    const-string v0, "org.osgi.framework.BundleEvent"

    .line 51
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    const/4 v0, 0x1

    .line 53
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->setCacheZstdAvailablity(Z)V

    :goto_1e
    return-void

    nop

    :array_20
    .array-data 1
        0x28t
        -0x4bt
        0x2ft
        -0x3t
    .end array-data

    :array_26
    .array-data 1
        0x2at
        0x4dt
        0x18t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCachedZstdAvailability()Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;
    .registers 1

    .line 138
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    return-object v0
.end method

.method private static internalIsZstdCompressionAvailable()Z
    .registers 1

    :try_start_0
    const-string v0, "com.github.luben.zstd.ZstdInputStream"

    .line 75
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method public static isZstdCompressionAvailable()Z
    .registers 2

    .line 66
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 67
    sget-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    if-eq v0, v1, :cond_e

    .line 68
    sget-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 70
    :cond_e
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->internalIsZstdCompressionAvailable()Z

    move-result v0

    return v0
.end method

.method public static matches([BI)Z
    .registers 7

    .line 107
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_7

    return v1

    :cond_7
    move p1, v1

    .line 112
    :goto_8
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    array-length v2, v0

    const/4 v3, 0x1

    if-ge p1, v2, :cond_19

    .line 113
    aget-byte v2, p0, p1

    aget-byte v0, v0, p1

    if-eq v2, v0, :cond_16

    move p1, v1

    goto :goto_1a

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_19
    move p1, v3

    :goto_1a
    if-eqz p1, :cond_1d

    return v3

    :cond_1d
    const/16 p1, 0x50

    .line 122
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xf0

    if-ne p1, v0, :cond_37

    move p1, v1

    .line 124
    :goto_26
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->SKIPPABLE_FRAME_MAGIC:[B

    array-length v2, v0

    if-ge p1, v2, :cond_36

    add-int/lit8 v2, p1, 0x1

    .line 125
    aget-byte v4, p0, v2

    aget-byte p1, v0, p1

    if-eq v4, p1, :cond_34

    return v1

    :cond_34
    move p1, v2

    goto :goto_26

    :cond_36
    return v3

    :cond_37
    return v1
.end method

.method public static setCacheZstdAvailablity(Z)V
    .registers 2

    if-nez p0, :cond_7

    .line 90
    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    sput-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    goto :goto_1a

    .line 91
    :cond_7
    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    if-ne p0, v0, :cond_1a

    .line 92
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->internalIsZstdCompressionAvailable()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 93
    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    goto :goto_18

    .line 94
    :cond_16
    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    :goto_18
    sput-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    :cond_1a
    :goto_1a
    return-void
.end method
