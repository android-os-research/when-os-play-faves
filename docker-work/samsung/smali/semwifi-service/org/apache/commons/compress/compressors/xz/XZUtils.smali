.class public Lorg/apache/commons/compress/compressors/xz/XZUtils;
.super Ljava/lang/Object;
.source "XZUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;
    }
.end annotation


# static fields
.field private static final HEADER_MAGIC:[B

.field private static volatile cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

.field private static final fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 40
    fill-array-data v0, :array_36

    sput-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->HEADER_MAGIC:[B

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ".txz"

    const-string v2, ".tar"

    .line 52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ".xz"

    const-string v2, ""

    .line 53
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "-xz"

    .line 54
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v2, Lorg/apache/commons/compress/compressors/FileNameUtil;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/compress/compressors/FileNameUtil;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    sput-object v2, Lorg/apache/commons/compress/compressors/xz/XZUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    .line 56
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    sput-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    :try_start_2b
    const-string v0, "org.osgi.framework.BundleEvent"

    .line 58
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    const/4 v0, 0x1

    .line 60
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->setCacheXZAvailablity(Z)V

    :goto_35
    return-void

    :array_36
    .array-data 1
        -0x3t
        0x37t
        0x7at
        0x58t
        0x5at
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCachedXZAvailability()Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;
    .registers 1

    .line 178
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    return-object v0
.end method

.method public static getCompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 156
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/FileNameUtil;->getCompressedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUncompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 141
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/FileNameUtil;->getUncompressedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static internalIsXZCompressionAvailable()Z
    .registers 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    :try_start_2
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->matches([BI)Z
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    return v1
.end method

.method public static isCompressedFilename(Ljava/lang/String;)Z
    .registers 2

    .line 124
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/FileNameUtil;->isCompressedFilename(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isXZCompressionAvailable()Z
    .registers 2

    .line 100
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    .line 101
    sget-object v1, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    if-eq v0, v1, :cond_e

    .line 102
    sget-object v1, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 104
    :cond_e
    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->internalIsXZCompressionAvailable()Z

    move-result v0

    return v0
.end method

.method public static matches([BI)Z
    .registers 5

    .line 81
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->HEADER_MAGIC:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_7

    return v1

    :cond_7
    move p1, v1

    .line 85
    :goto_8
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->HEADER_MAGIC:[B

    array-length v2, v0

    if-ge p1, v2, :cond_17

    .line 86
    aget-byte v2, p0, p1

    aget-byte v0, v0, p1

    if-eq v2, v0, :cond_14

    return v1

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public static setCacheXZAvailablity(Z)V
    .registers 2

    if-nez p0, :cond_7

    .line 168
    sget-object p0, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    sput-object p0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    goto :goto_1a

    .line 169
    :cond_7
    sget-object p0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    if-ne p0, v0, :cond_1a

    .line 170
    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->internalIsXZCompressionAvailable()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 171
    sget-object p0, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    goto :goto_18

    .line 172
    :cond_16
    sget-object p0, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    :goto_18
    sput-object p0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    :cond_1a
    :goto_1a
    return-void
.end method
