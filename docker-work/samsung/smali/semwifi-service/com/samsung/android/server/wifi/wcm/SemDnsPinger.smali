.class public final Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;
.super Landroid/os/Handler;
.source "SemDnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;,
        Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;,
        Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_ALL_PINGS:I = 0x91003

.field private static final ACTION_LISTEN_FOR_RESPONSE:I = 0x91002

.field private static final ACTION_PING_DNS:I = 0x91001

.field private static final ACTION_PING_DNS_SPECIFIC:I = 0x91004

.field private static final BASE:I = 0x91000

.field public static final CACHED_RESULT:I = 0x1

.field private static final DBG:Z

.field public static final DNS_PING_RESULT:I = 0x91000

.field public static final DNS_PING_RESULT_SPECIFIC:I = 0x91005

.field private static final DNS_PORT:I = 0x35

.field private static final DNS_RESPONSE_BUFFER_SIZE:I = 0x200

.field private static MostRecentDnsResultMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_INTERNET:I = -0x3

.field public static final PRIVATE_IP_ADDRESS:I = 0x2

.field private static final RECEIVE_POLL_INTERVAL_MS:I = 0xc8

.field public static final REQUESTED_URL_ALREADY_IP_ADDRESS:I = 0x3

.field private static final SMARTCM_DBG:Z = false

.field public static final SOCKET_EXCEPTION:I = -0x2

.field private static final SOCKET_TIMEOUT_MS:I = 0x1

.field public static final TIMEOUT:I = -0x1

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field DnsResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private TAG:Ljava/lang/String;

.field final lock:Ljava/lang/Object;

.field private mActivePings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultDns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsQuery:[B

.field private mEventCounter:I

.field mLp:Landroid/net/LinkProperties;

.field private mNetwork:Landroid/net/Network;

.field private final mTarget:Landroid/os/Handler;

.field mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    .line 93
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sRandom:Ljava/util/Random;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;Landroid/net/Network;)V
    .registers 7

    .line 179
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p3, 0x0

    .line 96
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 98
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mNetwork:Landroid/net/Network;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    .line 571
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mLp:Landroid/net/LinkProperties;

    .line 572
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 180
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->TAG:Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mContext:Landroid/content/Context;

    .line 182
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    .line 183
    iput-object p5, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mNetwork:Landroid/net/Network;

    .line 184
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->getDefaultDns()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mEventCounter:I

    return-void
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_5

    return-object v0

    .line 585
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_15

    .line 586
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 589
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultDns()Ljava/net/InetAddress;
    .registers 3

    .line 595
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_dns_server"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 597
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21

    .line 598
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040334

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    :cond_21
    :try_start_21
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    const-string v0, "getDefaultDns::malformed default dns address"

    .line 604
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getKernelTime()Ljava/lang/String;
    .registers 5

    .line 886
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 888
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isDnsResponsePrivateAddress(Ljava/lang/String;)Z
    .registers 12

    .line 831
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_b7

    .line 834
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_14
    if-ltz v3, :cond_b7

    .line 836
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    .line 837
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    .line 838
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    .line 839
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    iget-object v8, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    const/4 v9, 0x3

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xa

    if-eq v5, v9, :cond_82

    const/16 v9, 0xc0

    if-ne v5, v9, :cond_64

    const/16 v9, 0xa8

    if-eq v6, v9, :cond_82

    :cond_64
    const/16 v9, 0xac

    if-ne v5, v9, :cond_70

    const/16 v9, 0x10

    if-lt v6, v9, :cond_70

    const/16 v9, 0x1f

    if-le v6, v9, :cond_82

    :cond_70
    if-ne v5, v4, :cond_7f

    const/16 v9, 0x21

    if-ne v6, v9, :cond_7f

    const/16 v9, 0xcb

    if-ne v7, v9, :cond_7f

    const/16 v9, 0x27

    if-ne v8, v9, :cond_7f

    goto :goto_82

    :cond_7f
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 844
    :cond_82
    :goto_82
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v1, :cond_b5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - Dns Response with Private Network IP Address !!! - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 846
    :cond_b5
    monitor-exit v0

    return v4

    .line 850
    :cond_b7
    monitor-exit v0

    return v2

    :catchall_b9
    move-exception p0

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_3 .. :try_end_bb} :catchall_b9

    throw p0
.end method

.method private log(Ljava/lang/String;)V
    .registers 2

    .line 878
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 2

    .line 882
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 893
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method private sendResponse(III)V
    .registers 6

    .line 514
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v0, :cond_28

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responding to packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " externalId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    :cond_28
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_3a

    .line 520
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    const v0, 0x91005

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p3, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_46

    .line 522
    :cond_3a
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    const v0, 0x91000

    invoke-virtual {p0, v0, p1, p3}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_46
    return-void
.end method

.method private sendResponse(IIILjava/lang/String;)V
    .registers 12

    .line 544
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v0, :cond_30

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responding to packet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " externalId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " val "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    :cond_30
    const/4 v1, 0x0

    .line 551
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    if-ne p3, v3, :cond_79

    .line 552
    :try_start_37
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 553
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    if-eqz p4, :cond_79

    .line 555
    iget-object v1, p4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    if-eqz v0, :cond_79

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending most recent DNS result, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expired "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->ttl:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " msec ago."

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 557
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 562
    :cond_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_37 .. :try_end_7a} :catchall_98

    const/4 p4, 0x1

    and-int/2addr p2, p4

    if-ne p2, p4, :cond_8b

    .line 564
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    const p4, 0x91005

    invoke-virtual {p0, p4, p1, p3, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_97

    .line 566
    :cond_8b
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    const p4, 0x91000

    invoke-virtual {p0, p4, p1, p3}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_97
    return-void

    :catchall_98
    move-exception p0

    .line 562
    :try_start_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw p0
.end method

.method private sendResponse(IIILjava/lang/String;II)V
    .registers 9

    .line 527
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v0, :cond_44

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responding to packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " externalId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and val "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SPECIFIC DNS PING: url - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", responseVal : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 535
    :cond_44
    :try_start_44
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_69

    .line 536
    :try_start_47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    iget-object p4, p4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 537
    iget-object p5, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    const v0, 0x91005

    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    int-to-long p3, p6

    invoke-virtual {p5, p0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    monitor-exit p2

    goto :goto_69

    :catchall_66
    move-exception p0

    monitor-exit p2
    :try_end_68
    .catchall {:try_start_47 .. :try_end_68} :catchall_66

    :try_start_68
    throw p0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_69} :catch_69

    :catch_69
    :goto_69
    return-void
.end method

.method private updateDnsDB([BILjava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 689
    aget-byte v5, p1, v4

    const/4 v5, 0x1

    aget-byte v6, p1, v5

    const/4 v6, 0x2

    .line 692
    aget-byte v6, p1, v6

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    const/4 v6, 0x4

    .line 695
    aget-byte v7, p1, v6

    const/4 v7, 0x5

    aget-byte v7, p1, v7

    const/4 v7, 0x6

    .line 698
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    const/4 v9, 0x7

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v7, v9

    .line 701
    aget-byte v9, p1, v8

    const/16 v9, 0x9

    aget-byte v9, p1, v9

    const/16 v9, 0xa

    .line 704
    aget-byte v9, p1, v9

    const/16 v9, 0xb

    aget-byte v10, p1, v9

    .line 707
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3b
    add-int/2addr v9, v5

    .line 708
    aget-byte v11, p1, v9

    const/16 v12, 0x2e

    if-eqz v11, :cond_66

    move v11, v5

    .line 709
    :goto_43
    aget-byte v13, p1, v9

    if-gt v11, v13, :cond_5f

    const-string v13, "%c"

    new-array v14, v5, [Ljava/lang/Object;

    add-int v15, v9, v11

    .line 710
    aget-byte v15, p1, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    .line 712
    :cond_5f
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    aget-byte v11, p1, v9

    add-int/2addr v9, v11

    goto :goto_3b

    .line 715
    :cond_66
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    add-int/2addr v9, v6

    .line 729
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 731
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move v13, v4

    :goto_81
    if-ge v13, v7, :cond_16a

    add-int/lit8 v14, v9, 0xc

    const/16 v15, 0x200

    if-ge v14, v15, :cond_16a

    add-int/lit8 v9, v9, 0x1

    .line 735
    aget-byte v14, p1, v9

    const/16 v4, 0xc0

    and-int/2addr v14, v4

    if-ne v14, v4, :cond_95

    add-int/lit8 v9, v9, 0x1

    goto :goto_9b

    :cond_95
    :goto_95
    add-int/2addr v9, v5

    .line 738
    aget-byte v4, p1, v9

    if-eqz v4, :cond_9b

    goto :goto_95

    :cond_9b
    :goto_9b
    add-int/2addr v9, v5

    .line 742
    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    add-int/2addr v9, v5

    aget-byte v14, p1, v9

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v4, v14

    add-int/2addr v9, v5

    .line 745
    aget-byte v14, p1, v9

    add-int/2addr v9, v5

    aget-byte v14, p1, v9

    add-int/2addr v9, v5

    .line 748
    aget-byte v14, p1, v9

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    add-int/2addr v9, v5

    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    add-int/2addr v14, v12

    add-int/2addr v9, v5

    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v8

    add-int/2addr v14, v12

    add-int/2addr v9, v5

    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v14, v12

    add-int/2addr v9, v5

    .line 751
    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v8

    add-int/2addr v9, v5

    aget-byte v8, p1, v9

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v12, v8

    add-int v8, v9, v12

    if-lt v8, v15, :cond_db

    goto/16 :goto_16a

    :cond_db
    if-ne v4, v5, :cond_148

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v9, 0x1

    .line 757
    aget-byte v8, p1, v9

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2e

    .line 758
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v9, v5

    .line 759
    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v9, v5

    .line 761
    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v9, v5

    .line 763
    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    new-instance v12, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    mul-int/lit16 v14, v14, 0x3e8

    move/from16 v16, v9

    int-to-long v8, v14

    add-long/2addr v8, v2

    invoke-direct {v12, v0, v15, v8, v9}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;J)V

    .line 766
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "["

    .line 767
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    .line 769
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v16

    goto :goto_161

    :cond_148
    const/4 v4, 0x0

    :goto_149
    if-ge v4, v12, :cond_161

    const-string v8, "%02X"

    new-array v14, v5, [Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    .line 774
    aget-byte v15, p1, v9

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_149

    :cond_161
    :goto_161
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    const/16 v8, 0x8

    const/16 v12, 0x2e

    goto/16 :goto_81

    .line 780
    :cond_16a
    :goto_16a
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v2, :cond_199

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->getKernelTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DNS Result - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 783
    :cond_199
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 784
    :try_start_19c
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1aa

    .line 785
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c5

    :cond_1aa
    const/4 v3, 0x0

    .line 787
    :goto_1ab
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1c5

    .line 788
    iget-object v4, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ab

    .line 791
    :cond_1c5
    :goto_1c5
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ee

    .line 792
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1e1

    .line 797
    :cond_1ee
    sget-boolean v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v3, :cond_22d

    .line 798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hashmap DnsResultMap contains "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " entries, url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " IPs"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 800
    :cond_22d
    monitor-exit v2

    return-void

    :catchall_22f
    move-exception v0

    monitor-exit v2
    :try_end_231
    .catchall {:try_start_19c .. :try_end_231} :catchall_22f

    throw v0
.end method

.method private updateDnsQuery(Ljava/lang/String;)V
    .registers 12

    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 630
    fill-array-data v1, :array_5a

    const/4 v2, 0x5

    new-array v3, v2, [B

    .line 638
    fill-array-data v3, :array_64

    .line 644
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 646
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    .line 647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v5, 0x0

    move v7, v4

    move v8, v5

    :goto_2f
    if-ltz v7, :cond_3f

    .line 651
    aget-byte v9, p1, v7

    if-ne v9, v6, :cond_39

    .line 652
    aput-byte v8, p1, v7

    move v8, v5

    goto :goto_3c

    :cond_39
    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    :goto_3c
    add-int/lit8 v7, v7, -0x1

    goto :goto_2f

    :cond_3f
    add-int/lit8 v6, v4, 0x12

    .line 659
    new-array v6, v6, [B

    .line 660
    invoke-static {v1, v5, v6, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v4, 0x1

    .line 661
    invoke-static {p1, v5, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0xd

    .line 662
    invoke-static {v3, v5, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mDnsQuery:[B

    return-void

    nop

    :array_5a
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_64
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method private updateDnsResultMap(Ljava/lang/String;)V
    .registers 11

    .line 804
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p0, :cond_9a

    .line 808
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x1

    sub-int/2addr p1, v3

    :goto_17
    if-ltz p1, :cond_9a

    .line 810
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 811
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    .line 812
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    .line 813
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xa

    if-eq v4, v8, :cond_93

    const/16 v8, 0xc0

    if-ne v4, v8, :cond_68

    const/16 v8, 0xa8

    if-eq v5, v8, :cond_93

    :cond_68
    const/16 v8, 0xac

    if-ne v4, v8, :cond_74

    const/16 v8, 0x10

    if-lt v5, v8, :cond_74

    const/16 v8, 0x1f

    if-le v5, v8, :cond_93

    :cond_74
    if-ne v4, v3, :cond_83

    const/16 v4, 0x21

    if-ne v5, v4, :cond_83

    const/16 v4, 0xcb

    if-ne v6, v4, :cond_83

    const/16 v4, 0x27

    if-ne v7, v4, :cond_83

    goto :goto_93

    .line 819
    :cond_83
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;

    iget-wide v4, v4, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->ttl:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_96

    .line 821
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_96

    .line 818
    :cond_93
    :goto_93
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_96
    :goto_96
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_17

    .line 827
    :cond_9a
    monitor-exit v0

    return-void

    :catchall_9c
    move-exception p0

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_9c

    throw p0
.end method


# virtual methods
.method public cancelPings()V
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const v0, 0x91003

    .line 510
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public clear()V
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 490
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 491
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getDnsList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "getCurLinkProperties:: LP is null!"

    .line 389
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->loge(Ljava/lang/String;)V

    .line 390
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    return-object p0

    .line 393
    :cond_e
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 394
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_21

    .line 399
    :cond_1b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_21
    :goto_21
    const-string v0, "getDns::LinkProps has null dns - returning default"

    .line 395
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->loge(Ljava/lang/String;)V

    .line 396
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 18

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    .line 195
    iget v0, v1, Landroid/os/Message;->what:I

    const v11, 0x91002

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_302

    goto/16 :goto_301

    .line 370
    :pswitch_11
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;

    .line 371
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto :goto_17

    .line 372
    :cond_29
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_301

    .line 269
    :pswitch_30
    iget v0, v1, Landroid/os/Message;->arg1:I

    iget v1, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mEventCounter:I

    if-eq v0, v1, :cond_38

    goto/16 :goto_301

    .line 272
    :cond_38
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_3e
    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_120

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;

    const/16 v0, 0x200

    :try_start_4d
    new-array v3, v0, [B

    .line 279
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 281
    iget-object v0, v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    aget-byte v0, v3, v13

    .line 285
    iget-short v5, v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v6, v5, 0x8

    int-to-byte v6, v6

    if-ne v0, v6, :cond_69

    aget-byte v0, v3, v14

    int-to-byte v5, v5

    if-ne v0, v5, :cond_69

    :goto_67
    move v0, v14

    goto :goto_a5

    .line 289
    :cond_69
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v0, :cond_72

    const-string v0, "response ID doesn\'t match with query ID."

    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 290
    :cond_72
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;

    aget-byte v6, v3, v13

    .line 291
    iget-short v7, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v15, v7, 0x8

    int-to-byte v15, v15

    if-ne v6, v15, :cond_78

    aget-byte v6, v3, v14

    int-to-byte v7, v7

    if-ne v6, v7, :cond_78

    iget-object v6, v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    if-eqz v6, :cond_78

    iget-object v5, v5, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 293
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    const-string v0, "response ID didn\'t match, but DNS response is usable."

    .line 294
    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    goto :goto_67

    :cond_a4
    move v0, v13

    :goto_a5
    if-eqz v0, :cond_f8

    const/4 v0, 0x3

    aget-byte v0, v3, v0

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_e6

    const/4 v0, 0x6

    aget-byte v0, v3, v0

    if-nez v0, :cond_b8

    const/4 v0, 0x7

    aget-byte v0, v3, v0

    if-eqz v0, :cond_e6

    .line 315
    :cond_b8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v9, v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->start:J

    sub-long/2addr v5, v9

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    .line 316
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    iget-object v4, v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-direct {v8, v0, v3, v4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->updateDnsDB([BILjava/lang/String;)V

    .line 317
    iget-object v0, v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x2

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto/16 :goto_3e

    .line 320
    :cond_e6
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v0, :cond_ef

    const-string v0, "Reply code is not 0(No Error) or Answer Record Count is 0"

    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->loge(Ljava/lang/String;)V

    :cond_ef
    const/4 v0, -0x3

    .line 321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto/16 :goto_3e

    :cond_f8
    const-string v0, "response ID didn\'t match, ignoring packet"

    .line 324
    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V
    :try_end_fd
    .catch Ljava/net/SocketTimeoutException; {:try_start_4d .. :try_end_fd} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_fd} :catch_ff

    goto/16 :goto_3e

    :catch_ff
    move-exception v0

    .line 329
    sget-boolean v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v3, :cond_118

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemDnsPinger.pingDns got socket exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 332
    :cond_118
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto/16 :goto_3e

    .line 335
    :cond_120
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 336
    :cond_126
    :goto_126
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1dd

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;

    .line 338
    iget-object v1, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    if-eqz v1, :cond_1bb

    .line 339
    iget-short v2, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    and-int/2addr v2, v14

    if-ne v2, v14, :cond_1a4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1a4

    .line 340
    iget-object v10, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 341
    :try_start_145
    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iget-object v2, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_17c

    .line 342
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_155
    .catchall {:try_start_145 .. :try_end_155} :catchall_1a1

    if-lez v1, :cond_17c

    .line 344
    :try_start_157
    iget v2, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    iget-short v3, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    iget-object v1, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sRandom:Ljava/util/Random;

    iget-object v6, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(IIILjava/lang/String;II)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_17b} :catch_19f
    .catchall {:try_start_157 .. :try_end_17b} :catchall_1a1

    goto :goto_19f

    .line 348
    :cond_17c
    :try_start_17c
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v1, :cond_198

    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There are no results about "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_198
    iget v1, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    iget-short v2, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    invoke-direct {v8, v1, v2, v12}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(III)V

    .line 351
    :catch_19f
    :goto_19f
    monitor-exit v10

    goto :goto_1b1

    :catchall_1a1
    move-exception v0

    monitor-exit v10
    :try_end_1a3
    .catchall {:try_start_17c .. :try_end_1a3} :catchall_1a1

    throw v0

    .line 353
    :cond_1a4
    iget v1, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    iget-short v2, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    iget-object v3, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v8, v1, v2, v3}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(III)V

    .line 355
    :goto_1b1
    iget-object v1, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_126

    .line 357
    :cond_1bb
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->start:J

    iget v5, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->timeout:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_126

    .line 359
    iget v1, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    iget-short v2, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    const/4 v3, -0x1

    iget-object v4, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(IIILjava/lang/String;)V

    .line 360
    iget-object v1, v9, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 361
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_126

    .line 364
    :cond_1dd
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_301

    .line 365
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mEventCounter:I

    invoke-virtual {v8, v11, v0, v13}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_301

    .line 198
    :pswitch_1f2
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;

    .line 199
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->seq:I

    iget-object v3, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v2, v3, :cond_202

    goto/16 :goto_301

    :cond_202
    const v2, 0x91001

    .line 204
    :try_start_205
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;

    const/4 v4, 0x0

    invoke-direct {v3, v8, v4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing-IA;)V

    .line 205
    iget-object v4, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .line 206
    iget-object v5, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    invoke-direct {v8, v5}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->updateDnsQuery(Ljava/lang/String;)V

    .line 207
    iget v5, v1, Landroid/os/Message;->arg1:I

    iput v5, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    .line 208
    iget v5, v1, Landroid/os/Message;->arg2:I

    iput v5, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->timeout:I

    .line 209
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 212
    invoke-virtual {v0, v14}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_228} :catch_2ee

    .line 219
    :try_start_228
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 220
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-static {v0, v5}, Landroid/net/util/SocketUtils;->bindSocketToInterface(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_23d} :catch_23e

    goto :goto_253

    :catch_23e
    move-exception v0

    .line 223
    :try_start_23f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendDnsPing::Error binding to socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->loge(Ljava/lang/String;)V

    .line 230
    :goto_253
    iget v0, v1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_262

    .line 231
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    shl-int/2addr v0, v14

    int-to-short v0, v0

    iput-short v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    goto :goto_26d

    .line 233
    :cond_262
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    shl-int/2addr v0, v14

    add-int/2addr v0, v14

    int-to-short v0, v0

    iput-short v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    .line 236
    :goto_26d
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mDnsQuery:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 237
    iget-short v5, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v6, v5, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v13

    int-to-byte v5, v5

    .line 238
    aput-byte v5, v0, v14

    .line 241
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v0

    const/16 v7, 0x35

    invoke-direct {v5, v0, v6, v4, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 243
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v0, :cond_2d5

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->getKernelTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Sending a ping "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->internalId:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with packetId "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->packetId:S

    const v6, 0xffff

    and-int/2addr v4, v6

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 251
    :cond_2d5
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 252
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mEventCounter:I

    add-int/2addr v0, v14

    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mEventCounter:I

    .line 254
    invoke-virtual {v8, v11, v0, v13}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v8, v0, v3, v4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2ed
    .catch Ljava/io/IOException; {:try_start_23f .. :try_end_2ed} :catch_2ee

    goto :goto_301

    .line 261
    :catch_2ee
    iget v0, v1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2fa

    .line 262
    iget v0, v1, Landroid/os/Message;->arg1:I

    const/16 v1, -0x270e

    invoke-direct {v8, v0, v1, v12}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(III)V

    goto :goto_301

    .line 264
    :cond_2fa
    iget v0, v1, Landroid/os/Message;->arg1:I

    const/16 v1, -0x270f

    invoke-direct {v8, v0, v1, v12}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(III)V

    :cond_301
    :goto_301
    return-void

    :pswitch_data_302
    .packed-switch 0x91001
        :pswitch_1f2
        :pswitch_30
        :pswitch_11
        :pswitch_1f2
    .end packed-switch
.end method

.method public macToString([B)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    const-string v0, ""

    .line 862
    :goto_7
    array-length v1, p1

    if-ge p0, v1, :cond_53

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, p0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-eq p0, v1, :cond_50

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_50
    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_53
    return-object v0
.end method

.method public pingDnsAsync(Ljava/net/InetAddress;II)I
    .registers 8

    .line 410
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const-string v1, "www.google.com"

    .line 411
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    .line 412
    new-instance v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 413
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, p0, p1, v3, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    const p1, 0x91001

    .line 412
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0
.end method

.method public pingDnsAsyncSpecific(Ljava/net/InetAddress;IILjava/lang/String;)I
    .registers 14

    .line 445
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 448
    :try_start_6
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 449
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL is already an IP address. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 450
    :cond_22
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mTarget:Landroid/os/Handler;

    const v3, 0x91005

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v0, v4, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_31} :catch_32

    return v0

    .line 456
    :catch_32
    iget-object v8, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 457
    :try_start_35
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const v2, 0x91004

    if-nez v1, :cond_6d

    .line 458
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v1, :cond_58

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS Result Hashmap - NO HIT!!! SENDING DNS QUERY!  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 459
    :cond_58
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 460
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, p0, p1, v3, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 459
    invoke-virtual {p0, v2, v0, p2, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_ec

    .line 462
    :cond_6d
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 464
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_85

    .line 465
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_85
    if-nez v1, :cond_bb

    .line 468
    sget-boolean v3, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v3, :cond_a7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS Result Hashmap - HIT!!! BUT NO RESULTS   ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 469
    :cond_a7
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 470
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, p0, p1, v3, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 469
    invoke-virtual {p0, v2, v0, p2, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ec

    .line 472
    :cond_bb
    sget-boolean p1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz p1, :cond_db

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DNS Result Hashmap - HIT!!! USE PREVIOUS RESULT   ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->log(Ljava/lang/String;)V

    .line 473
    :cond_db
    sget-object p1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/16 v3, -0x2b67

    const/4 v4, 0x1

    const/16 v7, 0x32

    move-object v1, p0

    move v2, v0

    move-object v5, p4

    .line 474
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendResponse(IIILjava/lang/String;II)V

    .line 477
    :goto_ec
    monitor-exit v8

    return v0

    :catchall_ee
    move-exception p0

    monitor-exit v8
    :try_end_f0
    .catchall {:try_start_35 .. :try_end_f0} :catchall_ee

    throw p0
.end method

.method public pingDnsAsyncSpecificForce(Ljava/net/InetAddress;IILjava/lang/String;)I
    .registers 8

    .line 428
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 429
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 430
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v1, p0, p1, v2, p4}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    const p1, 0x91004

    .line 429
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0
.end method

.method public setCurrentLinkProperties(Landroid/net/LinkProperties;)V
    .registers 5

    if-eqz p1, :cond_1c

    .line 575
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->DBG:Z

    if-eqz v0, :cond_1c

    .line 576
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentLinkProperties: lp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_1c
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;->mLp:Landroid/net/LinkProperties;

    return-void
.end method
