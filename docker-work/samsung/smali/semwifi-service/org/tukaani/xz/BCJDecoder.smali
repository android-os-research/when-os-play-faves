.class Lorg/tukaani/xz/BCJDecoder;
.super Lorg/tukaani/xz/BCJCoder;
.source "BCJDecoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterDecoder;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final filterID:J

.field private final startOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(J[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/tukaani/xz/BCJCoder;-><init>()V

    .line 22
    iput-wide p1, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    .line 24
    array-length p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_c

    .line 25
    iput p2, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    goto :goto_20

    .line 26
    :cond_c
    array-length p1, p3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_21

    move p1, p2

    :goto_11
    if-ge p2, v0, :cond_1e

    .line 29
    aget-byte v1, p3, p2

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v2, p2, 0x8

    shl-int/2addr v1, v2

    or-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    .line 31
    :cond_1e
    iput p1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    :goto_20
    return-void

    .line 33
    :cond_21
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string p1, "Unsupported BCJ filter properties"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .registers 8

    .line 45
    iget-wide v0, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v2, 0x4

    cmp-long p2, v0, v2

    const/4 v2, 0x0

    if-nez p2, :cond_11

    .line 46
    new-instance p2, Lorg/tukaani/xz/simple/X86;

    iget p0, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {p2, v2, p0}, Lorg/tukaani/xz/simple/X86;-><init>(ZI)V

    goto :goto_58

    :cond_11
    const-wide/16 v3, 0x5

    cmp-long p2, v0, v3

    if-nez p2, :cond_1f

    .line 48
    new-instance p2, Lorg/tukaani/xz/simple/PowerPC;

    iget p0, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {p2, v2, p0}, Lorg/tukaani/xz/simple/PowerPC;-><init>(ZI)V

    goto :goto_58

    :cond_1f
    const-wide/16 v3, 0x6

    cmp-long p2, v0, v3

    if-nez p2, :cond_2d

    .line 50
    new-instance p2, Lorg/tukaani/xz/simple/IA64;

    iget p0, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {p2, v2, p0}, Lorg/tukaani/xz/simple/IA64;-><init>(ZI)V

    goto :goto_58

    :cond_2d
    const-wide/16 v3, 0x7

    cmp-long p2, v0, v3

    if-nez p2, :cond_3b

    .line 52
    new-instance p2, Lorg/tukaani/xz/simple/ARM;

    iget p0, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {p2, v2, p0}, Lorg/tukaani/xz/simple/ARM;-><init>(ZI)V

    goto :goto_58

    :cond_3b
    const-wide/16 v3, 0x8

    cmp-long p2, v0, v3

    if-nez p2, :cond_49

    .line 54
    new-instance p2, Lorg/tukaani/xz/simple/ARMThumb;

    iget p0, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {p2, v2, p0}, Lorg/tukaani/xz/simple/ARMThumb;-><init>(ZI)V

    goto :goto_58

    :cond_49
    const-wide/16 v3, 0x9

    cmp-long p2, v0, v3

    if-nez p2, :cond_57

    .line 56
    new-instance p2, Lorg/tukaani/xz/simple/SPARC;

    iget p0, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {p2, v2, p0}, Lorg/tukaani/xz/simple/SPARC;-><init>(ZI)V

    goto :goto_58

    :cond_57
    const/4 p2, 0x0

    .line 60
    :goto_58
    new-instance p0, Lorg/tukaani/xz/SimpleInputStream;

    invoke-direct {p0, p1, p2}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object p0
.end method

.method public getMemoryUsage()I
    .registers 1

    .line 39
    invoke-static {}, Lorg/tukaani/xz/SimpleInputStream;->getMemoryUsage()I

    move-result p0

    return p0
.end method
