.class public Lcom/android/net/module/util/IpUtils;
.super Ljava/lang/Object;
.source "IpUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;
    .registers 6
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I

    .line 157
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_7

    const-string v0, "[%s]:%d"

    goto :goto_9

    :cond_7
    const-string v0, "%s:%d"

    :goto_9
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 156
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist checksum(Ljava/nio/ByteBuffer;III)I
    .registers 11
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "seed"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 46
    move v0, p1

    .line 47
    .local v0, "sum":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 51
    .local v1, "bufPosition":I
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 55
    .local v2, "shortBuf":Ljava/nio/ShortBuffer;
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    sub-int v3, p3, p2

    div-int/lit8 v3, v3, 0x2

    .line 58
    .local v3, "numShorts":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v3, :cond_22

    .line 59
    invoke-virtual {v2, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v5

    invoke-static {v5}, Lcom/android/net/module/util/IpUtils;->intAbs(S)I

    move-result v5

    add-int/2addr v0, v5

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 61
    .end local v4    # "i":I
    :cond_22
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr p2, v4

    .line 64
    if-eq p3, p2, :cond_34

    .line 65
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    int-to-short v4, v4

    .line 68
    .local v4, "b":S
    if-gez v4, :cond_31

    .line 69
    add-int/lit16 v5, v4, 0x100

    int-to-short v4, v5

    .line 72
    :cond_31
    mul-int/lit16 v5, v4, 0x100

    add-int/2addr v0, v5

    .line 75
    .end local v4    # "b":S
    :cond_34
    shr-int/lit8 v4, v0, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    and-int v6, v0, v5

    add-int/2addr v4, v6

    .line 76
    .end local v0    # "sum":I
    .local v4, "sum":I
    shr-int/lit8 v0, v4, 0x10

    and-int/2addr v0, v5

    add-int/2addr v0, v4

    and-int/2addr v0, v5

    .line 77
    .end local v4    # "sum":I
    .restart local v0    # "sum":I
    not-int v4, v0

    .line 78
    .local v4, "negated":I
    int-to-short v5, v4

    invoke-static {v5}, Lcom/android/net/module/util/IpUtils;->intAbs(S)I

    move-result v5

    return v5
.end method

.method public static blacklist icmpv6Checksum(Ljava/nio/ByteBuffer;III)S
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ipOffset"    # I
    .param p2, "transportOffset"    # I
    .param p3, "transportLen"    # I

    .line 152
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/net/module/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result v0

    return v0
.end method

.method private static blacklist intAbs(S)I
    .registers 2
    .param p0, "v"    # S

    .line 37
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static blacklist ipChecksum(Ljava/nio/ByteBuffer;I)S
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "headerOffset"    # I

    .line 105
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    .line 106
    .local v0, "ihl":B
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v1}, Lcom/android/net/module/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    int-to-short v1, v1

    return v1
.end method

.method private static blacklist ipversion(Ljava/nio/ByteBuffer;I)B
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "headerOffset"    # I

    .line 101
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, -0x10

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    return v0
.end method

.method public static blacklist isValidUdpOrTcpPort(I)Z
    .registers 2
    .param p0, "port"    # I

    .line 162
    if-lez p0, :cond_8

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I
    .registers 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "headerOffset"    # I
    .param p2, "protocol"    # I
    .param p3, "transportLen"    # I

    .line 83
    add-int v0, p2, p3

    .line 84
    .local v0, "partial":I
    add-int/lit8 v1, p1, 0xc

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Lcom/android/net/module/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    add-int/lit8 v1, p1, 0xe

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Lcom/android/net/module/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    add-int/lit8 v1, p1, 0x10

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Lcom/android/net/module/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    add-int/lit8 v1, p1, 0x12

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Lcom/android/net/module/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    return v0
.end method

.method private static blacklist pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I
    .registers 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "headerOffset"    # I
    .param p2, "protocol"    # I
    .param p3, "transportLen"    # I

    .line 93
    add-int v0, p2, p3

    .line 94
    .local v0, "partial":I
    const/16 v1, 0x8

    .local v1, "offset":I
    :goto_4
    const/16 v2, 0x28

    if-ge v1, v2, :cond_16

    .line 95
    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    invoke-static {v2}, Lcom/android/net/module/util/IpUtils;->intAbs(S)I

    move-result v2

    add-int/2addr v0, v2

    .line 94
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    .line 97
    .end local v1    # "offset":I
    :cond_16
    return v0
.end method

.method public static blacklist tcpChecksum(Ljava/nio/ByteBuffer;III)S
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ipOffset"    # I
    .param p2, "transportOffset"    # I
    .param p3, "transportLen"    # I

    .line 144
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/net/module/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result v0

    return v0
.end method

.method private static blacklist transportChecksum(Ljava/nio/ByteBuffer;IIII)S
    .registers 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "protocol"    # I
    .param p2, "ipOffset"    # I
    .param p3, "transportOffset"    # I
    .param p4, "transportLen"    # I

    .line 111
    if-ltz p4, :cond_2c

    .line 115
    invoke-static {p0, p2}, Lcom/android/net/module/util/IpUtils;->ipversion(Ljava/nio/ByteBuffer;I)B

    move-result v0

    .line 116
    .local v0, "ver":B
    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 117
    invoke-static {p0, p2, p1, p4}, Lcom/android/net/module/util/IpUtils;->pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I

    move-result v1

    .local v1, "sum":I
    goto :goto_15

    .line 118
    .end local v1    # "sum":I
    :cond_e
    const/4 v1, 0x6

    if-ne v0, v1, :cond_24

    .line 119
    invoke-static {p0, p2, p1, p4}, Lcom/android/net/module/util/IpUtils;->pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I

    move-result v1

    .line 124
    .restart local v1    # "sum":I
    :goto_15
    add-int v2, p3, p4

    invoke-static {p0, v1, p3, v2}, Lcom/android/net/module/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    .line 125
    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p1, v2, :cond_22

    if-nez v1, :cond_22

    .line 126
    const/4 v1, -0x1

    .line 128
    :cond_22
    int-to-short v2, v1

    return v2

    .line 121
    .end local v1    # "sum":I
    :cond_24
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Checksum must be IPv4 or IPv6"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    .end local v0    # "ver":B
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport length < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist udpChecksum(Ljava/nio/ByteBuffer;II)S
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ipOffset"    # I
    .param p2, "transportOffset"    # I

    .line 135
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/android/net/module/util/IpUtils;->intAbs(S)I

    move-result v0

    .line 136
    .local v0, "transportLen":I
    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {p0, v1, p1, p2, v0}, Lcom/android/net/module/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result v1

    return v1
.end method
