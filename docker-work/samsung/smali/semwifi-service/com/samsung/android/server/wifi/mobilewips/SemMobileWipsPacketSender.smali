.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;
.super Ljava/lang/Object;
.source "SemMobileWipsPacketSender.java"


# static fields
.field private static final ARP_LENGTH:I = 0x1c

.field private static final BOOTP_FLAGS:[B

.field private static final CI_YI_SI_AI_ADDR:[B

.field private static final CODE:I = 0x0

.field private static final DATA:[B

.field private static final DHCP_OPTION_START:I = 0x11a

.field private static final DNS_DPORT:I = 0x35

.field private static final DNS_IPV4_MSG_TYPE_LOCATION:I = 0x2a

.field private static final DPORT:I = 0x43

.field private static final ETHERNET_TYPE:I = 0x1

.field private static final ETHER_ARP_TYPE:[B

.field private static final ETHER_HEADER_LENGTH:I = 0xe

.field private static final ETHER_IP_TYPE:[B

.field private static final ETH_IPV4_MAC_SRC_LOCATION:I = 0x6

.field private static final FLAGS_FRAGMENT_OFFSET:[B

.field private static final HOPS:I = 0x0

.field private static final HW_ADDR_LENGTH:I = 0x6

.field private static final HW_TYPE:I = 0x1

.field private static final ICMP_CHECKSUM:I = 0x0

.field private static final ICMP_HEADER_LENGTH:I = 0x40

.field private static final ICMP_REPLY_TTL_LOCATION:I = 0x16

.field private static final IDENTIFICATION:[B

.field private static final IDENTIFIER:[B

.field private static final IDENTIFIER_LOCATION:I = 0x26

.field private static final IPV4_LENGTH:I = 0x4

.field private static final IP_CHECKSUM:I = 0x0

.field private static final IP_HEADER_LENGTH:I = 0x14

.field private static final JAVA_IP_TTL:I = 0x19

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final MAGIC_COOKIE:[B

.field private static final MAX_LENGTH:I = 0x5dc

.field private static final MSG_TYPE:I = 0x1

.field private static final MSG_TYPE_LOCATION:I = 0x2a

.field private static final MSG_TYPE_OFFER:I = 0x2

.field private static final MSG_TYPE_REQUEST:I = 0x1

.field private static final OPTION_DISCOVER:I = 0x35

.field private static final OPTION_DISCOVER_DHCP:I = 0x1

.field private static final OPTION_DISCOVER_LENGTH:I = 0x1

.field private static final OPTION_END:I = 0xff

.field private static final OPTION_ROUTER:I = 0x3

.field private static final PROTOCOL:I = 0x1

.field private static final SECS:I = 0x0

.field private static final SEQUENCE_LOCATION:I = 0x28

.field private static final SEQUENCE_NUMBER:[B

.field private static final SPORT:I = 0x44

.field private static final TAG:Ljava/lang/String; = "MobileWips::FrameworkPktSender"

.field private static final TCP_ACK_NUMBER:[B

.field private static final TCP_CHECKSUM:I = 0x0

.field private static final TCP_DPORT:I = 0x50

.field private static final TCP_DPORT_DNS:I = 0x35

.field private static final TCP_HEADER_LENGTH:I = 0x14

.field private static final TCP_HEADER_LENGTH_FLAGS:[B

.field private static final TCP_PROTOCOL:I = 0x6

.field private static final TCP_SEQ_NUMBER:[B

.field private static final TCP_SPORT:I = 0xfde8

.field private static final TCP_TOTAL_LENGTH:I = 0x28

.field private static final TCP_WINDOW_SIZE:I = 0xfa0

.field private static final TIMESTAMP:[B

.field private static final TOS:I = 0x0

.field private static final TOTAL_LENGTH:I = 0x54

.field private static final TRANSACTION_ID:[B

.field private static final TRANSACTION_ID_LOCATION:I = 0x2e

.field private static final TTL:I = 0x40

.field private static final TYPE:I = 0x8

.field private static final UDP_CHECKSUM:I = 0x0

.field private static final UDP_IPV4_DST_PORT_LOCATION:I = 0x24

.field private static final UDP_IPV4_SRC_PORT_LOCATION:I = 0x22

.field private static final UDP_IP_DST_ADDR:[B

.field private static final UDP_IP_SRC_ADDR:[B

.field private static final UDP_LENGTH:I = 0xfc

.field private static final UDP_PROTOCOL:I = 0x11

.field private static final UDP_TOTAL_LENGTH:I = 0x110

.field private static final VERSION_HEADER_LENGTH:I = 0x45


# instance fields
.field private L2_BROADCAST:[B

.field private SRC_ADDR:[B

.field private mInterfaceName:Ljava/lang/String;

.field private mSocket:Ljava/io/FileDescriptor;

.field private mSocketArpSniff:Ljava/io/FileDescriptor;

.field private mSocketArpSniffRecv:Ljava/io/FileDescriptor;

.field private mSocketDhcp:Ljava/io/FileDescriptor;

.field private mSocketIcmp:Ljava/io/FileDescriptor;

.field private mSocketRecv:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 64
    fill-array-data v1, :array_7e

    sput-object v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_ARP_TYPE:[B

    new-array v1, v0, [B

    .line 71
    fill-array-data v1, :array_84

    sput-object v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_IP_TYPE:[B

    new-array v1, v0, [B

    .line 78
    fill-array-data v1, :array_8a

    sput-object v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->IDENTIFICATION:[B

    new-array v1, v0, [B

    .line 79
    fill-array-data v1, :array_90

    sput-object v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->FLAGS_FRAGMENT_OFFSET:[B

    new-array v1, v0, [B

    .line 86
    fill-array-data v1, :array_96

    sput-object v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->IDENTIFIER:[B

    new-array v1, v0, [B

    .line 87
    fill-array-data v1, :array_9c

    sput-object v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SEQUENCE_NUMBER:[B

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 88
    fill-array-data v1, :array_a2

    sput-object v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TIMESTAMP:[B

    const/16 v1, 0x30

    new-array v1, v1, [B

    .line 89
    fill-array-data v1, :array_aa

    sput-object v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->DATA:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 106
    fill-array-data v2, :array_c6

    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->UDP_IP_SRC_ADDR:[B

    new-array v2, v1, [B

    .line 107
    fill-array-data v2, :array_cc

    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->UDP_IP_DST_ADDR:[B

    new-array v2, v1, [B

    .line 116
    fill-array-data v2, :array_d2

    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TRANSACTION_ID:[B

    new-array v2, v0, [B

    .line 118
    fill-array-data v2, :array_d8

    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->BOOTP_FLAGS:[B

    new-array v2, v1, [B

    .line 119
    fill-array-data v2, :array_de

    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->CI_YI_SI_AI_ADDR:[B

    new-array v2, v1, [B

    .line 120
    fill-array-data v2, :array_e4

    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->MAGIC_COOKIE:[B

    new-array v2, v1, [B

    .line 142
    fill-array-data v2, :array_ea

    sput-object v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_SEQ_NUMBER:[B

    new-array v1, v1, [B

    .line 143
    fill-array-data v1, :array_f0

    sput-object v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_ACK_NUMBER:[B

    new-array v0, v0, [B

    .line 144
    fill-array-data v0, :array_f6

    sput-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_HEADER_LENGTH_FLAGS:[B

    return-void

    :array_7e
    .array-data 1
        0x8t
        0x6t
    .end array-data

    nop

    :array_84
    .array-data 1
        0x8t
        0x0t
    .end array-data

    nop

    :array_8a
    .array-data 1
        -0x4dt
        -0x28t
    .end array-data

    nop

    :array_90
    .array-data 1
        0x40t
        0x0t
    .end array-data

    nop

    :array_96
    .array-data 1
        0x58t
        0x6t
    .end array-data

    nop

    :array_9c
    .array-data 1
        0x0t
        0x2t
    .end array-data

    nop

    :array_a2
    .array-data 1
        -0x42t
        -0x1dt
        0x77t
        0x5at
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_aa
    .array-data 1
        0x69t
        0x2et
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data

    :array_c6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_cc
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_d2
    .array-data 1
        -0x7at
        0x16t
        0x6t
        0x2t
    .end array-data

    :array_d8
    .array-data 1
        -0x80t
        0x0t
    .end array-data

    nop

    :array_de
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_e4
    .array-data 1
        0x63t
        -0x7et
        0x53t
        0x63t
    .end array-data

    :array_ea
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x64t
    .end array-data

    :array_f0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x64t
    .end array-data

    :array_f6
    .array-data 1
        0x50t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 154
    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 157
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    const-string v0, "wlan0"

    .line 160
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mInterfaceName:Ljava/lang/String;

    return-void

    nop

    :array_16
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private calculationChecksum([B)J
    .registers 15

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 1289
    :cond_5
    array-length p0, p1

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_8
    const-wide/16 v5, 0x1

    const-wide/32 v7, -0x10000

    const v9, 0xff00

    const/4 v10, 0x1

    const-wide/32 v11, 0xffff

    if-le p0, v10, :cond_30

    .line 1295
    aget-byte v10, p1, v2

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v3, v9

    and-long/2addr v7, v3

    cmp-long v7, v7, v0

    if-lez v7, :cond_2b

    and-long/2addr v3, v11

    add-long/2addr v3, v5

    :cond_2b
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 p0, p0, -0x2

    goto :goto_8

    :cond_30
    if-lez p0, :cond_43

    .line 1308
    aget-byte p0, p1, v2

    shl-int/lit8 p0, p0, 0x8

    and-int/2addr p0, v9

    int-to-long p0, p0

    add-long/2addr v3, p0

    and-long p0, v3, v7

    cmp-long p0, p0, v0

    if-lez p0, :cond_43

    and-long p0, v3, v11

    add-long v3, p0, v5

    :cond_43
    not-long p0, v3

    and-long/2addr p0, v11

    return-wide p0
.end method

.method private createPacketDns(I[B[B[B[BZ)Ljava/nio/ByteBuffer;
    .registers 20

    move-object v6, p0

    move-object/from16 v7, p4

    const/16 v0, 0x5dc

    .line 862
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/16 v0, 0xe

    .line 863
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    const/16 v0, 0x14

    .line 864
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 866
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 867
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 869
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 870
    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 872
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 873
    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 876
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_IP_TYPE:[B

    move-object/from16 v4, p5

    invoke-direct {p0, v9, v4, v2, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V

    if-eqz p6, :cond_81

    const/16 v11, 0x8

    .line 879
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 880
    array-length v0, v7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 882
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 883
    invoke-virtual {v12, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 885
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 886
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 889
    array-length v0, v7

    add-int/lit8 v2, v0, 0x1c

    const/16 v3, 0x11

    move-object v0, p0

    move-object v1, v10

    move-object v4, p2

    move-object/from16 v5, p3

    .line 890
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeIP(Ljava/nio/ByteBuffer;II[B[B)V

    .line 892
    array-length v0, v7

    add-int/lit8 v4, v0, 0x8

    const/16 v3, 0x35

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v12

    move v2, p1

    .line 893
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeUDP(Ljava/nio/ByteBuffer;IIII)V

    .line 895
    invoke-static/range {p4 .. p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 898
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 899
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v8

    .line 903
    :cond_81
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/16 v0, 0x20

    .line 904
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 906
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 907
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 909
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 910
    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v2, 0x28

    const/4 v3, 0x6

    move-object v0, p0

    move-object v1, v10

    move-object v4, p2

    move-object/from16 v5, p3

    .line 913
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeIP(Ljava/nio/ByteBuffer;II[B[B)V

    const/4 v4, 0x6

    const/16 v5, 0x14

    move-object v1, v11

    move-object v2, p2

    move-object/from16 v3, p3

    .line 916
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makePsuedoHeader(Ljava/nio/ByteBuffer;[B[BII)V

    const/16 v0, 0x35

    .line 917
    invoke-direct {p0, v7, v11, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeTCP(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 920
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 921
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v8
.end method

.method private declared-synchronized getInterfaceName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mInterfaceName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getMacAddress(Ljava/lang/String;)[B
    .registers 8

    const/4 p0, 0x0

    .line 1324
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_81

    const-string v1, "MobileWips::FrameworkPktSender"

    if-nez v0, :cond_f

    :try_start_9
    const-string p1, "NetworkInterface.getNetworkInterfaces() is null"

    .line 1325
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1328
    :cond_f
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    if-eqz p1, :cond_34

    .line 1332
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_1b

    .line 1337
    :cond_34
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p1

    const/4 v0, 0x6

    .line 1340
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez p1, :cond_45

    const-string p1, "Get hardware interface failed"

    .line 1343
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1347
    :cond_45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1348
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    move v2, v1

    .line 1350
    :goto_4f
    array-length v3, p1

    if-ge v2, v3, :cond_7a

    const-string v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1351
    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1352
    invoke-static {v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->intToByteArray(I)[B

    move-result-object v3

    const/4 v4, 0x3

    .line 1353
    aget-byte v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1356
    :cond_7a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1357
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_81} :catch_81

    :catch_81
    :cond_81
    return-object p0
.end method

.method public static longToBytes(J)[B
    .registers 3

    const/16 v0, 0x8

    .line 175
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 177
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private macStringToByteArray(Ljava/lang/String;)[B
    .registers 6

    const/4 p0, 0x6

    new-array v0, p0, [B

    if-eqz p1, :cond_1c

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p0, :cond_1c

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v3, v2, 0x2

    .line 359
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return-object v0
.end method

.method private makeARP(Ljava/nio/ByteBuffer;[B[B[B)V
    .registers 7

    if-eqz p1, :cond_2f

    if-eqz p2, :cond_2f

    if-eqz p3, :cond_2f

    if-nez p4, :cond_9

    goto :goto_2f

    :cond_9
    const/4 p0, 0x1

    .line 194
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 195
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x6

    .line 196
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    .line 197
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array p0, v0, [B

    .line 201
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 202
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 203
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_2f
    :goto_2f
    return-void
.end method

.method private makeDHCP(Ljava/nio/ByteBuffer;[B)V
    .registers 5

    if-eqz p1, :cond_4e

    if-nez p2, :cond_5

    goto :goto_4e

    :cond_5
    const/4 p0, 0x1

    .line 332
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 333
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x6

    .line 334
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 336
    sget-object v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TRANSACTION_ID:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 337
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 338
    sget-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->BOOTP_FLAGS:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 339
    sget-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->CI_YI_SI_AI_ADDR:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 340
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 341
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 342
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 343
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 p2, 0xec

    .line 345
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    sget-object p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->MAGIC_COOKIE:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 p2, 0x35

    .line 348
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 349
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 350
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p0, -0x1

    .line 351
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 352
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_4e
    :goto_4e
    return-void
.end method

.method private makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V
    .registers 5

    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    if-nez p3, :cond_7

    goto :goto_13

    .line 184
    :cond_7
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 186
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_13
    :goto_13
    return-void
.end method

.method private makeICMP(Ljava/nio/ByteBuffer;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    .line 302
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 305
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    .line 307
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 308
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 309
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 310
    sget-object v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->IDENTIFIER:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 311
    sget-object v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SEQUENCE_NUMBER:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 312
    sget-object v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TIMESTAMP:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 313
    sget-object v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->DATA:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 314
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 317
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 318
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->calculationChecksum([B)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->longToBytes(J)[B

    move-result-object p0

    const/4 v3, 0x6

    .line 320
    aget-byte v3, p0, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v3, 0x7

    .line 321
    aget-byte p0, p0, v3

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 322
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    .line 325
    invoke-virtual {p1, v0, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private makeIP(Ljava/nio/ByteBuffer;II[B[B)V
    .registers 8

    if-eqz p1, :cond_61

    if-eqz p4, :cond_61

    if-nez p5, :cond_7

    goto :goto_61

    :cond_7
    const/4 v0, 0x2

    .line 210
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 213
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0x45

    .line 215
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short p2, p2

    .line 217
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 218
    sget-object p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->IDENTIFICATION:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 219
    sget-object p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->FLAGS_FRAGMENT_OFFSET:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 p2, 0x40

    .line 220
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p2, p3

    .line 221
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 224
    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 228
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 229
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->calculationChecksum([B)J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->longToBytes(J)[B

    move-result-object p0

    const/4 p2, 0x6

    .line 231
    aget-byte p2, p0, p2

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x7

    .line 232
    aget-byte p0, p0, p2

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 233
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    const/16 p2, 0xa

    .line 236
    invoke-virtual {p1, p2, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    :cond_61
    :goto_61
    return-void
.end method

.method private makePsuedoHeader(Ljava/nio/ByteBuffer;[B[BII)V
    .registers 6

    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    if-nez p3, :cond_7

    goto :goto_19

    .line 291
    :cond_7
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 292
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 293
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p0, p4

    .line 294
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short p0, p5

    .line 295
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_19
    :goto_19
    return-void
.end method

.method private makeTCP(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .registers 7

    if-eqz p1, :cond_63

    if-nez p2, :cond_5

    goto :goto_63

    :cond_5
    const/4 v0, 0x2

    .line 256
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 259
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x218

    .line 261
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short p3, p3

    .line 262
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 263
    sget-object p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_SEQ_NUMBER:[B

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 264
    sget-object p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_ACK_NUMBER:[B

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 265
    sget-object p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TCP_HEADER_LENGTH_FLAGS:[B

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 p3, 0xfa0

    .line 266
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    .line 267
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 269
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 272
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 273
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 275
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 276
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->calculationChecksum([B)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->longToBytes(J)[B

    move-result-object p0

    const/4 p2, 0x6

    .line 278
    aget-byte p2, p0, p2

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x7

    .line 279
    aget-byte p0, p0, p2

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 280
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    const/16 p2, 0x10

    .line 283
    invoke-virtual {p1, p2, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 284
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_63
    :goto_63
    return-void
.end method

.method private makeUDP(Ljava/nio/ByteBuffer;IIII)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    int-to-short p0, p2

    .line 244
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short p0, p3

    .line 245
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short p0, p4

    .line 246
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short p0, p5

    .line 248
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public pingTcp([B[BIII)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1247
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    .line 1248
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p2

    const/16 p5, -0xbe

    .line 1250
    invoke-static {p5}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result p5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1254
    :try_start_10
    sget v2, Landroid/system/OsConstants;->AF_INET:I

    sget v3, Landroid/system/OsConstants;->SOCK_STREAM:I

    invoke-static {v2, v3, v0}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    if-lez p4, :cond_29

    .line 1256
    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v3, Landroid/system/OsConstants;->IP_TTL:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {v1, v2, v3, p4}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    :cond_29
    if-eqz p1, :cond_2e

    .line 1259
    invoke-static {v1, p1, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 1261
    :cond_2e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/net/util/SocketUtils;->bindSocketToInterface(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1263
    invoke-static {v1, p2, p3}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_42
    .catchall {:try_start_10 .. :try_end_38} :catchall_40

    const/4 p0, 0x1

    .line 1280
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 1281
    invoke-static {p5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return p0

    :catchall_40
    move-exception p0

    goto :goto_64

    :catch_42
    move-exception p0

    .line 1268
    :try_start_43
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "MobileWips::FrameworkPktSender"

    .line 1269
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pingTcp "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_40

    .line 1280
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 1281
    invoke-static {p5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return v0

    .line 1280
    :goto_64
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 1281
    invoke-static {p5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1282
    throw p0
.end method

.method public sendArp(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "sendArp "

    const-string v3, "MobileWips::FrameworkPktSender"

    .line 368
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 371
    :try_start_e
    sget v6, Landroid/system/OsConstants;->AF_PACKET:I

    sget v7, Landroid/system/OsConstants;->SOCK_RAW:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object v6

    .line 373
    iget-object v7, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    sget v9, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v9, v9

    iget v10, v6, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v9, v10, v5}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 376
    sget v7, Landroid/system/OsConstants;->AF_PACKET:I

    sget v9, Landroid/system/OsConstants;->SOCK_RAW:I

    invoke-static {v7, v9, v8}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v7

    iput-object v7, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;

    .line 377
    sget v9, Landroid/system/OsConstants;->ETH_P_ARP:I

    int-to-short v9, v9

    iget v10, v6, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v9, v10, v5}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move/from16 v7, p2

    int-to-long v11, v7

    add-long/2addr v9, v11

    move-object/from16 v7, p5

    .line 383
    invoke-direct {v1, v7}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    const/16 v11, 0x5dc

    .line 387
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    const/16 v13, 0xe

    .line 388
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    const/16 v15, 0x1c

    .line 389
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 391
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 392
    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 394
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 395
    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 397
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 398
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 401
    iget-object v13, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    iget-object v15, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    sget-object v11, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_ARP_TYPE:[B

    invoke-direct {v1, v14, v13, v15, v11}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V

    move-object/from16 v11, p4

    .line 404
    invoke-direct {v1, v5, v7, v11, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeARP(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 407
    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 408
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 411
    iget-object v5, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    const/16 v20, 0x0

    iget v6, v6, Lcom/android/net/module/util/InterfaceParams;->index:I

    iget-object v7, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    invoke-static {v8, v6, v7}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v21

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v21}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    const/16 v5, 0x5dc

    new-array v6, v5, [B

    const/4 v5, 0x6

    new-array v7, v5, [B

    .line 416
    :goto_bd
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-gez v11, :cond_18f

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v11, v9, v11

    .line 419
    iget-object v13, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;

    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {v11, v12}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v11

    invoke-static {v13, v14, v15, v11}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 421
    iget-object v11, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;

    const/16 v12, 0x5dc

    invoke-static {v11, v6, v8, v12}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v11

    const/16 v13, 0x1c

    if-lt v11, v13, :cond_18c

    const/16 v11, 0xe

    aget-byte v13, v6, v11

    if-nez v13, :cond_18a

    const/16 v13, 0xf

    aget-byte v13, v6, v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_18a

    const/16 v13, 0x10

    aget-byte v13, v6, v13

    const/16 v15, 0x8

    if-ne v13, v15, :cond_18a

    const/16 v13, 0x11

    aget-byte v13, v6, v13

    if-nez v13, :cond_18a

    const/16 v13, 0x12

    aget-byte v13, v6, v13

    if-ne v13, v5, :cond_18a

    const/16 v13, 0x13

    aget-byte v13, v6, v13

    const/4 v15, 0x4

    if-ne v13, v15, :cond_18a

    const/16 v13, 0x14

    aget-byte v13, v6, v13

    if-nez v13, :cond_18a

    const/16 v13, 0x1c

    aget-byte v15, v6, v13

    .line 423
    aget-byte v11, v0, v8

    if-ne v15, v11, :cond_18c

    const/16 v11, 0x1d

    aget-byte v11, v6, v11

    aget-byte v15, v0, v14

    if-ne v11, v15, :cond_18c

    const/16 v11, 0x1e

    aget-byte v11, v6, v11

    const/4 v15, 0x2

    aget-byte v12, v0, v15

    if-ne v11, v12, :cond_18c

    const/16 v11, 0x1f

    aget-byte v11, v6, v11

    const/4 v12, 0x3

    aget-byte v12, v0, v12

    if-ne v11, v12, :cond_18c

    const/16 v11, 0x16

    .line 432
    invoke-static {v6, v11, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    invoke-static {v7}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->macToString([B)Ljava/lang/String;

    move-result-object v11

    move v12, v8

    .line 437
    :goto_13e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v12, v5, :cond_155

    .line 438
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_152

    move v5, v8

    goto :goto_156

    :cond_152
    add-int/lit8 v12, v12, 0x1

    goto :goto_13e

    :cond_155
    move v5, v14

    :goto_156
    if-eqz v5, :cond_18c

    const/16 v5, 0x15

    aget-byte v5, v6, v5

    if-ne v5, v14, :cond_173

    .line 446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "REQ"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18c

    :cond_173
    if-ne v5, v15, :cond_18c

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "REP"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_189
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_189} :catch_1cb
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_189} :catch_1a5
    .catchall {:try_start_e .. :try_end_189} :catchall_1a3

    goto :goto_18c

    :cond_18a
    const/16 v13, 0x1c

    :cond_18c
    :goto_18c
    const/4 v5, 0x6

    goto/16 :goto_bd

    .line 476
    :cond_18f
    :try_start_18f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_196

    .line 477
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_196
    const/4 v2, 0x0

    .line 479
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 480
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1a0

    .line 481
    :goto_19d
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 483
    :cond_1a0
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_1a2} :catch_1f1

    goto :goto_1f1

    :catchall_1a3
    move-exception v0

    goto :goto_1f2

    :catch_1a5
    move-exception v0

    .line 463
    :try_start_1a6
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bc
    .catchall {:try_start_1a6 .. :try_end_1bc} :catchall_1a3

    .line 476
    :try_start_1bc
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1c3

    .line 477
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_1c3
    const/4 v2, 0x0

    .line 479
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 480
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1c8} :catch_1f1

    if-eqz v0, :cond_1a0

    goto :goto_19d

    :catch_1cb
    move-exception v0

    .line 461
    :try_start_1cc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e2
    .catchall {:try_start_1cc .. :try_end_1e2} :catchall_1a3

    .line 476
    :try_start_1e2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1e9

    .line 477
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_1e9
    const/4 v2, 0x0

    .line 479
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 480
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_1ee} :catch_1f1

    if-eqz v0, :cond_1a0

    goto :goto_19d

    :catch_1f1
    :goto_1f1
    return-object v4

    .line 476
    :goto_1f2
    :try_start_1f2
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_1f9

    .line 477
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_1f9
    const/4 v2, 0x0

    .line 479
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocket:Ljava/io/FileDescriptor;

    .line 480
    iget-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_203

    .line 481
    invoke-static {v3}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 483
    :cond_203
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketRecv:Ljava/io/FileDescriptor;
    :try_end_205
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_205} :catch_205

    .line 486
    :catch_205
    throw v0
.end method

.method public declared-synchronized sendArpToSniffing(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    monitor-enter p0

    .line 492
    :try_start_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1f4

    const/4 v3, 0x0

    .line 496
    :try_start_b
    sget v4, Landroid/system/OsConstants;->AF_PACKET:I

    sget v5, Landroid/system/OsConstants;->SOCK_RAW:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object v4

    .line 498
    iget-object v5, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v7, v7

    iget v8, v4, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v7, v8, v3}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 501
    sget v5, Landroid/system/OsConstants;->AF_PACKET:I

    sget v7, Landroid/system/OsConstants;->SOCK_RAW:I

    invoke-static {v5, v7, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    .line 502
    sget v7, Landroid/system/OsConstants;->ETH_P_ARP:I

    int-to-short v7, v7

    iget v8, v4, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v7, v8, v3}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 504
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move/from16 v5, p2

    int-to-long v9, v5

    add-long/2addr v7, v9

    move-object/from16 v5, p5

    .line 508
    invoke-direct {v1, v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v9, 0x5dc

    .line 512
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/16 v11, 0xe

    .line 513
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    const/16 v13, 0x1c

    .line 514
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 516
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 517
    sget-object v15, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 519
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 520
    invoke-virtual {v12, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 522
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 523
    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 526
    iget-object v15, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    iget-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    sget-object v11, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_ARP_TYPE:[B

    invoke-direct {v1, v12, v15, v3, v11}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V

    move-object/from16 v3, p4

    .line 529
    invoke-direct {v1, v14, v5, v3, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeARP(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 532
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 533
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 536
    iget-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    const/16 v20, 0x0

    iget v4, v4, Lcom/android/net/module/util/InterfaceParams;->index:I

    iget-object v5, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    invoke-static {v6, v4, v5}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v21

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v21}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    new-array v3, v9, [B

    const/4 v4, 0x6

    new-array v5, v4, [B

    .line 541
    :cond_b8
    :goto_b8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    cmp-long v10, v10, v7

    if-gez v10, :cond_16a

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v7, v10

    .line 544
    iget-object v12, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v10

    invoke-static {v12, v14, v15, v10}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 546
    iget-object v10, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    invoke-static {v10, v3, v6, v9}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v10

    if-lt v10, v13, :cond_166

    const/16 v10, 0xe

    aget-byte v11, v3, v10

    if-nez v11, :cond_b8

    const/16 v11, 0xf

    aget-byte v11, v3, v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b8

    const/16 v11, 0x10

    aget-byte v11, v3, v11

    const/16 v14, 0x8

    if-ne v11, v14, :cond_b8

    const/16 v11, 0x11

    aget-byte v11, v3, v11

    if-nez v11, :cond_b8

    const/16 v11, 0x12

    aget-byte v11, v3, v11

    if-ne v11, v4, :cond_b8

    const/16 v11, 0x13

    aget-byte v11, v3, v11

    const/4 v14, 0x4

    if-ne v11, v14, :cond_b8

    const/16 v11, 0x14

    aget-byte v11, v3, v11

    if-nez v11, :cond_b8

    aget-byte v11, v3, v13

    .line 548
    aget-byte v14, v0, v6

    if-ne v11, v14, :cond_b8

    const/16 v11, 0x1d

    aget-byte v11, v3, v11

    aget-byte v14, v0, v12

    if-ne v11, v14, :cond_b8

    const/16 v11, 0x1e

    aget-byte v11, v3, v11

    const/4 v14, 0x2

    aget-byte v15, v0, v14

    if-ne v11, v15, :cond_b8

    const/16 v11, 0x1f

    aget-byte v11, v3, v11

    const/4 v15, 0x3

    aget-byte v15, v0, v15

    if-ne v11, v15, :cond_b8

    const/16 v11, 0x16

    .line 557
    invoke-static {v3, v11, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    invoke-static {v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->macToString([B)Ljava/lang/String;

    move-result-object v11

    const/16 v15, 0x15

    aget-byte v15, v3, v15

    if-ne v15, v12, :cond_14e

    .line 561
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "REQ"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b8

    :cond_14e
    if-ne v15, v14, :cond_b8

    .line 563
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "REP"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_164
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_164} :catch_1af
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_164} :catch_181
    .catchall {:try_start_b .. :try_end_164} :catchall_17f

    goto/16 :goto_b8

    :cond_166
    const/16 v10, 0xe

    goto/16 :goto_b8

    .line 590
    :cond_16a
    :try_start_16a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_171

    .line 591
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_171
    const/4 v3, 0x0

    .line 593
    iput-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 594
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_17b

    .line 595
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_17b
    const/4 v3, 0x0

    .line 597
    :goto_17c
    iput-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_17e} :catch_1dd
    .catchall {:try_start_16a .. :try_end_17e} :catchall_1f4

    goto :goto_1dd

    :catchall_17f
    move-exception v0

    goto :goto_1df

    :catch_181
    move-exception v0

    .line 577
    :try_start_182
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v3, "MobileWips::FrameworkPktSender"

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendArpS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19c
    .catchall {:try_start_182 .. :try_end_19c} :catchall_17f

    .line 590
    :try_start_19c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1a3

    .line 591
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_1a3
    const/4 v3, 0x0

    .line 593
    iput-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 594
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1ad

    .line 595
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_1ad} :catch_1dd
    .catchall {:try_start_19c .. :try_end_1ad} :catchall_1f4

    :cond_1ad
    const/4 v3, 0x0

    goto :goto_17c

    :catch_1af
    move-exception v0

    :try_start_1b0
    const-string v3, "MobileWips::FrameworkPktSender"

    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendArpS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ca
    .catchall {:try_start_1b0 .. :try_end_1ca} :catchall_17f

    .line 590
    :try_start_1ca
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1d1

    .line 591
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_1d1
    const/4 v3, 0x0

    .line 593
    iput-object v3, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 594
    iget-object v0, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1db

    .line 595
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1db
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1db} :catch_1dd
    .catchall {:try_start_1ca .. :try_end_1db} :catchall_1f4

    :cond_1db
    const/4 v3, 0x0

    goto :goto_17c

    .line 601
    :catch_1dd
    :goto_1dd
    monitor-exit p0

    return-object v2

    .line 590
    :goto_1df
    :try_start_1df
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_1e6

    .line 591
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_1e6
    const/4 v2, 0x0

    .line 593
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniff:Ljava/io/FileDescriptor;

    .line 594
    iget-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_1f0

    .line 595
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_1f0
    const/4 v2, 0x0

    .line 597
    iput-object v2, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketArpSniffRecv:Ljava/io/FileDescriptor;
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1f3} :catch_1f3
    .catchall {:try_start_1df .. :try_end_1f3} :catchall_1f4

    .line 600
    :catch_1f3
    :try_start_1f3
    throw v0
    :try_end_1f4
    .catchall {:try_start_1f3 .. :try_end_1f4} :catchall_1f4

    :catchall_1f4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendDNSToTCP(Landroid/net/LinkProperties;[J[B[B[BLjava/lang/String;)[B
    .registers 28

    move-object/from16 v1, p2

    const-string v2, "sendDns "

    const-string v3, "MobileWips::FrameworkPktSender"

    move-object/from16 v0, p0

    move-object/from16 v4, p6

    .line 1041
    invoke-direct {v0, v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    const/4 v4, 0x3

    new-array v8, v4, [B

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v9, v11

    .line 1042
    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->createPacketDns(I[B[B[B[BZ)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1044
    :try_start_20
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    sget v7, Landroid/system/OsConstants;->SOCK_RAW:I

    invoke-static {v0, v7, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v7
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_28} :catch_12a
    .catchall {:try_start_20 .. :try_end_28} :catchall_128

    .line 1045
    :try_start_28
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object v8

    .line 1046
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v0, v0

    iget v9, v8, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v0, v9, v5}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 1048
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 1053
    array-length v5, v1

    move v9, v6

    :goto_41
    if-ge v9, v5, :cond_11c

    aget-wide v12, v1, v9

    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    add-long v18, v14, v12

    .line 1056
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    const/16 v16, 0x0

    iget v0, v8, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v6, v0, v11}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v17

    move-object v12, v7

    invoke-static/range {v12 .. v17}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    const/16 v0, 0x5dc

    new-array v10, v0, [B

    const/4 v15, 0x2

    new-array v14, v15, [B

    new-array v13, v15, [B

    .line 1062
    new-instance v12, Ljava/net/InetSocketAddress;

    invoke-direct {v12, v6}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 1063
    :goto_6e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    cmp-long v0, v16, v18

    if-gez v0, :cond_115

    .line 1065
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_7a} :catch_125
    .catchall {:try_start_28 .. :try_end_7a} :catchall_122

    sub-long v16, v18, v16

    .line 1067
    :try_start_7c
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static/range {v16 .. v17}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v6

    invoke-static {v7, v0, v15, v6}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_87} :catch_f2
    .catchall {:try_start_7c .. :try_end_87} :catchall_122

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v15, 0x5dc

    move-object v6, v12

    move-object v12, v7

    move-object/from16 v20, v13

    move-object v13, v10

    move-object v1, v14

    move v14, v0

    move-object/from16 v17, v6

    .line 1068
    :try_start_95
    invoke-static/range {v12 .. v17}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v0
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_99} :catch_ee
    .catchall {:try_start_95 .. :try_end_99} :catchall_122

    if-lez v0, :cond_eb

    const/16 v0, 0x22

    move-object/from16 v12, v20

    const/4 v13, 0x2

    const/4 v14, 0x0

    .line 1072
    :try_start_a1
    invoke-static {v10, v0, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x24

    .line 1073
    invoke-static {v10, v0, v1, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1075
    invoke-static {v12}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    move-result v0

    const/16 v14, 0x35

    if-ne v0, v14, :cond_10c

    .line 1076
    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    move-result v0

    const v14, 0xfde8

    if-ne v0, v14, :cond_10c

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 1080
    :goto_bc
    array-length v13, v11

    if-ge v14, v13, :cond_cb

    add-int/lit8 v13, v14, 0x6

    .line 1081
    aget-byte v13, v10, v13

    aget-byte v0, v11, v14

    if-eq v13, v0, :cond_c8

    const/4 v15, 0x0

    :cond_c8
    add-int/lit8 v14, v14, 0x1

    goto :goto_bc

    :cond_cb
    if-eqz v15, :cond_10c

    const/16 v0, 0x2f

    aget-byte v0, v10, v0

    const/16 v13, 0x12

    if-ne v0, v13, :cond_10c

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v13, 0x0

    .line 1095
    aget-byte v14, p5, v13

    aput-byte v14, v0, v13

    const/4 v13, 0x1

    .line 1096
    aget-byte v14, p5, v13

    aput-byte v14, v0, v13
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_e3} :catch_e9
    .catchall {:try_start_a1 .. :try_end_e3} :catchall_122

    if-eqz v7, :cond_e8

    .line 1124
    :try_start_e5
    invoke-static {v7}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_e8

    :catch_e8
    :cond_e8
    return-object v0

    :catch_e9
    move-exception v0

    goto :goto_f6

    :cond_eb
    move-object/from16 v12, v20

    goto :goto_10c

    :catch_ee
    move-exception v0

    move-object/from16 v12, v20

    goto :goto_f6

    :catch_f2
    move-exception v0

    move-object v6, v12

    move-object v12, v13

    move-object v1, v14

    .line 1103
    :goto_f6
    :try_start_f6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_10c} :catch_125
    .catchall {:try_start_f6 .. :try_end_10c} :catchall_122

    :cond_10c
    :goto_10c
    move-object v14, v1

    move-object v13, v12

    const/4 v15, 0x2

    move-object/from16 v1, p2

    move-object v12, v6

    const/4 v6, 0x0

    goto/16 :goto_6e

    :cond_115
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    const/4 v6, 0x0

    goto/16 :goto_41

    :cond_11c
    if-eqz v7, :cond_150

    .line 1124
    :try_start_11e
    invoke-static {v7}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_150

    goto :goto_150

    :catchall_122
    move-exception v0

    move-object v5, v7

    goto :goto_154

    :catch_125
    move-exception v0

    move-object v5, v7

    goto :goto_12b

    :catchall_128
    move-exception v0

    goto :goto_154

    :catch_12a
    move-exception v0

    .line 1116
    :goto_12b
    :try_start_12b
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    instance-of v1, v0, Landroid/system/ErrnoException;

    if-eqz v1, :cond_14b

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->EAGAIN:I
    :try_end_14b
    .catchall {:try_start_12b .. :try_end_14b} :catchall_128

    :cond_14b
    if-eqz v5, :cond_150

    .line 1124
    :try_start_14d
    invoke-static {v5}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_150} :catch_150

    :catch_150
    :cond_150
    :goto_150
    const/4 v1, 0x0

    new-array v0, v1, [B

    return-object v0

    :goto_154
    if-eqz v5, :cond_159

    :try_start_156
    invoke-static {v5}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_159} :catch_159

    .line 1129
    :catch_159
    :cond_159
    throw v0
.end method

.method public sendDhcp(Landroid/net/LinkProperties;I[BILjava/lang/String;)I
    .registers 39

    move-object/from16 v7, p0

    move/from16 v0, p4

    move-object/from16 v8, p5

    const-string v9, "sendDhcp "

    const-string v10, "MobileWips::FrameworkPktSender"

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 733
    :try_start_c
    sget v1, Landroid/system/OsConstants;->AF_PACKET:I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_e} :catch_217
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e} :catch_1e4
    .catchall {:try_start_c .. :try_end_e} :catchall_1e2

    :try_start_e
    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    invoke-static {v1, v2, v12}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    .line 734
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object v13

    .line 735
    iget-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v2, v2

    iget v3, v13, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v2, v3, v11}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 737
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    const/16 v1, 0x64

    new-array v1, v1, [B
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_3a} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3a} :catch_1e4
    .catchall {:try_start_e .. :try_end_3a} :catchall_1e2

    const/4 v14, -0x1

    if-eq v0, v14, :cond_50

    if-eqz v8, :cond_50

    .line 742
    :try_start_3f
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_45} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_45} :catch_46
    .catchall {:try_start_3f .. :try_end_45} :catchall_1e2

    goto :goto_50

    :catch_46
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v19, v10

    goto/16 :goto_1ea

    :catch_4d
    move-exception v0

    goto/16 :goto_1df

    :cond_50
    :goto_50
    move-object v15, v1

    .line 745
    :try_start_51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move/from16 v3, p2

    int-to-long v3, v3

    add-long v16, v1, v3

    const/16 v6, 0x5dc

    .line 747
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/16 v1, 0xe

    .line 748
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v1, 0x14

    .line 749
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v1, 0x8

    .line 750
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v1, 0xf5

    .line 751
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 753
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 754
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 756
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 757
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 759
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 760
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 762
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 763
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 765
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 766
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 769
    iget-object v6, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B

    iget-object v11, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    sget-object v14, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_IP_TYPE:[B

    invoke-direct {v7, v4, v6, v11, v14}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V

    const/16 v6, 0x110

    const/16 v11, 0x11

    .line 772
    sget-object v14, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->UDP_IP_SRC_ADDR:[B

    sget-object v18, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->UDP_IP_DST_ADDR:[B
    :try_end_a9
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_a9} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_a9} :catch_1e4
    .catchall {:try_start_51 .. :try_end_a9} :catchall_1e2

    move-object v12, v1

    move-object/from16 v1, p0

    move-object/from16 p2, v2

    move-object v2, v3

    move-object/from16 v19, v10

    move-object v10, v3

    move v3, v6

    move-object v6, v4

    move v4, v11

    move-object v11, v5

    move-object v5, v14

    move-object v14, v6

    move-object/from16 v20, v9

    const/16 v9, 0x5dc

    move-object/from16 v6, v18

    :try_start_be
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeIP(Ljava/nio/ByteBuffer;II[B[B)V

    const/16 v3, 0x44

    const/16 v4, 0x43

    const/16 v5, 0xfc

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 775
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeUDP(Ljava/nio/ByteBuffer;IIII)V

    .line 778
    iget-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    invoke-direct {v7, v12, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeDHCP(Ljava/nio/ByteBuffer;[B)V

    .line 781
    invoke-virtual {v11, v14}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 782
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 784
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    .line 789
    iget-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    const/16 v25, 0x0

    iget v2, v13, Lcom/android/net/module/util/InterfaceParams;->index:I

    iget-object v3, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->L2_BROADCAST:[B
    :try_end_fd
    .catch Ljava/lang/RuntimeException; {:try_start_be .. :try_end_fd} :catch_1d5
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_fd} :catch_1d1
    .catchall {:try_start_be .. :try_end_fd} :catchall_1e2

    const/4 v4, 0x0

    :try_start_fe
    invoke-static {v4, v2, v3}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v26
    :try_end_102
    .catch Ljava/lang/RuntimeException; {:try_start_fe .. :try_end_102} :catch_1ce
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_102} :catch_1cb
    .catchall {:try_start_fe .. :try_end_102} :catchall_1e2

    move-object/from16 v21, v1

    :try_start_104
    invoke-static/range {v21 .. v26}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    new-array v1, v9, [B

    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 794
    new-instance v4, Ljava/net/InetSocketAddress;
    :try_end_10e
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_10e} :catch_1d5
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_10e} :catch_1d1
    .catchall {:try_start_104 .. :try_end_10e} :catchall_1e2

    const/4 v5, 0x0

    :try_start_10f
    invoke-direct {v4, v5}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_112
    .catch Ljava/lang/RuntimeException; {:try_start_10f .. :try_end_112} :catch_1c8
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_112} :catch_1c5
    .catchall {:try_start_10f .. :try_end_112} :catchall_1e2

    const/4 v5, 0x0

    .line 795
    :goto_113
    :try_start_113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    cmp-long v6, v10, v16

    if-gez v6, :cond_1b3

    .line 796
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v16, v10

    .line 797
    iget-object v6, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    sget v12, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v13, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v10

    invoke-static {v6, v12, v13, v10}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 798
    iget-object v6, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v30, 0x5dc

    move-object/from16 v27, v6

    move-object/from16 v28, v1

    move-object/from16 v32, v4

    invoke-static/range {v27 .. v32}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    const/16 v6, 0x2e

    aget-byte v6, v1, v6

    .line 800
    sget-object v10, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->TRANSACTION_ID:[B

    const/4 v11, 0x0

    aget-byte v12, v10, v11

    const/4 v11, 0x1

    if-ne v6, v12, :cond_1ae

    const/16 v6, 0x2f

    aget-byte v6, v1, v6

    aget-byte v12, v10, v11

    if-ne v6, v12, :cond_1ae

    const/16 v6, 0x30

    aget-byte v6, v1, v6

    const/4 v12, 0x2

    aget-byte v13, v10, v12

    if-ne v6, v13, :cond_1ae

    const/16 v6, 0x31

    aget-byte v6, v1, v6

    const/4 v13, 0x3

    aget-byte v10, v10, v13

    if-ne v6, v10, :cond_1ae

    const/16 v6, 0x2a

    aget-byte v6, v1, v6

    if-ne v6, v12, :cond_1ae

    const/16 v6, 0x11a

    :goto_16d
    if-ge v6, v9, :cond_1ae

    .line 810
    aget-byte v10, v1, v6

    and-int/lit16 v12, v10, 0xff

    const/16 v14, 0xff

    if-eq v12, v14, :cond_1ae

    if-nez v10, :cond_17a

    goto :goto_1ae

    :cond_17a
    const/4 v12, -0x1

    if-ne v10, v13, :cond_18a

    if-ne v0, v12, :cond_18a

    add-int/lit8 v6, v6, 0x2

    const/4 v14, 0x0

    .line 813
    invoke-static {v1, v6, v3, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    invoke-static {v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->ipToInt([B)I

    move-result v5

    goto :goto_1b0

    :cond_18a
    const/4 v14, 0x0

    if-ne v10, v0, :cond_1a3

    if-eqz v8, :cond_1a3

    move v10, v14

    .line 818
    :goto_190
    array-length v13, v15

    if-ge v10, v13, :cond_1a1

    add-int/lit8 v13, v6, 0x2

    add-int/2addr v13, v10

    .line 819
    aget-byte v13, v1, v13

    aget-byte v2, v15, v10

    if-eq v13, v2, :cond_19d

    goto :goto_1a1

    :cond_19d
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x4

    goto :goto_190

    :cond_1a1
    :goto_1a1
    move v5, v11

    goto :goto_1b0

    :cond_1a3
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v9, :cond_1a8

    goto :goto_1b0

    .line 830
    :cond_1a8
    aget-byte v2, v1, v6
    :try_end_1aa
    .catch Ljava/lang/RuntimeException; {:try_start_113 .. :try_end_1aa} :catch_1c2
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_1aa} :catch_1bf
    .catchall {:try_start_113 .. :try_end_1aa} :catchall_1e2

    add-int/2addr v6, v2

    add-int/2addr v6, v11

    const/4 v2, 0x4

    goto :goto_16d

    :cond_1ae
    :goto_1ae
    const/4 v12, -0x1

    const/4 v14, 0x0

    :goto_1b0
    const/4 v2, 0x4

    goto/16 :goto_113

    .line 851
    :cond_1b3
    :try_start_1b3
    iget-object v0, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1ba

    .line 852
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_1ba
    const/4 v1, 0x0

    .line 854
    iput-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1bd} :catch_23c

    goto/16 :goto_23c

    :catch_1bf
    move-exception v0

    move v12, v5

    goto :goto_1ea

    :catch_1c2
    move-exception v0

    move v12, v5

    goto :goto_1d8

    :catch_1c5
    move-exception v0

    move v14, v5

    goto :goto_1d3

    :catch_1c8
    move-exception v0

    move v14, v5

    goto :goto_1d7

    :catch_1cb
    move-exception v0

    move v14, v4

    goto :goto_1d3

    :catch_1ce
    move-exception v0

    move v14, v4

    goto :goto_1d7

    :catch_1d1
    move-exception v0

    const/4 v14, 0x0

    :goto_1d3
    move v12, v14

    goto :goto_1ea

    :catch_1d5
    move-exception v0

    const/4 v14, 0x0

    :goto_1d7
    move v12, v14

    :goto_1d8
    move-object/from16 v3, v19

    move-object/from16 v2, v20

    goto :goto_21b

    :catch_1dd
    move-exception v0

    move v14, v12

    :goto_1df
    move-object v2, v9

    move-object v3, v10

    goto :goto_21b

    :catchall_1e2
    move-exception v0

    goto :goto_23d

    :catch_1e4
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v19, v10

    move v14, v12

    .line 844
    :goto_1ea
    :try_start_1ea
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    instance-of v1, v0, Landroid/system/ErrnoException;

    if-eqz v1, :cond_20e

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->EAGAIN:I
    :try_end_20e
    .catchall {:try_start_1ea .. :try_end_20e} :catchall_1e2

    .line 851
    :cond_20e
    :try_start_20e
    iget-object v0, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_215

    .line 852
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_215
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_215} :catch_23b

    :cond_215
    const/4 v1, 0x0

    goto :goto_239

    :catch_217
    move-exception v0

    move-object v2, v9

    move-object v3, v10

    move v14, v12

    .line 842
    :goto_21b
    :try_start_21b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_231
    .catchall {:try_start_21b .. :try_end_231} :catchall_1e2

    .line 851
    :try_start_231
    iget-object v0, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_238

    .line 852
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_238
    const/4 v1, 0x0

    .line 854
    :goto_239
    iput-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;
    :try_end_23b
    .catch Ljava/io/IOException; {:try_start_231 .. :try_end_23b} :catch_23b

    :catch_23b
    move v5, v12

    :catch_23c
    :goto_23c
    return v5

    .line 851
    :goto_23d
    :try_start_23d
    iget-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_244

    .line 852
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_244
    const/4 v1, 0x0

    .line 854
    iput-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketDhcp:Ljava/io/FileDescriptor;
    :try_end_247
    .catch Ljava/io/IOException; {:try_start_23d .. :try_end_247} :catch_247

    .line 857
    :catch_247
    throw v0
.end method

.method public sendDns(Landroid/net/LinkProperties;[B[BLjava/lang/String;[B[JZ)[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p7, :cond_e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    .line 929
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendDnsToUDP(Landroid/net/LinkProperties;[J[B[B[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_e
    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    .line 931
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendDNSToTCP(Landroid/net/LinkProperties;[J[B[B[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public sendDnsToUDP(Landroid/net/LinkProperties;[J[B[B[BLjava/lang/String;)[B
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v9, "sendDns "

    const-string v10, "MobileWips::FrameworkPktSender"

    const/16 v0, -0xbe

    .line 939
    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v11

    .line 941
    :try_start_c
    new-instance v12, Ljava/net/DatagramSocket;

    invoke-direct {v12}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_11} :catch_1cb

    .line 946
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    .line 947
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move v3, v13

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v14

    .line 949
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->createPacketDns(I[B[B[B[BZ)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v0, 0x5dc

    new-array v15, v0, [B

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 953
    :try_start_32
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    sget v4, Landroid/system/OsConstants;->SOCK_RAW:I

    invoke-static {v0, v4, v8}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v7
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3a} :catch_19b
    .catchall {:try_start_32 .. :try_end_3a} :catchall_199

    .line 954
    :try_start_3a
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object v6

    .line 955
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v0, v0

    iget v4, v6, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v0, v4, v3}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 957
    array-length v5, v1

    move v4, v8

    :goto_50
    if-ge v4, v5, :cond_17d

    aget-wide v16, v1, v4

    .line 958
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    add-long v22, v18, v16

    .line 960
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    const/16 v20, 0x0

    iget v0, v6, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v8, v0, v14}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v21

    move-object/from16 v16, v7

    invoke-static/range {v16 .. v21}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    .line 962
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v8}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 963
    :goto_76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    cmp-long v0, v16, v22

    if-gez v0, :cond_16e

    .line 964
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_82} :catch_192
    .catchall {:try_start_3a .. :try_end_82} :catchall_18c

    sub-long v16, v22, v16

    .line 966
    :try_start_84
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_86} :catch_139
    .catchall {:try_start_84 .. :try_end_86} :catchall_18c

    :try_start_86
    sget v8, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static/range {v16 .. v17}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v1

    invoke-static {v7, v0, v8, v1}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8f} :catch_12c
    .catchall {:try_start_86 .. :try_end_8f} :catchall_18c

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v8, 0x5dc

    move-object/from16 v16, v3

    move-object v3, v7

    move/from16 v17, v4

    move-object v4, v15

    move/from16 v18, v5

    move v5, v0

    move-object/from16 v19, v6

    move v6, v8

    move-object/from16 v20, v7

    move v7, v1

    const/4 v1, 0x0

    move-object/from16 v8, v16

    .line 967
    :try_start_a5
    invoke-static/range {v3 .. v8}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v0

    const/16 v3, 0x2c

    if-le v0, v3, :cond_15b

    const/4 v3, 0x2

    new-array v4, v3, [B

    const/16 v5, 0x22

    aget-byte v5, v15, v5

    aput-byte v5, v4, v1

    const/16 v5, 0x23

    aget-byte v5, v15, v5

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    .line 969
    invoke-static {v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    move-result v4

    const/16 v5, 0x35

    if-ne v4, v5, :cond_15b

    new-array v4, v3, [B

    const/16 v5, 0x24

    aget-byte v5, v15, v5

    aput-byte v5, v4, v1

    const/16 v5, 0x25

    aget-byte v5, v15, v5

    aput-byte v5, v4, v6

    .line 970
    invoke-static {v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    move-result v4

    if-ne v4, v13, :cond_15b

    move v8, v1

    move v4, v6

    .line 972
    :goto_db
    array-length v5, v14

    if-ge v8, v5, :cond_ea

    add-int/lit8 v5, v8, 0x6

    .line 973
    aget-byte v5, v15, v5

    aget-byte v7, v14, v8

    if-eq v5, v7, :cond_e7

    move v4, v1

    :cond_e7
    add-int/lit8 v8, v8, 0x1

    goto :goto_db

    :cond_ea
    new-array v5, v3, [B

    const/16 v7, 0x2a

    aget-byte v7, v15, v7

    aput-byte v7, v5, v1

    const/16 v7, 0x2b

    aget-byte v7, v15, v7

    aput-byte v7, v5, v6

    .line 977
    invoke-static {v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    move-result v5

    if-eqz v4, :cond_15b

    new-array v3, v3, [B

    .line 978
    aget-byte v4, p5, v1

    aput-byte v4, v3, v1

    aget-byte v4, p5, v6

    aput-byte v4, v3, v6

    invoke-static {v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    move-result v3

    if-ne v3, v5, :cond_15b

    add-int/lit8 v0, v0, -0x2a

    .line 979
    new-array v3, v0, [B

    move v8, v1

    :goto_113
    if-ge v8, v0, :cond_11e

    add-int/lit8 v4, v8, 0x2a

    .line 981
    aget-byte v4, v15, v4

    aput-byte v4, v3, v8
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_11b} :catch_12a
    .catchall {:try_start_a5 .. :try_end_11b} :catchall_16a

    add-int/lit8 v8, v8, 0x1

    goto :goto_113

    .line 1016
    :cond_11e
    :try_start_11e
    invoke-static {v11}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    if-eqz v20, :cond_126

    .line 1018
    invoke-static/range {v20 .. v20}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 1022
    :cond_126
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_129} :catch_129

    :catch_129
    return-object v3

    :catch_12a
    move-exception v0

    goto :goto_145

    :catch_12c
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    const/4 v1, 0x0

    goto :goto_145

    :catch_139
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move v1, v8

    .line 993
    :goto_145
    :try_start_145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_15b} :catch_16c
    .catchall {:try_start_145 .. :try_end_15b} :catchall_16a

    :cond_15b
    move v8, v1

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v1, p2

    goto/16 :goto_76

    :catchall_16a
    move-exception v0

    goto :goto_18f

    :catch_16c
    move-exception v0

    goto :goto_196

    :cond_16e
    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move v1, v8

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_50

    :cond_17d
    move-object/from16 v20, v7

    move v1, v8

    .line 1016
    :try_start_180
    invoke-static {v11}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    if-eqz v20, :cond_188

    .line 1018
    invoke-static/range {v20 .. v20}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 1022
    :cond_188
    :goto_188
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_18b} :catch_1bc

    goto :goto_1bc

    :catchall_18c
    move-exception v0

    move-object/from16 v20, v7

    :goto_18f
    move-object/from16 v3, v20

    goto :goto_1bf

    :catch_192
    move-exception v0

    move-object/from16 v20, v7

    move v1, v8

    :goto_196
    move-object/from16 v3, v20

    goto :goto_19d

    :catchall_199
    move-exception v0

    goto :goto_1bf

    :catch_19b
    move-exception v0

    move v1, v8

    .line 1005
    :goto_19d
    :try_start_19d
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b3
    .catchall {:try_start_19d .. :try_end_1b3} :catchall_199

    .line 1016
    :try_start_1b3
    invoke-static {v11}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    if-eqz v3, :cond_188

    .line 1018
    invoke-static {v3}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1bb} :catch_1bc

    goto :goto_188

    :catch_1bc
    :goto_1bc
    new-array v0, v1, [B

    return-object v0

    .line 1016
    :goto_1bf
    :try_start_1bf
    invoke-static {v11}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    if-eqz v3, :cond_1c7

    .line 1018
    invoke-static {v3}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 1022
    :cond_1c7
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->close()V
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_1bf .. :try_end_1ca} :catch_1ca

    .line 1030
    :catch_1ca
    throw v0

    :catch_1cb
    move-exception v0

    .line 943
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketException of DatagramSocket. Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendIcmp(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    const-string v8, "sendIcmp "

    const-string v9, "MobileWips::FrameworkPktSender"

    .line 610
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 613
    :try_start_c
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    sget v1, Landroid/system/OsConstants;->SOCK_RAW:I

    const/4 v12, 0x0

    invoke-static {v0, v1, v12}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object v0

    .line 615
    iget-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v2, v2

    iget v3, v0, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v2, v3, v11}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 619
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    move-object/from16 v1, p5

    .line 621
    invoke-direct {v7, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 623
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move/from16 v3, p2

    int-to-long v3, v3

    add-long v14, v1, v3

    const/16 v6, 0x5dc

    .line 625
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/16 v1, 0xe

    .line 626
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v1, 0x14

    .line 627
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v1, 0x40

    .line 628
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 630
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 631
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 633
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 634
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 636
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 637
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 639
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 640
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 643
    iget-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    sget-object v6, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_IP_TYPE:[B

    invoke-direct {v7, v4, v13, v1, v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_7f} :catch_17d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_7f} :catch_156
    .catchall {:try_start_c .. :try_end_7f} :catchall_154

    const/16 v6, 0x54

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object v11, v2

    move-object v2, v3

    move-object v12, v3

    move v3, v6

    move-object v6, v4

    move/from16 v4, v16

    move-object/from16 v17, v5

    move-object/from16 v5, p4

    move-object/from16 v18, v8

    move-object/from16 v16, v9

    const/16 v8, 0x5dc

    move-object v9, v6

    move-object/from16 v6, p3

    .line 646
    :try_start_99
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeIP(Ljava/nio/ByteBuffer;II[B[B)V

    .line 649
    invoke-direct {v7, v11}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeICMP(Ljava/nio/ByteBuffer;)V

    move-object/from16 v1, v17

    .line 652
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 653
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 655
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 660
    iget-object v2, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    const/16 v23, 0x0

    iget v0, v0, Lcom/android/net/module/util/InterfaceParams;->index:I

    const/4 v1, 0x0

    invoke-static {v1, v0, v13}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v24

    move-object/from16 v19, v2

    invoke-static/range {v19 .. v24}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    new-array v0, v8, [B

    const/4 v1, 0x6

    new-array v2, v1, [B

    new-array v3, v1, [B

    .line 667
    :cond_d3
    :goto_d3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-gez v4, :cond_141

    .line 668
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v14, v4

    .line 669
    iget-object v6, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    sget v9, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {v4, v5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    invoke-static {v6, v9, v11, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 670
    iget-object v4, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5, v8}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    const/16 v4, 0x26

    aget-byte v4, v0, v4

    .line 672
    sget-object v6, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->IDENTIFIER:[B

    aget-byte v9, v6, v5

    if-ne v4, v9, :cond_13f

    const/16 v4, 0x27

    aget-byte v4, v0, v4

    const/4 v5, 0x1

    aget-byte v6, v6, v5

    if-ne v4, v6, :cond_13f

    const/16 v4, 0x28

    aget-byte v4, v0, v4

    sget-object v6, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SEQUENCE_NUMBER:[B

    const/4 v9, 0x0

    aget-byte v11, v6, v9

    if-ne v4, v11, :cond_d3

    const/16 v4, 0x29

    aget-byte v4, v0, v4

    aget-byte v5, v6, v5

    if-ne v4, v5, :cond_d3

    .line 681
    invoke-static {v0, v9, v3, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 682
    invoke-static {v0, v1, v2, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 684
    iget-object v4, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->compareByteArray([B[B)Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 685
    invoke-static {v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->macToString([B)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d3

    .line 687
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x16

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 688
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13e
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_13e} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_13e} :catch_14c
    .catchall {:try_start_99 .. :try_end_13e} :catchall_154

    goto :goto_141

    :cond_13f
    const/4 v9, 0x0

    goto :goto_d3

    .line 714
    :cond_141
    :goto_141
    :try_start_141
    iget-object v0, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_148

    .line 715
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_148
    :goto_148
    const/4 v1, 0x0

    .line 717
    iput-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_14b} :catch_19e

    goto :goto_19e

    :catch_14c
    move-exception v0

    goto :goto_15b

    :catch_14e
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    goto :goto_180

    :catchall_154
    move-exception v0

    goto :goto_19f

    :catch_156
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v16, v9

    .line 701
    :goto_15b
    :try_start_15b
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_175
    .catchall {:try_start_15b .. :try_end_175} :catchall_154

    .line 714
    :try_start_175
    iget-object v0, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_148

    .line 715
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_17c} :catch_19e

    goto :goto_148

    :catch_17d
    move-exception v0

    move-object v2, v8

    move-object v1, v9

    .line 699
    :goto_180
    :try_start_180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_196
    .catchall {:try_start_180 .. :try_end_196} :catchall_154

    .line 714
    :try_start_196
    iget-object v0, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_148

    .line 715
    invoke-static {v0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_19d} :catch_19e

    goto :goto_148

    :catch_19e
    :goto_19e
    return-object v10

    .line 714
    :goto_19f
    :try_start_19f
    iget-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_1a6

    .line 715
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V

    :cond_1a6
    const/4 v1, 0x0

    .line 717
    iput-object v1, v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mSocketIcmp:Ljava/io/FileDescriptor;
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a9} :catch_1a9

    .line 720
    :catch_1a9
    throw v0
.end method

.method public sendTcp(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Z
    .registers 24

    move-object/from16 v0, p0

    const-string v7, "sendDns "

    const-string v8, "MobileWips::FrameworkPktSender"

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 1140
    :try_start_8
    sget v2, Landroid/system/OsConstants;->AF_PACKET:I

    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    invoke-static {v2, v3, v9}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v10
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_10} :catch_18e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_166
    .catchall {:try_start_8 .. :try_end_10} :catchall_164

    .line 1141
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object v11

    .line 1142
    sget v2, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v2, v2

    iget v3, v11, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v2, v3, v1}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 1144
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->getMacAddress(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    move-object/from16 v1, p5

    .line 1147
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->macStringToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 1149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move/from16 v3, p2

    int-to-long v3, v3

    add-long v13, v1, v3

    const/16 v15, 0x5dc

    .line 1151
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/16 v1, 0xe

    .line 1152
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/16 v1, 0x14

    .line 1153
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1154
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v1, 0x20

    .line 1155
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1157
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1158
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1160
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1161
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1163
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1164
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1166
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1167
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1169
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1170
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1173
    iget-object v1, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->SRC_ADDR:[B

    sget-object v15, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->ETHER_IP_TYPE:[B

    invoke-direct {v0, v5, v12, v1, v15}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_80} :catch_160
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_80} :catch_15b
    .catchall {:try_start_10 .. :try_end_80} :catchall_158

    const/16 v15, 0x28

    const/16 v16, 0x6

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-object v2, v4

    move-object v9, v3

    move v3, v15

    move-object v15, v4

    move/from16 v4, v16

    move-object/from16 v17, v5

    move-object/from16 v5, p4

    move-object/from16 v16, v8

    move-object v8, v6

    move-object/from16 v6, p3

    .line 1176
    :try_start_97
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeIP(Ljava/nio/ByteBuffer;II[B[B)V

    const/4 v5, 0x6

    const/16 v6, 0x14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    .line 1179
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makePsuedoHeader(Ljava/nio/ByteBuffer;[B[BII)V

    const/16 v1, 0x50

    move-object/from16 v2, p1

    .line 1180
    invoke-direct {v0, v9, v2, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->makeTCP(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    move-object/from16 v0, v17

    .line 1183
    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1184
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1186
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 1191
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v4, 0x0

    iget v5, v11, Lcom/android/net/module/util/InterfaceParams;->index:I
    :try_end_ce
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_ce} :catch_152
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_ce} :catch_14f
    .catchall {:try_start_97 .. :try_end_ce} :catchall_158

    const/4 v6, 0x0

    :try_start_cf
    invoke-static {v6, v5, v12}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v5
    :try_end_d3
    .catch Ljava/lang/RuntimeException; {:try_start_cf .. :try_end_d3} :catch_14c
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d3} :catch_149
    .catchall {:try_start_cf .. :try_end_d3} :catchall_158

    move-object/from16 p0, v10

    move-object/from16 p1, v0

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v5

    :try_start_df
    invoke-static/range {p0 .. p5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    const/16 v0, 0x5dc

    new-array v0, v0, [B

    const/4 v2, 0x2

    new-array v3, v2, [B

    new-array v4, v2, [B

    .line 1198
    new-instance v5, Ljava/net/InetSocketAddress;
    :try_end_ed
    .catch Ljava/lang/RuntimeException; {:try_start_df .. :try_end_ed} :catch_152
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_ed} :catch_14f
    .catchall {:try_start_df .. :try_end_ed} :catchall_158

    const/4 v6, 0x0

    :try_start_ee
    invoke-direct {v5, v6}, Ljava/net/InetSocketAddress;-><init>(I)V

    const/4 v6, 0x0

    .line 1199
    :cond_f2
    :goto_f2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v8, v8, v13

    if-gez v8, :cond_142

    .line 1200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v13, v8

    .line 1201
    sget v11, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v12, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {v8, v9}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v8

    invoke-static {v10, v11, v12, v8}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x5dc

    move-object/from16 p0, v10

    move-object/from16 p1, v0

    move/from16 p2, v8

    move/from16 p3, v11

    move/from16 p4, v9

    move-object/from16 p5, v5

    .line 1202
    invoke-static/range {p0 .. p5}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    const/16 v8, 0x22

    const/4 v9, 0x0

    .line 1205
    invoke-static {v0, v8, v4, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v8, 0x24

    .line 1206
    invoke-static {v0, v8, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1208
    invoke-static {v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    move-result v8

    if-ne v8, v1, :cond_f2

    .line 1209
    invoke-static {v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToInt([B)I

    move-result v8

    const v11, 0xfde8

    if-ne v8, v11, :cond_f2

    const/16 v8, 0x2f

    aget-byte v8, v0, v8
    :try_end_13c
    .catch Ljava/lang/RuntimeException; {:try_start_ee .. :try_end_13c} :catch_14c
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_13c} :catch_149
    .catchall {:try_start_ee .. :try_end_13c} :catchall_158

    const/16 v11, 0x12

    if-ne v8, v11, :cond_f2

    const/4 v6, 0x1

    goto :goto_f2

    :cond_142
    if-eqz v10, :cond_1ac

    .line 1234
    :try_start_144
    invoke-static {v10}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_1ac

    goto/16 :goto_1ac

    :catch_149
    move-exception v0

    move v9, v6

    goto :goto_15e

    :catch_14c
    move-exception v0

    move v9, v6

    goto :goto_154

    :catch_14f
    move-exception v0

    const/4 v9, 0x0

    goto :goto_15e

    :catch_152
    move-exception v0

    const/4 v9, 0x0

    :goto_154
    move-object v1, v10

    move-object/from16 v3, v16

    goto :goto_190

    :catchall_158
    move-exception v0

    move-object v1, v10

    goto :goto_1ad

    :catch_15b
    move-exception v0

    move-object/from16 v16, v8

    :goto_15e
    move-object v1, v10

    goto :goto_169

    :catch_160
    move-exception v0

    move-object v3, v8

    move-object v1, v10

    goto :goto_190

    :catchall_164
    move-exception v0

    goto :goto_1ad

    :catch_166
    move-exception v0

    move-object/from16 v16, v8

    .line 1226
    :goto_169
    :try_start_169
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    instance-of v2, v0, Landroid/system/ErrnoException;

    if-eqz v2, :cond_18b

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->EAGAIN:I

    :cond_18b
    if-eqz v1, :cond_1ab

    goto :goto_1a8

    :catch_18e
    move-exception v0

    move-object v3, v8

    .line 1224
    :goto_190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a6
    .catchall {:try_start_169 .. :try_end_1a6} :catchall_164

    if-eqz v1, :cond_1ab

    .line 1234
    :goto_1a8
    :try_start_1a8
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1ab} :catch_1ab

    :catch_1ab
    :cond_1ab
    move v6, v9

    :catch_1ac
    :cond_1ac
    :goto_1ac
    return v6

    :goto_1ad
    if-eqz v1, :cond_1b2

    :try_start_1af
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1b2} :catch_1b2

    .line 1239
    :catch_1b2
    :cond_1b2
    throw v0
.end method

.method declared-synchronized setInterfaceName(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 167
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->mInterfaceName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 168
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
