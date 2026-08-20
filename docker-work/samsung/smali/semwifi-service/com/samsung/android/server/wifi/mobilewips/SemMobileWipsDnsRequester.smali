.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;
.super Landroid/os/Handler;
.source "SemMobileWipsDnsRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;,
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;
    }
.end annotation


# static fields
.field private static final EVENT_DNS_BULK_QUERY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MobileWips::dns"


# instance fields
.field private final ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

.field private mDnsHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

.field private mDnsThread:Landroid/os/HandlerThread;

.field private mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    return-void
.end method


# virtual methods
.method public sendDnsQueries(Landroid/net/LinkProperties;[J[B[BLjava/lang/String;Ljava/util/List;I)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "[J[B[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    .line 60
    iget-object v0, v9, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    const/4 v11, 0x0

    if-nez v0, :cond_a

    return v11

    .line 64
    :cond_a
    iget-object v0, v9, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_12

    iget-object v0, v9, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

    if-nez v0, :cond_2d

    .line 65
    :cond_12
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MobileWips::dns"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v9, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    .line 66
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

    iget-object v1, v9, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v9, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;)V

    iput-object v0, v9, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

    .line 71
    :cond_2d
    :try_start_2d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 72
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 74
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v0, v11

    :goto_40
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v16, v0, 0x1

    move/from16 v8, p7

    if-eq v8, v0, :cond_56

    move/from16 v17, v2

    goto :goto_58

    :cond_56
    move/from16 v17, v11

    .line 78
    :goto_58
    new-instance v7, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;

    .line 79
    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v18
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5e} :catch_a6

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v11, v7

    move-object/from16 v7, v18

    move/from16 v8, v17

    :try_start_70
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;Landroid/net/LinkProperties;[J[B[BLjava/lang/String;[BZ)V

    .line 78
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v16

    const/4 v11, 0x0

    goto :goto_40

    :cond_7a
    const-wide/16 v0, 0x0

    .line 82
    array-length v3, v10

    const/4 v4, 0x0

    :goto_7e
    if-ge v4, v3, :cond_86

    aget-wide v5, v10, v4

    add-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    :cond_86
    const-string v3, "dnsMac"

    move-object/from16 v4, p5

    .line 85
    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dnsReq"

    .line 86
    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "timeoutOneQuery"

    .line 87
    invoke-virtual {v13, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v0, 0x3e8

    .line 88
    iput v0, v12, Landroid/os/Message;->what:I

    .line 89
    invoke-virtual {v12, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 90
    iget-object v0, v9, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_a3} :catch_a4

    return v2

    :catch_a4
    const/4 v0, 0x0

    goto :goto_a7

    :catch_a6
    move v0, v11

    :goto_a7
    return v0
.end method

.method public stop()V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;

    if-eqz v0, :cond_9

    const/16 v1, 0x3e8

    .line 102
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;->removeMessages(I)V

    .line 104
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_18

    .line 105
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->mDnsThread:Landroid/os/HandlerThread;

    :cond_18
    return-void
.end method
