.class public abstract Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;
.super Ljava/lang/Object;
.source "SemDhcpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;
    }
.end annotation


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field private static final DHCP_MAGIC_COOKIE:I = 0x63825363

.field protected static final DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_RELEASE:B = 0x7t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_MTU:B = 0x1at

.field protected static final DHCP_OPTION_END:B = -0x1t

.field protected static final DHCP_OPTION_OVERLOAD:B = 0x34t

.field protected static final DHCP_OPTION_PAD:B = 0x0t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final DHCP_VENDOR_INFO:B = 0x2bt

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field public static final ETHER_BROADCAST:[B

.field public static final HWADDR_LEN:I = 0x10

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IPV4_MIN_MTU:I = 0x44

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field private static final MAX_MTU:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field private static final MIN_MTU:I = 0x500

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field private static final OPTION_OVERLOAD_BOTH:B = 0x3t

.field private static final OPTION_OVERLOAD_FILE:B = 0x1t

.field private static final OPTION_OVERLOAD_SNAME:B = 0x2t

.field protected static final TAG:Ljava/lang/String; = "SemDhcpPacket"

.field public static final VENDOR_INFO_ANDROID_METERED:Ljava/lang/String; = "ANDROID_METERED"

.field static testOverrideHostname:Ljava/lang/String;

.field static testOverrideVendorId:Ljava/lang/String;


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/Inet4Address;

.field protected mClientId:[B

.field protected final mClientIp:Ljava/net/Inet4Address;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMaxMessageSize:Ljava/lang/Short;

.field protected mMessage:Ljava/lang/String;

.field protected mMtu:Ljava/lang/Short;

.field private final mNextIp:Ljava/net/Inet4Address;

.field protected final mRelayIp:Ljava/net/Inet4Address;

.field protected mRequestedIp:Ljava/net/Inet4Address;

.field protected mRequestedParams:[B

.field protected final mSecs:S

.field protected mServerHostName:Ljava/lang/String;

.field protected mServerIdentifier:Ljava/net/Inet4Address;

.field protected mSubnetMask:Ljava/net/Inet4Address;

.field protected mT1:Ljava/lang/Integer;

.field protected mT2:Ljava/lang/Integer;

.field protected final mTransId:I

.field protected mVendorId:Ljava/lang/String;

.field protected mVendorInfo:Ljava/lang/String;

.field protected final mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v0, -0x1

    .line 44
    invoke-static {v0}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 46
    fill-array-data v0, :array_1c

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->ETHER_BROADCAST:[B

    const/4 v0, 0x0

    .line 338
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    .line 339
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->testOverrideHostname:Ljava/lang/String;

    return-void

    :array_1c
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .registers 9

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mTransId:I

    .line 345
    iput-short p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mSecs:S

    .line 346
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 347
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 348
    iput-object p5, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    .line 349
    iput-object p6, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    .line 350
    iput-object p7, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientMac:[B

    .line 351
    iput-boolean p8, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mBroadcast:Z

    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .registers 3

    .line 597
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    .line 598
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 599
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .registers 3

    if-eqz p2, :cond_10

    .line 672
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x4

    .line 673
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 674
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_10
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .registers 3

    if-eqz p2, :cond_10

    .line 659
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    .line 660
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 661
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_10
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_23

    :try_start_2
    const-string v0, "US-ASCII"

    .line 686
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_23

    .line 688
    :catch_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "String is not US-ASCII: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .registers 3

    if-eqz p2, :cond_9

    .line 626
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    :cond_9
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_52

    .line 636
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_52

    .line 638
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0xff

    if-gt v0, v1, :cond_33

    .line 644
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v0

    .line 645
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 647
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/Inet4Address;

    .line 648
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1e

    :cond_32
    return-void

    .line 640
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DHCP option too long: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " vs. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    :goto_52
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B[B)V
    .registers 5

    if-eqz p2, :cond_33

    .line 609
    array-length v0, p2

    const/16 v1, 0xff

    if-gt v0, v1, :cond_13

    .line 613
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 614
    array-length p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 615
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_33

    .line 610
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DHCP option too long: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " vs. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .registers 2

    const/4 v0, -0x1

    .line 697
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;Ljava/lang/String;ZS)Ljava/nio/ByteBuffer;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZS)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1346
    new-instance v9, Lcom/samsung/android/server/wifi/wcm/DhcpAckPacket;

    const/4 v2, 0x0

    move-object v0, v9

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move-object v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/wcm/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    move-object/from16 v0, p11

    .line 1349
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mGateways:Ljava/util/List;

    move-object/from16 v0, p12

    .line 1350
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mDnsServers:Ljava/util/List;

    move-object/from16 v0, p8

    .line 1351
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v0, p14

    .line 1352
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 v0, p15

    .line 1353
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mHostName:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 1354
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    move-object/from16 v0, p13

    .line 1355
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 v0, p10

    .line 1356
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1357
    invoke-static/range {p17 .. p17}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mMtu:Ljava/lang/Short;

    if-eqz p16, :cond_3c

    const-string v0, "ANDROID_METERED"

    .line 1359
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mVendorInfo:Ljava/lang/String;

    :cond_3c
    const/16 v0, 0x44

    const/16 v1, 0x43

    move v2, p0

    .line 1361
    invoke-virtual {v9, p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;
    .registers 14

    .line 1303
    new-instance v7, Lcom/samsung/android/server/wifi/wcm/DhcpDiscoverPacket;

    sget-object v6, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move-object v3, v6

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/wcm/DhcpDiscoverPacket;-><init>(ISLjava/net/Inet4Address;[BZLjava/net/Inet4Address;)V

    .line 1305
    iput-object p5, v7, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedParams:[B

    const/16 p1, 0x43

    const/16 p2, 0x44

    .line 1306
    invoke-virtual {v7, p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[BZLjava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 14

    .line 1369
    new-instance v6, Lcom/samsung/android/server/wifi/wcm/DhcpNakPacket;

    const/4 v2, 0x0

    move-object v0, v6

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/wcm/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 1371
    iput-object p6, v6, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mMessage:Ljava/lang/String;

    .line 1372
    iput-object p2, v6, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 p1, 0x44

    const/16 p2, 0x43

    .line 1373
    invoke-virtual {v6, p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;Ljava/lang/String;ZS)Ljava/nio/ByteBuffer;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZS)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1319
    new-instance v9, Lcom/samsung/android/server/wifi/wcm/DhcpOfferPacket;

    sget-object v6, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    move-object v0, v9

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/wcm/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    move-object/from16 v0, p10

    .line 1322
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mGateways:Ljava/util/List;

    move-object/from16 v0, p11

    .line 1323
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mDnsServers:Ljava/util/List;

    move-object/from16 v0, p7

    .line 1324
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v0, p13

    .line 1325
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 v0, p14

    .line 1326
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mHostName:Ljava/lang/String;

    move-object/from16 v0, p12

    .line 1327
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 v0, p8

    .line 1328
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    move-object/from16 v0, p9

    .line 1329
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1330
    invoke-static/range {p16 .. p16}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mMtu:Ljava/lang/Short;

    if-eqz p15, :cond_3c

    const-string v0, "ANDROID_METERED"

    .line 1332
    iput-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mVendorInfo:Ljava/lang/String;

    :cond_3c
    const/16 v0, 0x44

    const/16 v1, 0x43

    move v2, p0

    .line 1334
    invoke-virtual {v9, p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 18

    .line 1383
    new-instance v7, Lcom/samsung/android/server/wifi/wcm/DhcpRequestPacket;

    sget-object v4, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/wcm/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    move-object v0, p6

    .line 1385
    iput-object v0, v7, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    move-object v0, p7

    .line 1386
    iput-object v0, v7, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 v0, p9

    .line 1387
    iput-object v0, v7, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mHostName:Ljava/lang/String;

    move-object/from16 v0, p8

    .line 1388
    iput-object v0, v7, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedParams:[B

    const/16 v0, 0x43

    const/16 v1, 0x44

    move v2, p0

    .line 1389
    invoke-virtual {v7, p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .registers 8

    .line 556
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    .line 560
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 561
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 564
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int p0, p4, p3

    .line 566
    div-int/lit8 p0, p0, 0x2

    new-array v1, p0, [S

    .line 567
    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    const/4 v0, 0x0

    :goto_18
    if-ge v0, p0, :cond_24

    .line 569
    aget-short v2, v1, v0

    .line 570
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->intAbs(S)I

    move-result v2

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_24
    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p3, p0

    if-eq p4, p3, :cond_36

    .line 577
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    int-to-short p0, p0

    if-gez p0, :cond_33

    add-int/lit16 p0, p0, 0x100

    int-to-short p0, p0

    :cond_33
    mul-int/lit16 p0, p0, 0x100

    add-int/2addr p2, p0

    :cond_36
    shr-int/lit8 p0, p2, 0x10

    const p1, 0xffff

    and-int/2addr p0, p1

    and-int/2addr p2, p1

    add-int/2addr p0, p2

    shr-int/lit8 p2, p0, 0x10

    and-int/2addr p2, p1

    add-int/2addr p0, p2

    and-int/2addr p0, p1

    not-int p0, p0

    int-to-short p0, p0

    .line 590
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->intAbs(S)I

    move-result p0

    return p0
.end method

.method static decodeFullPacket(Ljava/nio/ByteBuffer;I)Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;
    .registers 42
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 849
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 850
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 879
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_6a

    .line 883
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    const/16 v9, 0x116

    if-lt v8, v9, :cond_4e

    new-array v8, v4, [B

    new-array v9, v4, [B

    .line 891
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 892
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 894
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 896
    sget v9, Landroid/system/OsConstants;->ETH_P_IP:I

    if-ne v8, v9, :cond_34

    goto :goto_6a

    .line 897
    :cond_34
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v1, 0x1020000

    new-array v2, v5, [Ljava/lang/Object;

    .line 898
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v7

    sget v3, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Unexpected L2 type 0x%04x, expected 0x%04x"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 884
    :cond_4e
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v2, 0x1010000

    new-array v3, v5, [Ljava/lang/Object;

    .line 885
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "L2 packet too short, %d < %d"

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_6a
    :goto_6a
    const/4 v8, 0x5

    const/16 v9, 0xf

    const/4 v10, 0x4

    if-gt v1, v6, :cond_126

    .line 903
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    const/16 v13, 0x108

    if-lt v12, v13, :cond_10a

    .line 908
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v13, v12, 0xf0

    shr-int/2addr v13, v10

    if-ne v13, v10, :cond_f8

    .line 916
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 917
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 918
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 919
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 920
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 921
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 922
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    .line 923
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 925
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v14

    .line 926
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    const/16 v15, 0x11

    if-ne v13, v15, :cond_e6

    and-int/2addr v12, v9

    sub-int/2addr v12, v8

    move v13, v7

    :goto_a8
    if-ge v13, v12, :cond_b0

    .line 938
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    add-int/lit8 v13, v13, 0x1

    goto :goto_a8

    .line 942
    :cond_b0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    .line 943
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    .line 944
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 945
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 950
    invoke-static {v12, v13}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->isPacketToOrFromClient(SS)Z

    move-result v15

    if-nez v15, :cond_e3

    .line 951
    invoke-static {v12, v13}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->isPacketServerToServer(SS)Z

    move-result v15

    if-eqz v15, :cond_cb

    goto :goto_e3

    .line 956
    :cond_cb
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v1, 0x3020000

    new-array v2, v5, [Ljava/lang/Object;

    .line 957
    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Unexpected UDP ports %d->%d"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_e3
    :goto_e3
    move-object/from16 v18, v14

    goto :goto_128

    .line 929
    :cond_e6
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v1, 0x3010000

    new-array v2, v6, [Ljava/lang/Object;

    .line 930
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Protocol not UDP: %d"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 911
    :cond_f8
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v1, 0x2020000

    new-array v2, v6, [Ljava/lang/Object;

    .line 912
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Invalid IP version %d"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 904
    :cond_10a
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v2, 0x2010000

    new-array v3, v5, [Ljava/lang/Object;

    .line 905
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "L3 packet too short, %d < %d"

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_126
    const/16 v18, 0x0

    :goto_128
    const/16 v12, 0xec

    if-gt v1, v5, :cond_433

    .line 962
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v12, :cond_433

    .line 968
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 969
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 970
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 971
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 972
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 973
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v21

    .line 974
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    const v13, 0x8000

    and-int/2addr v12, v13

    if-eqz v12, :cond_156

    move/from16 v25, v6

    goto :goto_158

    :cond_156
    move/from16 v25, v7

    :goto_158
    new-array v12, v10, [B

    .line 979
    :try_start_15a
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 980
    invoke-static {v12}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v13

    move-object/from16 v22, v13

    check-cast v22, Ljava/net/Inet4Address;

    .line 981
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 982
    invoke-static {v12}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v13

    move-object/from16 v23, v13

    check-cast v23, Ljava/net/Inet4Address;

    .line 983
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 984
    invoke-static {v12}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v13

    move-object/from16 v24, v13

    check-cast v24, Ljava/net/Inet4Address;

    .line 985
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 986
    invoke-static {v12}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v13

    move-object/from16 v17, v13

    check-cast v17, Ljava/net/Inet4Address;
    :try_end_186
    .catch Ljava/net/UnknownHostException; {:try_start_15a .. :try_end_186} :catch_421

    const/16 v12, 0x10

    if-le v1, v12, :cond_18d

    .line 999
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->ETHER_BROADCAST:[B

    array-length v1, v1

    .line 1002
    :cond_18d
    new-array v15, v1, [B

    .line 1003
    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1006
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v12, v1

    add-int/2addr v13, v12

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v1, 0x40

    .line 1007
    invoke-static {v0, v1, v7}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    add-int/lit16 v12, v12, 0x80

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1011
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-lt v12, v10, :cond_415

    .line 1015
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    const v13, 0x63825363

    if-ne v12, v13, :cond_3fc

    const/4 v12, -0x1

    move v13, v6

    move/from16 v34, v7

    move/from16 v16, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    .line 1025
    :goto_1da
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-ge v8, v5, :cond_2f4

    if-eqz v13, :cond_2f4

    .line 1026
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-ne v5, v12, :cond_1ef

    move v13, v7

    goto/16 :goto_2ba

    :cond_1ef
    if-nez v5, :cond_1f3

    goto/16 :goto_2ba

    .line 1033
    :cond_1f3
    :try_start_1f3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    const/4 v12, 0x3

    if-eq v5, v6, :cond_2b3

    if-eq v5, v12, :cond_2a6

    if-eq v5, v4, :cond_299

    const/16 v4, 0xc

    if-eq v5, v4, :cond_293

    if-eq v5, v9, :cond_28e

    const/16 v4, 0x1a

    if-eq v5, v4, :cond_284

    const/16 v4, 0x1c

    if-eq v5, v4, :cond_27f

    const/16 v4, 0x2b

    if-eq v5, v4, :cond_27a

    packed-switch v5, :pswitch_data_450

    move v4, v7

    move v9, v4

    :goto_217
    if-ge v9, v8, :cond_2b8

    add-int/lit8 v4, v4, 0x1

    .line 1128
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v9, v9, 0x1

    goto :goto_217

    .line 1110
    :pswitch_221
    new-array v4, v8, [B

    .line 1111
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_297

    .line 1107
    :pswitch_228
    invoke-static {v0, v8, v6}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_297

    .line 1102
    :pswitch_22e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    goto/16 :goto_2b7

    .line 1098
    :pswitch_238
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    goto/16 :goto_2b7

    .line 1094
    :pswitch_242
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v36

    goto :goto_28c

    .line 1090
    :pswitch_24b
    invoke-static {v0, v8, v7}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v27

    goto :goto_297

    .line 1084
    :pswitch_250
    new-array v4, v8, [B

    .line 1085
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v30, v4

    goto :goto_297

    .line 1080
    :pswitch_258
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v14

    goto :goto_2b7

    .line 1076
    :pswitch_25d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v16

    goto :goto_26a

    .line 1121
    :pswitch_262
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/2addr v4, v12

    int-to-byte v4, v4

    move/from16 v34, v4

    :goto_26a
    move v4, v6

    goto :goto_2b8

    .line 1072
    :pswitch_26c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    goto :goto_2b7

    .line 1068
    :pswitch_275
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v33

    goto :goto_2b7

    .line 1117
    :cond_27a
    invoke-static {v0, v8, v6}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v29

    goto :goto_297

    .line 1064
    :cond_27f
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v11

    goto :goto_2b7

    .line 1057
    :cond_284
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v35

    :goto_28c
    const/4 v4, 0x2

    goto :goto_2b8

    .line 1061
    :cond_28e
    invoke-static {v0, v8, v7}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v32

    goto :goto_297

    .line 1053
    :cond_293
    invoke-static {v0, v8, v7}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v31

    :goto_297
    move v4, v8

    goto :goto_2b8

    :cond_299
    move v4, v7

    :goto_29a
    if-ge v4, v8, :cond_2b8

    .line 1048
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x4

    goto :goto_29a

    :cond_2a6
    move v4, v7

    :goto_2a7
    if-ge v4, v8, :cond_2b8

    .line 1043
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x4

    goto :goto_2a7

    .line 1038
    :cond_2b3
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v10

    :goto_2b7
    const/4 v4, 0x4

    :cond_2b8
    :goto_2b8
    if-ne v4, v8, :cond_2c1

    :goto_2ba
    const/4 v4, 0x6

    const/4 v5, 0x2

    const/16 v9, 0xf

    const/4 v12, -0x1

    goto/16 :goto_1da

    :cond_2c1
    const/high16 v0, 0x4030000

    .line 1133
    invoke-static {v0, v5}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v0

    .line 1135
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const-string v2, "Invalid length %d for option %d, expected %d"

    new-array v3, v12, [Ljava/lang/Object;

    .line 1137
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_2e4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1f3 .. :try_end_2e4} :catch_2e4

    :catch_2e4
    const/high16 v0, 0x5010000

    .line 1141
    invoke-static {v0, v5}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v0

    .line 1143
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "BufferUnderflowException"

    invoke-direct {v1, v0, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2f4
    packed-switch v16, :pswitch_data_46c

    .line 1192
    :pswitch_2f7
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v1, 0x4050000

    new-array v2, v6, [Ljava/lang/Object;

    .line 1193
    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Unimplemented DHCP type %d"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1187
    :pswitch_309
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DhcpInformPacket;

    move-object/from16 v19, v0

    move-object/from16 v25, v17

    move-object/from16 v26, v15

    invoke-direct/range {v19 .. v26}, Lcom/samsung/android/server/wifi/wcm/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    move-object v4, v14

    goto/16 :goto_3a6

    :pswitch_317
    if-eqz v14, :cond_32b

    .line 1183
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DhcpReleasePacket;

    move-object v12, v0

    move/from16 v13, v20

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v17

    move-object/from16 v17, v5

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/server/wifi/wcm/DhcpReleasePacket;-><init>(ILjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto/16 :goto_3a6

    .line 1180
    :cond_32b
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "DHCPRELEASE without server identifier"

    const/4 v3, 0x5

    invoke-direct {v0, v3, v2, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_336
    move-object v4, v14

    move-object v5, v15

    .line 1175
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DhcpNakPacket;

    move-object v12, v0

    move/from16 v13, v20

    move/from16 v14, v21

    move-object/from16 v15, v17

    move-object/from16 v16, v5

    move/from16 v17, v25

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/server/wifi/wcm/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    goto/16 :goto_3a6

    :pswitch_34a
    move-object v4, v14

    move-object v5, v15

    .line 1171
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DhcpAckPacket;

    move-object v12, v0

    move/from16 v13, v20

    move/from16 v14, v21

    move/from16 v15, v25

    move-object/from16 v16, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v5

    invoke-direct/range {v12 .. v20}, Lcom/samsung/android/server/wifi/wcm/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto :goto_3a6

    :pswitch_361
    move-object v4, v14

    move-object v5, v15

    .line 1166
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DhcpDeclinePacket;

    move-object/from16 v19, v0

    move-object/from16 v25, v17

    move-object/from16 v26, v5

    invoke-direct/range {v19 .. v26}, Lcom/samsung/android/server/wifi/wcm/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto :goto_3a6

    :pswitch_36f
    move-object v4, v14

    move-object v5, v15

    .line 1162
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DhcpRequestPacket;

    move-object/from16 v19, v0

    move-object/from16 v23, v17

    move-object/from16 v24, v5

    invoke-direct/range {v19 .. v25}, Lcom/samsung/android/server/wifi/wcm/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    goto :goto_3a6

    :pswitch_37d
    move-object v4, v14

    move-object v5, v15

    .line 1158
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DhcpOfferPacket;

    move-object v12, v0

    move/from16 v13, v20

    move/from16 v14, v21

    move/from16 v15, v25

    move-object/from16 v16, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v5

    invoke-direct/range {v12 .. v20}, Lcom/samsung/android/server/wifi/wcm/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto :goto_3a6

    :pswitch_394
    move-object v4, v14

    move-object v5, v15

    .line 1154
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DhcpDiscoverPacket;

    move-object v12, v0

    move/from16 v13, v20

    move/from16 v14, v21

    move-object/from16 v15, v17

    move-object/from16 v16, v5

    move/from16 v17, v25

    invoke-direct/range {v12 .. v18}, Lcom/samsung/android/server/wifi/wcm/DhcpDiscoverPacket;-><init>(ISLjava/net/Inet4Address;[BZLjava/net/Inet4Address;)V

    .line 1196
    :goto_3a6
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    const/4 v5, 0x0

    .line 1197
    iput-object v5, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientId:[B

    .line 1198
    iput-object v2, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mDnsServers:Ljava/util/List;

    move-object/from16 v11, v32

    .line 1199
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1200
    iput-object v3, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mGateways:Ljava/util/List;

    move-object/from16 v11, v31

    .line 1201
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mHostName:Ljava/lang/String;

    move-object/from16 v11, v37

    .line 1202
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v11, v27

    .line 1203
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mMessage:Ljava/lang/String;

    move-object/from16 v11, v35

    .line 1204
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mMtu:Ljava/lang/Short;

    move-object/from16 v11, v33

    .line 1205
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    move-object/from16 v11, v30

    .line 1206
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedParams:[B

    .line 1207
    iput-object v4, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1208
    iput-object v10, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    move-object/from16 v11, v36

    .line 1209
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    move-object/from16 v11, v38

    .line 1210
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mT1:Ljava/lang/Integer;

    move-object/from16 v11, v39

    .line 1211
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mT2:Ljava/lang/Integer;

    move-object/from16 v11, v28

    .line 1212
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mVendorId:Ljava/lang/String;

    move-object/from16 v11, v29

    .line 1213
    iput-object v11, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mVendorInfo:Ljava/lang/String;

    const/4 v2, 0x2

    and-int/lit8 v2, v34, 0x2

    if-nez v2, :cond_3eb

    .line 1215
    iput-object v1, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerHostName:Ljava/lang/String;

    goto :goto_3ef

    :cond_3eb
    const-string v1, ""

    .line 1217
    iput-object v1, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerHostName:Ljava/lang/String;

    :goto_3ef
    return-object v0

    .line 1151
    :pswitch_3f0
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v1, 0x4040000

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "No DHCP message type option"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1017
    :cond_3fc
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v1, 0x4020000

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1019
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Bad magic cookie 0x%08x, should be 0x%08x"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1012
    :cond_415
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v1, 0x4060000

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "not a DHCP message"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 988
    :catch_421
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v1, 0x2030000

    new-array v2, v6, [Ljava/lang/Object;

    .line 989
    invoke-static {v12}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Invalid IPv4 address: %s"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 963
    :cond_433
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 v2, 0x4010000

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 965
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "Invalid type or BOOTP packet too short, %d < %d"

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_data_450
    .packed-switch 0x32
        :pswitch_275
        :pswitch_26c
        :pswitch_262
        :pswitch_25d
        :pswitch_258
        :pswitch_250
        :pswitch_24b
        :pswitch_242
        :pswitch_238
        :pswitch_22e
        :pswitch_228
        :pswitch_221
    .end packed-switch

    :pswitch_data_46c
    .packed-switch -0x1
        :pswitch_3f0
        :pswitch_2f7
        :pswitch_394
        :pswitch_37d
        :pswitch_36f
        :pswitch_361
        :pswitch_34a
        :pswitch_336
        :pswitch_317
        :pswitch_309
    .end packed-switch
.end method

.method public static decodeFullPacket([BII)Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1227
    invoke-static {p0, v0, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1229
    :try_start_b
    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;

    move-result-object p0
    :try_end_f
    .catch Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException; {:try_start_b .. :try_end_f} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 1233
    new-instance p1, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;

    const/high16 p2, 0x5030000

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :catch_1f
    move-exception p0

    .line 1231
    throw p0
.end method

.method private getHostname()Ljava/lang/String;
    .registers 1

    .line 706
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->testOverrideHostname:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "net.hostname"

    .line 707
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVendorId()Ljava/lang/String;
    .registers 2

    .line 701
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    .line 702
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android-dhcp-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static intAbs(S)I
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static isPacketServerToServer(SS)Z
    .registers 3

    const/16 v0, 0x43

    if-ne p0, v0, :cond_8

    if-ne p1, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static isPacketToOrFromClient(SS)Z
    .registers 3

    const/16 v0, 0x44

    if-eq p0, v0, :cond_9

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public static macToString([B)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 750
    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_4f

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_4c

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4f
    return-object v0
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .registers 5

    .line 795
    new-array v0, p1, [B

    .line 796
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    if-nez p2, :cond_14

    move p2, p0

    :goto_9
    if-ge p2, p1, :cond_13

    .line 804
    aget-byte v1, v0, p2

    if-nez v1, :cond_10

    goto :goto_13

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_13
    :goto_13
    move p1, p2

    .line 809
    :cond_14
    new-instance p2, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p2, v0, p0, p1, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p2
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 778
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 781
    :try_start_6
    invoke-static {v0}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method


# virtual methods
.method protected addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/16 v0, 0x5dc

    .line 717
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    .line 718
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->getVendorId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 719
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->getHostname()Ljava/lang/String;

    move-result-object p0

    .line 720
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const/16 v0, 0xc

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    :cond_23
    return-void
.end method

.method protected addCommonServerTlvs(Ljava/nio/ByteBuffer;)V
    .registers 7

    .line 724
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    const/16 v1, 0x33

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 725
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    const/16 v0, 0x3a

    .line 727
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    const/16 v0, 0x3b

    .line 729
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 730
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x36b

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 729
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    :cond_43
    const/4 v0, 0x1

    .line 732
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    const/16 v0, 0x1c

    .line 733
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    const/4 v0, 0x3

    .line 734
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mGateways:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    const/4 v0, 0x6

    .line 735
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mDnsServers:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    const/16 v0, 0xf

    .line 736
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mDomainName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    const/16 v0, 0xc

    .line 737
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mHostName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    const/16 v0, 0x2b

    .line 738
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mVendorInfo:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mMtu:Ljava/lang/Short;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    const/16 v1, 0x44

    if-lt v0, v1, :cond_88

    const/16 v0, 0x1a

    .line 740
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    :cond_88
    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    .line 429
    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    .line 430
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v4

    .line 439
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 440
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-nez v1, :cond_28

    .line 443
    sget-object v5, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->ETHER_BROADCAST:[B

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 444
    iget-object v5, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientMac:[B

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 445
    sget v5, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_28
    const/16 v5, 0x11

    const/16 v6, 0x40

    const/16 v7, 0x10

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gt v1, v8, :cond_81

    .line 452
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    const/16 v11, 0x45

    .line 453
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 454
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 455
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 456
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v12, 0x4000

    .line 458
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 459
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 460
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 461
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    .line 462
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 464
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 465
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 466
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 469
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    move/from16 v13, p5

    .line 470
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move/from16 v13, p4

    .line 471
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 472
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 473
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 474
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    .line 475
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_88

    :cond_81
    move v3, v9

    move v4, v3

    move v10, v4

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    .line 479
    :goto_88
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 480
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 481
    iget-object v15, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientMac:[B

    array-length v15, v15

    int-to-byte v15, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 482
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 483
    iget v15, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mTransId:I

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 484
    iget-short v15, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mSecs:S

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    if-eqz p8, :cond_aa

    const/16 v15, -0x8000

    .line 487
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_ad

    .line 489
    :cond_aa
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 492
    :goto_ad
    iget-object v15, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    invoke-virtual {v15}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 493
    iget-object v15, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v15}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 494
    iget-object v15, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    invoke-virtual {v15}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 495
    iget-object v15, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v15}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 496
    iget-object v15, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientMac:[B

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 497
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    iget-object v5, v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientMac:[B

    array-length v5, v5

    sub-int/2addr v7, v5

    add-int/2addr v15, v7

    add-int/2addr v15, v6

    add-int/lit16 v15, v15, 0x80

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v5, 0x63825363

    .line 501
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 502
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    .line 505
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_f8

    .line 506
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_f8
    if-gt v1, v8, :cond_150

    .line 513
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v4

    int-to-short v1, v1

    .line 514
    invoke-virtual {v2, v13, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v12, 0x2

    .line 521
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->intAbs(S)I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v6, v12, 0x4

    .line 522
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->intAbs(S)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v6, v12, 0x6

    .line 523
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->intAbs(S)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v6, v12, 0x8

    .line 524
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->intAbs(S)I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x11

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    .line 532
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 530
    invoke-direct {v0, v2, v5, v4, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v14, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 534
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v10

    int-to-short v1, v1

    invoke-virtual {v2, v11, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 537
    invoke-direct {v0, v2, v9, v10, v3}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v0

    int-to-short v0, v0

    .line 536
    invoke-virtual {v2, v12, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    :cond_150
    return-void
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getClientId()[B
    .registers 5

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->hasExplicitClientId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 392
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientId:[B

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    goto :goto_1d

    .line 394
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientMac:[B

    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 395
    aput-byte v1, v0, v2

    .line 396
    array-length v3, p0

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    :goto_1d
    return-object p0
.end method

.method public getClientMac()[B
    .registers 1

    .line 365
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientMac:[B

    return-object p0
.end method

.method public getExplicitClientIdOrNull()[B
    .registers 2

    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->hasExplicitClientId()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->getClientId()[B

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getLeaseTimeMillis()J
    .registers 5

    .line 1288
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_33

    .line 1290
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_22

    const-wide/32 v0, 0xea60

    return-wide v0

    .line 1293
    :cond_22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :cond_33
    :goto_33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransactionId()I
    .registers 1

    .line 358
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mTransId:I

    return p0
.end method

.method public hasExplicitClientId()Z
    .registers 1

    .line 374
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientId:[B

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasRequestedParam(B)Z
    .registers 6

    .line 409
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedParams:[B

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 413
    :cond_6
    array-length v1, p0

    move v2, v0

    :goto_8
    if-ge v2, v1, :cond_13

    aget-byte v3, p0, v2

    if-ne v3, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 766
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientMac:[B

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
