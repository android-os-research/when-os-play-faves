.class public Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;
.super Ljava/lang/Object;
.source "BrotliUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;
    }
.end annotation


# static fields
.field private static volatile cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    sget-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    sput-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    :try_start_4
    const-string v0, "org.osgi.framework.BundleEvent"

    .line 37
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    const/4 v0, 0x1

    .line 39
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->setCacheBrotliAvailablity(Z)V

    :goto_e
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCachedBrotliAvailability()Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;
    .registers 1

    .line 87
    sget-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    return-object v0
.end method

.method private static internalIsBrotliCompressionAvailable()Z
    .registers 1

    :try_start_0
    const-string v0, "org.brotli.dec.BrotliInputStream"

    .line 62
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

.method public static isBrotliCompressionAvailable()Z
    .registers 2

    .line 53
    sget-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    .line 54
    sget-object v1, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    if-eq v0, v1, :cond_e

    .line 55
    sget-object v1, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 57
    :cond_e
    invoke-static {}, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->internalIsBrotliCompressionAvailable()Z

    move-result v0

    return v0
.end method

.method public static setCacheBrotliAvailablity(Z)V
    .registers 2

    if-nez p0, :cond_7

    .line 77
    sget-object p0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    sput-object p0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    goto :goto_1a

    .line 78
    :cond_7
    sget-object p0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    sget-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    if-ne p0, v0, :cond_1a

    .line 79
    invoke-static {}, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->internalIsBrotliCompressionAvailable()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 80
    sget-object p0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    goto :goto_18

    .line 81
    :cond_16
    sget-object p0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    :goto_18
    sput-object p0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    :cond_1a
    :goto_1a
    return-void
.end method
