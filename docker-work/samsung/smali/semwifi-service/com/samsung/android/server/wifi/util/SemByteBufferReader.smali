.class public Lcom/samsung/android/server/wifi/util/SemByteBufferReader;
.super Ljava/lang/Object;
.source "SemByteBufferReader.java"


# static fields
.field public static final MAXIMUM_INTEGER_SIZE:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MINIMUM_INTEGER_SIZE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J
    .registers 10

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2e

    const/16 v1, 0x8

    if-gt p2, v1, :cond_2e

    .line 52
    new-array v2, p2, [B

    .line 53
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x0

    .line 57
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, p0, :cond_20

    sub-int/2addr p2, v0

    :goto_13
    if-ltz p2, :cond_2d

    shl-long p0, v3, v1

    .line 59
    aget-byte v0, v2, p2

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    or-long/2addr v3, p0

    add-int/lit8 p2, p2, -0x1

    goto :goto_13

    :cond_20
    const/4 p0, 0x0

    :goto_21
    if-ge p0, p2, :cond_2d

    .line 62
    aget-byte p1, v2, p0

    shl-long/2addr v3, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v5, p1

    or-long/2addr v3, v5

    add-int/lit8 p0, p0, 0x1

    goto :goto_21

    :cond_2d
    return-wide v3

    .line 48
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 80
    new-array p1, p1, [B

    .line 81
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 82
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static readStringWithByteLength(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 96
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/util/SemByteBufferReader;->readString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
