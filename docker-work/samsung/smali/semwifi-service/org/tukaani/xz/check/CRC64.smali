.class public Lorg/tukaani/xz/check/CRC64;
.super Lorg/tukaani/xz/check/Check;
.source "CRC64.java"


# static fields
.field private static final crcTable:[J

.field private static final poly:J = -0x3693a86a2878f0beL


# instance fields
.field private crc:J


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v0, 0x100

    new-array v0, v0, [J

    .line 14
    sput-object v0, Lorg/tukaani/xz/check/CRC64;->crcTable:[J

    const/4 v0, 0x0

    move v1, v0

    .line 19
    :goto_8
    sget-object v2, Lorg/tukaani/xz/check/CRC64;->crcTable:[J

    array-length v2, v2

    if-ge v1, v2, :cond_2f

    int-to-long v2, v1

    move v4, v0

    :goto_f
    const/16 v5, 0x8

    if-ge v4, v5, :cond_28

    const-wide/16 v5, 0x1

    and-long v7, v2, v5

    cmp-long v5, v7, v5

    const/4 v6, 0x1

    if-nez v5, :cond_24

    ushr-long/2addr v2, v6

    const-wide v5, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    xor-long/2addr v2, v5

    goto :goto_25

    :cond_24
    ushr-long/2addr v2, v6

    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 28
    :cond_28
    sget-object v4, Lorg/tukaani/xz/check/CRC64;->crcTable:[J

    aput-wide v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2f
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    const-wide/16 v0, -0x1

    .line 16
    iput-wide v0, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    const/16 v0, 0x8

    .line 33
    iput v0, p0, Lorg/tukaani/xz/check/Check;->size:I

    const-string v0, "CRC64"

    .line 34
    iput-object v0, p0, Lorg/tukaani/xz/check/Check;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()[B
    .registers 7

    .line 45
    iget-wide v0, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    not-long v0, v0

    const-wide/16 v2, -0x1

    .line 46
    iput-wide v2, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    const/16 p0, 0x8

    new-array v2, p0, [B

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p0, :cond_19

    mul-int/lit8 v4, v3, 0x8

    shr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 50
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_19
    return-object v2
.end method

.method public update([BII)V
    .registers 10

    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_19

    .line 41
    sget-object v0, Lorg/tukaani/xz/check/CRC64;->crcTable:[J

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    iget-wide v2, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    long-to-int v4, v2

    xor-int/2addr p2, v4

    and-int/lit16 p2, p2, 0xff

    aget-wide v4, v0, p2

    const/16 p2, 0x8

    ushr-long/2addr v2, p2

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    move p2, v1

    goto :goto_1

    :cond_19
    return-void
.end method
