.class public Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;
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
.field private MHSDBG:Z

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
    .registers 6

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->MHSDBG:Z

    .line 124
    invoke-virtual {p1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mHwAddr:[B

    .line 125
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mBytes:[B

    .line 126
    array-length p1, p2

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mLength:I

    .line 127
    invoke-static {p2, v1, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 128
    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 130
    new-instance p1, Ljava/util/StringJoiner;

    const-string p2, " "

    invoke-direct {p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseEther(Ljava/util/StringJoiner;)V

    .line 133
    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public static asString(I)Ljava/lang/String;
    .registers 1

    .line 108
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

    .line 583
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    goto :goto_2a

    :cond_a
    new-array v0, v1, [B

    const/4 v2, 0x0

    .line 586
    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-array p0, v1, [Ljava/lang/Object;

    move v3, v2

    :goto_13
    if-ge v2, v1, :cond_23

    .line 589
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

    .line 592
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    :goto_2a
    const-string p0, "invalid"

    return-object p0
.end method

.method private static getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x4

    .line 494
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x10

    .line 498
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

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

    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 179
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 183
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 184
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    move-result v0

    const/16 v2, 0x800

    if-ne v0, v2, :cond_a0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_a0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_54

    goto :goto_a0

    .line 191
    :cond_54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    move-result v0

    .line 193
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 194
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 195
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 196
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    if-ne v0, v1, :cond_81

    const-string v0, "who-has"

    .line 199
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_9f

    :cond_81
    const/4 p0, 0x2

    if-ne v0, p0, :cond_92

    const-string p0, "reply"

    .line 201
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_9f

    :cond_92
    const-string p0, "unknown opcode"

    .line 203
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :goto_9f
    return-void

    :cond_a0
    :goto_a0
    const-string p0, "unexpected header"

    .line 187
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method private parseDHCPv4(Ljava/util/StringJoiner;)V
    .registers 4

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mBytes:[B

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mLength:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->decodeFullPacket([BII)Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;

    move-result-object p0

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    :try_end_10
    .catch Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$ParseException; {:try_start_0 .. :try_end_10} :catch_11

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget v2, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->dnsInfoField:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    const-string v2, "tid"

    .line 471
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 472
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getDnsDataString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 473
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    sget v2, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->dnsInfoField:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 474
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    sget v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->dnsInfoField:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    const-string v0, "flags"

    .line 475
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 476
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getDnsDataString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    .line 477
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method private parseEther(Ljava/util/StringJoiner;)V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 142
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 146
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 148
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mHwAddr:[B

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

    .line 149
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const-string v1, ">"

    .line 153
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_b0

    const/16 v1, 0x806

    if-eq v0, v1, :cond_a7

    const v1, 0x86dd

    if-eq v0, v1, :cond_9e

    const-string p0, "ethtype"

    .line 172
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_b8

    :cond_9e
    const-string v0, "ipv6"

    .line 167
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 168
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseIPv6(Ljava/util/StringJoiner;)V

    goto :goto_b8

    :cond_a7
    const-string v0, "arp"

    .line 159
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 160
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseARP(Ljava/util/StringJoiner;)V

    goto :goto_b8

    :cond_b0
    const-string v0, "ipv4"

    .line 163
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 164
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseIPv4(Ljava/util/StringJoiner;)V

    :goto_b8
    return-void
.end method

.method private parseICMPv6(Ljava/util/StringJoiner;)V
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1d

    const-string v0, "runt:"

    .line 286
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 290
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    move-result v1

    .line 292
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    packed-switch v0, :pswitch_data_78

    const-string p0, "type"

    .line 312
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string p0, "code"

    .line 313
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_77

    :pswitch_54
    const-string v0, "na"

    .line 308
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 309
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    goto :goto_77

    :pswitch_5d
    const-string v0, "ns"

    .line 304
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 305
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    goto :goto_77

    :pswitch_66
    const-string v0, "ra"

    .line 300
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 301
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V

    goto :goto_77

    :pswitch_6f
    const-string v0, "rs"

    .line 296
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 297
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V

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

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_7c

    .line 357
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    move-result v0

    .line 358
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    move-result v2

    mul-int/2addr v2, v1

    const/4 v1, 0x2

    sub-int/2addr v2, v1

    if-ltz v2, :cond_77

    .line 360
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_2c

    goto :goto_77

    .line 364
    :cond_2c
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

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

    .line 376
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 377
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 378
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_70

    :cond_53
    const-string v0, "tlla"

    .line 372
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 373
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_70

    :cond_62
    const-string v0, "slla"

    .line 368
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 369
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 385
    :goto_70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_77
    :goto_77
    const-string p0, "<malformed>"

    .line 361
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_7c
    return-void
.end method

.method private parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 344
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 348
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 349
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 350
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    return-void
.end method

.method private parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V
    .registers 5

    .line 331
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 332
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 336
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 337
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    return-void
.end method

.method private parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1d

    const-string v0, "runt:"

    .line 321
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 325
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 326
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    return-void
.end method

.method private parseIPv4(Ljava/util/StringJoiner;)V
    .registers 8

    .line 208
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "runt"

    .line 209
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 213
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x4

    .line 215
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_c3

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_32

    goto/16 :goto_c3

    :cond_32
    add-int/2addr v1, v0

    .line 222
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    move-result v2

    and-int/lit16 v2, v2, 0x1fff

    if-eqz v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    .line 226
    :goto_4b
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    move-result v3

    .line 229
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v0, 0xc

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 232
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 238
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-string v1, "fragment"

    if-ne v3, v0, :cond_9d

    const-string v0, "udp"

    .line 239
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v2, :cond_99

    .line 240
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_c2

    .line 241
    :cond_99
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseUDP(Ljava/util/StringJoiner;)V

    goto :goto_c2

    .line 242
    :cond_9d
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne v3, v0, :cond_b0

    const-string v0, "tcp"

    .line 243
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v2, :cond_ac

    .line 244
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_c2

    .line 245
    :cond_ac
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseTCP(Ljava/util/StringJoiner;)V

    goto :goto_c2

    :cond_b0
    const-string p0, "proto"

    .line 247
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v2, :cond_c2

    .line 248
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_c2
    :goto_c2
    return-void

    :cond_c3
    :goto_c3
    const-string v0, "runt:"

    .line 217
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method private parseIPv6(Ljava/util/StringJoiner;)V
    .registers 8

    .line 253
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 254
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 258
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 260
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 261
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(B)I

    move-result v2

    .line 263
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 264
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 265
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 269
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    if-ne v2, v0, :cond_68

    const-string v0, "icmp6"

    .line 271
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 272
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseICMPv6(Ljava/util/StringJoiner;)V

    goto :goto_8f

    .line 273
    :cond_68
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v2, v0, :cond_75

    const-string v0, "udp"

    .line 274
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 275
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseUDP(Ljava/util/StringJoiner;)V

    goto :goto_8f

    .line 276
    :cond_75
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne v2, v0, :cond_82

    const-string v0, "tcp"

    .line 277
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 278
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseTCP(Ljava/util/StringJoiner;)V

    goto :goto_8f

    :cond_82
    const-string p0, "proto"

    .line 280
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :goto_8f
    return-void
.end method

.method private parseTCP(Ljava/util/StringJoiner;)V
    .registers 8

    .line 438
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 439
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 443
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 444
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    move-result v2

    .line 445
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    move-result v3

    .line 446
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 448
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 450
    sget p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->privateDnsPort:I

    if-eq v2, p0, :cond_59

    if-ne v3, p0, :cond_6d

    :cond_59
    const-string p0, "private_dns"

    .line 451
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 452
    sget p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->privateDnsPort:I

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

    .line 390
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1e

    const-string v0, "runt:"

    .line 391
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    .line 395
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 396
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    move-result v2

    .line 397
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asUint(S)I

    move-result v3

    .line 398
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 400
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x44

    if-eq v2, v0, :cond_59

    if-ne v3, v0, :cond_61

    :cond_59
    const-string v0, "dhcp4"

    .line 402
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 403
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseDHCPv4(Ljava/util/StringJoiner;)V

    .line 406
    :cond_61
    sget v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->dnsPort:I

    if-eq v2, v0, :cond_67

    if-ne v3, v0, :cond_7e

    :cond_67
    const-string v0, "dns"

    .line 407
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 408
    sget v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->dnsPort:I

    if-ne v3, v0, :cond_76

    const-string v0, "Queries"

    .line 409
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7b

    :cond_76
    const-string v0, "Responses"

    .line 410
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 411
    :goto_7b
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->parseDns(Ljava/util/StringJoiner;)V

    :cond_7e
    return-void
.end method

.method public static summarize(Landroid/net/MacAddress;[B)Ljava/lang/String;
    .registers 3

    .line 112
    array-length v0, p1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_14

    if-nez p1, :cond_5

    goto :goto_14

    .line 119
    :cond_5
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 120
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;-><init>(Landroid/net/MacAddress;[BI)V

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_3

    return-object p1

    .line 530
    :cond_3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->MHSDBG:Z

    if-eqz p0, :cond_8

    return-object p1

    .line 533
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x8

    if-le p0, v0, :cond_20

    .line 534
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    return-object p0
.end method
