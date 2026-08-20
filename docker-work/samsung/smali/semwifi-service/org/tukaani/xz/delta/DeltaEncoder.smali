.class public Lorg/tukaani/xz/delta/DeltaEncoder;
.super Lorg/tukaani/xz/delta/DeltaCoder;
.source "DeltaEncoder.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lorg/tukaani/xz/delta/DeltaCoder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public encode([BII[B)V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_23

    .line 19
    iget-object v1, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    iget v2, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    iget v3, p0, Lorg/tukaani/xz/delta/DeltaCoder;->pos:I

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v1, v2

    add-int/lit8 v4, v3, -0x1

    .line 20
    iput v4, p0, Lorg/tukaani/xz/delta/DeltaCoder;->pos:I

    and-int/lit16 v3, v3, 0xff

    add-int v4, p2, v0

    aget-byte v5, p1, v4

    aput-byte v5, v1, v3

    .line 21
    aget-byte v1, p1, v4

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method
