.class Lcom/samsung/android/server/wifi/wcm/DnsThread;
.super Ljava/lang/Thread;
.source "DnsThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;,
        Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;,
        Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;,
        Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final DNS_DEFAULT_TIMEOUT_MS:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.DnsThread"


# instance fields
.field private final DNS_TIMEOUT:I

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private mAlreadyFinished:Z

.field private final mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

.field private mDnsThreadCallBack:Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

.field private final mForce:Z

.field private mForcedCheckAddress:Ljava/net/InetAddress;

.field private mForcedCheckResult:I

.field private mForcedCheckRtt:I

.field private final mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetwork:Landroid/net/Network;

.field private mTimeout:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlreadyFinished(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallBackHandler(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsThreadCallBack:Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/LinkProperties;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/Network;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAlreadyFinished(Lcom/samsung/android/server/wifi/wcm/DnsThread;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmForcedCheckAddress(Lcom/samsung/android/server/wifi/wcm/DnsThread;Ljava/net/InetAddress;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckAddress:Ljava/net/InetAddress;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmForcedCheckResult(Lcom/samsung/android/server/wifi/wcm/DnsThread;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckResult:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmForcedCheckRtt(Lcom/samsung/android/server/wifi/wcm/DnsThread;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckRtt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 61
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Landroid/os/Handler;JLandroid/content/Context;)V
    .registers 10

    .line 84
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->latch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DNS_TIMEOUT:I

    const-wide/16 v1, 0xbb8

    .line 67
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mTimeout:J

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    const/4 v2, 0x3

    .line 73
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckResult:I

    .line 74
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckRtt:I

    .line 75
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckAddress:Ljava/net/InetAddress;

    .line 80
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mNetwork:Landroid/net/Network;

    .line 85
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;-><init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    .line 86
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    cmp-long p3, p4, v0

    if-ltz p3, :cond_32

    .line 87
    iput-wide p4, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mTimeout:J

    .line 88
    :cond_32
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForce:Z

    .line 89
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mUrl:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const-string v0, "]"

    .line 104
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsThreadCallBack:Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    const/16 v2, 0x600

    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;->notifyAnalyticsDisconnectReason(S)V

    .line 105
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForce:Z

    const-string v2, "DNS_CHECK_TIMEOUT ["

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/16 v5, 0xa

    const/4 v6, 0x0

    const-string v7, "WifiConnectivityMonitor.DnsThread"

    if-eqz v1, :cond_da

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dnsPingerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    :try_start_20
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;-><init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Landroid/os/Looper;Landroid/os/Handler;J)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 110
    iget-object v8, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mUrl:Ljava/lang/String;

    iget-wide v9, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mTimeout:J

    invoke-virtual {v1, v8, v9, v10}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->sendDnsPing(Ljava/lang/String;J)V

    .line 111
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->latch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mTimeout:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 113
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    if-eqz v1, :cond_65

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-F] - latch timeout"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_65
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7e

    .line 117
    :cond_6f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckResult:I

    iget v9, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckRtt:I

    iget-object v10, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mForcedCheckAddress:Ljava/net/InetAddress;

    .line 118
    invoke-virtual {v1, v5, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 117
    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_7e} :catch_8e
    .catchall {:try_start_20 .. :try_end_7e} :catchall_ca

    .line 124
    :goto_7e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    if-eqz v1, :cond_87

    .line 125
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->-$$Nest$mfinish(Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;)V

    .line 126
    iput-object v6, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 128
    :cond_87
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    return-void

    :catch_8e
    move-exception v1

    .line 121
    :try_start_8f
    sget-boolean v8, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    if-eqz v8, :cond_b1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-F] "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_b1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_ba
    .catchall {:try_start_8f .. :try_end_ba} :catchall_ca

    .line 124
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    if-eqz v1, :cond_c3

    .line 125
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->-$$Nest$mfinish(Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;)V

    .line 126
    iput-object v6, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 128
    :cond_c3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    return-void

    .line 124
    :catchall_ca
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    if-eqz v1, :cond_d3

    .line 125
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->-$$Nest$mfinish(Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;)V

    .line 126
    iput-object v6, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsPingerHandler:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;

    .line 128
    :cond_d3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    return-void

    .line 135
    :cond_da
    new-instance v1, Lcom/samsung/android/server/wifi/SemStopwatch;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemStopwatch;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemStopwatch;->start()Lcom/samsung/android/server/wifi/SemStopwatch;

    move-result-object v1

    const/4 v8, 0x1

    .line 139
    :try_start_e4
    iget-object v9, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 140
    sget-boolean v9, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    if-eqz v9, :cond_10a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wait mInetAddress result ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_10a
    iget-object v9, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->latch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v10, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mTimeout:J

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10, v11, v12}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 142
    sget-boolean v10, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    if-eqz v10, :cond_12c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "latch result : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12c
    if-nez v9, :cond_15a

    .line 144
    sget-boolean v9, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    if-eqz v9, :cond_14b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_14b
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    .line 146
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v4, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemStopwatch;->stop()J
    :try_end_159
    .catch Ljava/lang/InterruptedException; {:try_start_e4 .. :try_end_159} :catch_19c

    return-void

    .line 159
    :cond_15a
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/DnsThread;->DBG:Z

    if-eqz v2, :cond_179

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send DNS CHECK Result ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_179
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_196

    .line 161
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    .line 162
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->getType()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemStopwatch;->stop()J

    move-result-wide v3

    long-to-int v1, v3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mInetAddressThread:Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->getResultIp()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {v0, v5, v2, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 161
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_19b

    :cond_196
    const-string p0, "There is no callback handler"

    .line 164
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19b
    return-void

    .line 151
    :catch_19c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InterruptedException ["

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    if-eqz v0, :cond_1bc

    return-void

    .line 153
    :cond_1bc
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mAlreadyFinished:Z

    .line 154
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mCallBackHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5, v4, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemStopwatch;->stop()J

    return-void
.end method

.method public setCurrentNetwork(Landroid/net/Network;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mDnsThreadCallBack:Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    return-void
.end method

.method public updateLinkProperties(Landroid/net/LinkProperties;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method
