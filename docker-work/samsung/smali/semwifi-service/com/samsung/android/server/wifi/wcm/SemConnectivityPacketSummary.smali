.class public Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;
.super Ljava/lang/Object;
.source "SemConnectivityPacketSummary.java"


# static fields
.field public static final ARP_HWTYPE_ETHER:I = 0x1

.field public static final ARP_PAYLOAD_LEN:I = 0x1c

.field public static final ARP_REPLY:I = 0x2

.field public static final ARP_REQUEST:I = 0x1

.field public static final DHCP4_CLIENT_PORT:I = 0x44

.field public static final ETHER_ADDR_LEN:I = 0x6

.field public static final ETHER_DST_ADDR_OFFSET:I = 0x0

.field public static final ETHER_HEADER_LEN:I = 0xe

.field public static final ETHER_SRC_ADDR_OFFSET:I = 0x6

.field public static final ETHER_TYPE_ARP:I = 0x806

.field public static final ETHER_TYPE_IPV4:I = 0x800

.field public static final ETHER_TYPE_IPV6:I = 0x86dd

.field public static final ETHER_TYPE_LENGTH:I = 0x2

.field public static final ETHER_TYPE_OFFSET:I = 0xc

.field public static final ICMPV6_HEADER_MIN_LEN:I = 0x4

.field public static final ICMPV6_ND_OPTION_LENGTH_SCALING_FACTOR:I = 0x8

.field public static final ICMPV6_ND_OPTION_MIN_LENGTH:I = 0x8

.field public static final ICMPV6_ND_OPTION_MTU:I = 0x5

.field public static final ICMPV6_ND_OPTION_SLLA:I = 0x1

.field public static final ICMPV6_ND_OPTION_TLLA:I = 0x2

.field public static final ICMPV6_NEIGHBOR_ADVERTISEMENT:I = 0x88

.field public static final ICMPV6_NEIGHBOR_SOLICITATION:I = 0x87

.field public static final ICMPV6_ROUTER_ADVERTISEMENT:I = 0x86

.field public static final ICMPV6_ROUTER_SOLICITATION:I = 0x85

.field public static final IPV4_ADDR_LEN:I = 0x4

.field public static final IPV4_DST_ADDR_OFFSET:I = 0x10

.field public static final IPV4_FLAGS_OFFSET:I = 0x6

.field public static final IPV4_FRAGMENT_MASK:I = 0x1fff

.field public static final IPV4_HEADER_MIN_LEN:I = 0x14

.field public static final IPV4_IHL_MASK:I = 0xf

.field public static final IPV4_PROTOCOL_OFFSET:I = 0x9

.field public static final IPV4_SRC_ADDR_OFFSET:I = 0xc

.field public static final IPV6_HEADER_LEN:I = 0x28

.field public static final IPV6_PROTOCOL_OFFSET:I = 0x6

.field public static final IPV6_SRC_ADDR_OFFSET:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SemConnectivityPacketSummary"

.field public static final UDP_HEADER_LEN:I = 0x8

.field private static dnsInfoField:I = 0x2

.field private static dnsPort:I = 0x35

.field private static final dnsTran:I = 0x6

.field private static mTypeFieldLength:I = 0x7

.field private static positionDnsQueriesName:I = 0x10

.field private static positionDnsQueriesResponse:I = 0x11

.field private static privateDnsPort:I = 0x355

.field private static startPositionOfDns:I = 0x2a


# instance fields
.field private final mBytes:[B

.field private final mHwAddr:[B

.field private final mLength:I

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/net/MacAddress;[BI)V
    .registers 4

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mHwAddr:[B

    .line 124
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mBytes:[B

    .line 125
    array-length p1, p2

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mLength:I

    const/4 p3, 0x0

    .line 126
    invoke-static {p2, p3, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 127
    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 129
    new-instance p1, Ljava/util/StringJoiner;

    const-string p2, " "

    invoke-direct {p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseEther(Ljava/util/StringJoiner;)V

    .line 132
    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public static asString(I)Ljava/lang/String;
    .registers 1

    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static asUint(B)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static asUint(S)I
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static getDnsDataString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_2a

    .line 575
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    goto :goto_2a

    :cond_a
    new-array v0, v1, [B

    const/4 v2, 0x0

    .line 578
    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-array p0, v1, [Ljava/lang/Object;

    move v3, v2

    :goto_13
    if-ge v2, v1, :cond_23

    .line 581
    aget-byte v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, p0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_13

    :cond_23
    const-string v0, "%02x%02x"

    .line 584
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    :goto_2a
    const-string p0, "invalid"

    return-object p0
.end method

.method private getDnsIpOfAnswer(ILjava/util/StringJoiner;)V
    .registers 6

    const/4 v0, 0x0

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 622
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getDnsQueriesLenthOrTypeField()Ljava/lang/String;

    move-result-object v1

    .line 623
    sget v2, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->positionDnsQueriesName:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    return-void
.end method

.method private getDnsQueriesLenthOrTypeField()Ljava/lang/String;
    .registers 7

    .line 605
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    new-array v1, v0, [B

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 610
    invoke-virtual {p0, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move p0, v3

    :goto_16
    if-ge v3, v0, :cond_26

    .line 611
    aget-byte v4, v1, v3

    add-int/lit8 v5, p0, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, p0

    add-int/lit8 v3, v3, 0x1

    move p0, v5

    goto :goto_16

    :cond_26
    const-string p0, "%02x"

    .line 613
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDnsQueriesName(ILjava/util/StringJoiner;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 536
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 537
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getDnsQueriesLenthOrTypeField()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 538
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_74

    :cond_1c
    if-eqz v2, :cond_45

    .line 540
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "c0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 541
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 542
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getDnsQueriesLenthOrTypeField()Ljava/lang/String;

    move-result-object p1

    .line 544
    :try_start_37
    sget v0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->startPositionOfDns:I

    sget v1, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->positionDnsQueriesName:I

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getDnsQueriesName(ILjava/util/StringJoiner;)V
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_43} :catch_44

    goto :goto_74

    :catch_44
    return-void

    .line 551
    :cond_45
    :try_start_45
    sget v3, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->positionDnsQueriesName:I

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_4b} :catch_74

    add-int/lit8 p1, p1, 0x1

    .line 558
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 559
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 560
    new-array v4, v2, [B

    .line 561
    invoke-virtual {v3, v4, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 563
    :try_start_63
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 564
    invoke-virtual {p2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    :try_end_6d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_63 .. :try_end_6d} :catch_74

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_2

    :catch_74
    :goto_74
    return-void
.end method

.method private static getDnsQueriesString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 5

    const-string v0, "error"

    if-eqz p0, :cond_22

    .line 588
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_d

    goto :goto_22

    :cond_d
    new-array v1, v2, [B

    const/4 v3, 0x0

    .line 591
    invoke-virtual {p0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 595
    :try_start_13
    new-instance p0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_1a} :catch_21

    .line 600
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    return-object p0

    :catch_21
    :cond_21
    return-object v0

    :cond_22
    :goto_22
    const-string p0, "invalid"

    return-object p0
.end method

.method private static getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x4

    .line 494
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x10

    .line 498
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1b

    .line 502
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_9

    goto :goto_1b

    .line 504
    :cond_9
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 505
    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 507
    :try_start_f
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    .line 508
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    const-string p0, "unknown"

    return-object p0

    :cond_1b
    :goto_1b
    const-string p0, "invalid"

    return-object p0
.end method

.method private static getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_2a

    .line 515
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    goto :goto_2a

    :cond_a
    new-array v0, v1, [B

    const/4 v2, 0x0

    .line 518
    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-array p0, v1, [Ljava/lang/Object;

    move v3, v2

    :goto_13
    if-ge v2, v1, :cond_23

    .line 521
    aget-byte v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, p0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_13

    :cond_23
    const-string v0, "%02x:%02x:%02x:%02x:%02x:%02x"

    .line 524
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    :goto_2a
    const-string p0, "invalid"

    return-object p0
.end method

.method private parseARP(Ljava/util/StringJoiner;)V
    .registers 7

    .line 177
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 178
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 182
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(S)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(S)I

    move-result v0

    const/16 v2, 0x800

    if-ne v0, v2, :cond_a0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 184
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(B)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_a0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(B)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_54

    goto :goto_a0

    .line 190
    :cond_54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(S)I

    move-result v0

    .line 192
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 194
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 195
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    if-ne v0, v1, :cond_81

    const-string v0, "who-has"

    .line 198
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_9f

    :cond_81
    const/4 p0, 0x2

    if-ne v0, p0, :cond_92

    const-string p0, "reply"

    .line 200
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_9f

    :cond_92
    const-string p0, "unknown opcode"

    .line 202
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :goto_9f
    return-void

    :cond_a0
    :goto_a0
    const-string p0, "unexpected header"

    .line 186
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method private parseDHCPv4(Ljava/util/StringJoiner;)V
    .registers 4

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mBytes:[B

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mLength:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->decodeFullPacket([BII)Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;

    move-result-object p0

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    :try_end_10
    .catch Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_26

    :catch_11
    move-exception p0

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :goto_26
    return-void
.end method

.method private parseDns(Ljava/util/StringJoiner;)V
    .registers 5

    .line 469
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget v2, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->dnsInfoField:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    const-string v2, "tid"

    .line 471
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 472
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getDnsDataString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 473
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    sget v2, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->dnsInfoField:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 474
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    sget v0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->dnsInfoField:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    const-string v0, "flags"

    .line 475
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 476
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getDnsDataString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    .line 477
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method private parseEther(Ljava/util/StringJoiner;)V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 145
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 147
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mHwAddr:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string v2, "TX"

    goto :goto_41

    :cond_3f
    const-string v2, "RX"

    :goto_41
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 148
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const-string v1, ">"

    .line 152
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(S)I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_a8

    const/16 v1, 0x806

    if-eq v0, v1, :cond_9f

    const v1, 0x86dd

    if-eq v0, v1, :cond_96

    const-string p0, "ethtype"

    .line 171
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_b0

    :cond_96
    const-string v0, "ipv6"

    .line 166
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 167
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseIPv6(Ljava/util/StringJoiner;)V

    goto :goto_b0

    :cond_9f
    const-string v0, "arp"

    .line 158
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 159
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseARP(Ljava/util/StringJoiner;)V

    goto :goto_b0

    :cond_a8
    const-string v0, "ipv4"

    .line 162
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 163
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseIPv4(Ljava/util/StringJoiner;)V

    :goto_b0
    return-void
.end method

.method private parseICMPv6(Ljava/util/StringJoiner;)V
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1d

    const-string v0, "runt:"

    .line 285
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 289
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(B)I

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(B)I

    move-result v1

    .line 291
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    packed-switch v0, :pswitch_data_78

    const-string p0, "type"

    .line 311
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string p0, "code"

    .line 312
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_77

    :pswitch_54
    const-string v0, "na"

    .line 307
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 308
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    goto :goto_77

    :pswitch_5d
    const-string v0, "ns"

    .line 303
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 304
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    goto :goto_77

    :pswitch_66
    const-string v0, "ra"

    .line 299
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 300
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V

    goto :goto_77

    :pswitch_6f
    const-string v0, "rs"

    .line 295
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 296
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V

    :goto_77
    return-void

    :pswitch_data_78
    .packed-switch 0x85
        :pswitch_6f
        :pswitch_66
        :pswitch_5d
        :pswitch_54
    .end packed-switch
.end method

.method private parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V
    .registers 7

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_7c

    .line 356
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(B)I

    move-result v0

    .line 357
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(B)I

    move-result v2

    mul-int/2addr v2, v1

    const/4 v1, 0x2

    sub-int/2addr v2, v1

    if-ltz v2, :cond_77

    .line 359
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_2c

    goto :goto_77

    .line 363
    :cond_2c
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_62

    if-eq v0, v1, :cond_53

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3b

    goto :goto_70

    :cond_3b
    const-string v0, "mtu"

    .line 375
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 376
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 377
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_70

    :cond_53
    const-string v0, "tlla"

    .line 371
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 372
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_70

    :cond_62
    const-string v0, "slla"

    .line 367
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 368
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 384
    :goto_70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_77
    :goto_77
    const-string p0, "<malformed>"

    .line 360
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_7c
    return-void
.end method

.method private parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 343
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 347
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 349
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    return-void
.end method

.method private parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 331
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 335
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 336
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    return-void
.end method

.method private parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V
    .registers 5

    .line 319
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1d

    const-string v0, "runt:"

    .line 320
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 324
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 325
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    return-void
.end method

.method private parseIPv4(Ljava/util/StringJoiner;)V
    .registers 8

    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "runt"

    .line 208
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 212
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x4

    .line 214
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_c3

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 215
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_32

    goto/16 :goto_c3

    :cond_32
    add-int/2addr v1, v0

    .line 221
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(S)I

    move-result v2

    and-int/lit16 v2, v2, 0x1fff

    if-eqz v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    .line 225
    :goto_4b
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(B)I

    move-result v3

    .line 228
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v0, 0xc

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 229
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 231
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 232
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 237
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-string v1, "fragment"

    if-ne v3, v0, :cond_9d

    const-string v0, "udp"

    .line 238
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v2, :cond_99

    .line 239
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_c2

    .line 240
    :cond_99
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseUDP(Ljava/util/StringJoiner;)V

    goto :goto_c2

    .line 241
    :cond_9d
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne v3, v0, :cond_b0

    const-string v0, "tcp"

    .line 242
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v2, :cond_ac

    .line 243
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_c2

    .line 244
    :cond_ac
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseTCP(Ljava/util/StringJoiner;)V

    goto :goto_c2

    :cond_b0
    const-string p0, "proto"

    .line 246
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v2, :cond_c2

    .line 247
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_c2
    :goto_c2
    return-void

    :cond_c3
    :goto_c3
    const-string v0, "runt:"

    .line 216
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method private parseIPv6(Ljava/util/StringJoiner;)V
    .registers 8

    .line 252
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 253
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 257
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 259
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(B)I

    move-result v2

    .line 262
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 264
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 268
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    if-ne v2, v0, :cond_68

    const-string v0, "icmp6"

    .line 270
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 271
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseICMPv6(Ljava/util/StringJoiner;)V

    goto :goto_8f

    .line 272
    :cond_68
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v2, v0, :cond_75

    const-string v0, "udp"

    .line 273
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 274
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseUDP(Ljava/util/StringJoiner;)V

    goto :goto_8f

    .line 275
    :cond_75
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne v2, v0, :cond_82

    const-string v0, "tcp"

    .line 276
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 277
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseTCP(Ljava/util/StringJoiner;)V

    goto :goto_8f

    :cond_82
    const-string p0, "proto"

    .line 279
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :goto_8f
    return-void
.end method

.method private parseTCP(Ljava/util/StringJoiner;)V
    .registers 8

    .line 438
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 439
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 443
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 444
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(S)I

    move-result v2

    .line 445
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(S)I

    move-result v3

    .line 446
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 448
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 450
    sget p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->privateDnsPort:I

    if-eq v2, p0, :cond_59

    if-ne v3, p0, :cond_6d

    :cond_59
    const-string p0, "private_dns"

    .line 451
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 452
    sget p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->privateDnsPort:I

    if-ne v3, p0, :cond_68

    const-string p0, "TX"

    .line 453
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_6d

    :cond_68
    const-string p0, "RX"

    .line 454
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_6d
    :goto_6d
    return-void
.end method

.method private parseUDP(Ljava/util/StringJoiner;)V
    .registers 8

    .line 389
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 390
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 394
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 395
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(S)I

    move-result v2

    .line 396
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asUint(S)I

    move-result v3

    .line 397
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 399
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x44

    if-eq v2, v0, :cond_59

    if-ne v3, v0, :cond_61

    :cond_59
    const-string v0, "dhcp4"

    .line 401
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 402
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseDHCPv4(Ljava/util/StringJoiner;)V

    .line 405
    :cond_61
    sget v0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->dnsPort:I

    if-eq v2, v0, :cond_67

    if-ne v3, v0, :cond_7e

    :cond_67
    const-string v0, "dns"

    .line 406
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 407
    sget v0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->dnsPort:I

    if-ne v3, v0, :cond_76

    const-string v0, "Queries"

    .line 408
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7b

    :cond_76
    const-string v0, "Responses"

    .line 409
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 411
    :goto_7b
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->parseDns(Ljava/util/StringJoiner;)V

    :cond_7e
    return-void
.end method

.method public static summarize(Landroid/net/MacAddress;[B)Ljava/lang/String;
    .registers 3

    .line 111
    array-length v0, p1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_14

    if-nez p1, :cond_5

    goto :goto_14

    .line 118
    :cond_5
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 119
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;-><init>(Landroid/net/MacAddress;[BI)V

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    return-object p0
.end method
