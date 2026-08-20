.class Lorg/apache/commons/compress/archivers/cpio/CpioUtil;
.super Ljava/lang/Object;
.source "CpioUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArray2long([BZ)J
    .registers 8

    .line 47
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_34

    .line 53
    array-length v0, p0

    new-array v1, v0, [B

    .line 54
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    if-nez p1, :cond_20

    move p1, v3

    :goto_11
    if-ge p1, v0, :cond_20

    .line 59
    aget-byte v2, v1, p1

    add-int/lit8 v4, p1, 0x1

    .line 60
    aget-byte v5, v1, v4

    aput-byte v5, v1, p1

    .line 61
    aput-byte v2, v1, v4

    add-int/lit8 p1, v4, 0x1

    goto :goto_11

    .line 65
    :cond_20
    aget-byte p1, v1, v3

    and-int/lit16 p1, p1, 0xff

    int-to-long v2, p1

    :goto_25
    if-ge p0, v0, :cond_33

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 68
    aget-byte p1, v1, p0

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_25

    :cond_33
    return-wide v2

    .line 48
    :cond_34
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method static fileType(J)J
    .registers 4

    const-wide/32 v0, 0xf000

    and-long/2addr p0, v0

    return-wide p0
.end method

.method static long2byteArray(JIZ)[B
    .registers 8

    .line 89
    new-array v0, p2, [B

    .line 93
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_2d

    const/4 v1, 0x2

    if-lt p2, v1, :cond_2d

    add-int/lit8 v1, p2, -0x1

    :goto_b
    if-ltz v1, :cond_1a

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 99
    aput-byte v2, v0, v1

    const/16 v2, 0x8

    shr-long/2addr p0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1a
    if-nez p3, :cond_2c

    const/4 p0, 0x0

    :goto_1d
    if-ge p0, p2, :cond_2c

    .line 106
    aget-byte p1, v0, p0

    add-int/lit8 p3, p0, 0x1

    .line 107
    aget-byte v1, v0, p3

    aput-byte v1, v0, p0

    .line 108
    aput-byte p1, v0, p3

    add-int/lit8 p0, p3, 0x1

    goto :goto_1d

    :cond_2c
    return-object v0

    .line 94
    :cond_2d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
