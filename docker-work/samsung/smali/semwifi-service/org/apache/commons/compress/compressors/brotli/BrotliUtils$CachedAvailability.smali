.class final enum Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;
.super Ljava/lang/Enum;
.source "BrotliUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CachedAvailability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

.field public static final enum CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

.field public static final enum CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

.field public static final enum DONT_CACHE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 29
    new-instance v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    const-string v1, "DONT_CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    new-instance v1, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    const-string v3, "CACHED_AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    new-instance v3, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    const-string v5, "CACHED_UNAVAILABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 28
    sput-object v5, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->$VALUES:[Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;
    .registers 2

    .line 28
    const-class v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;
    .registers 1

    .line 28
    sget-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->$VALUES:[Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    return-object v0
.end method
