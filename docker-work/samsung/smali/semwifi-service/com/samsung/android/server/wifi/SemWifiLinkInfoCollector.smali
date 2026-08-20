.class public final Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;
.super Ljava/lang/Object;
.source "SemWifiLinkInfoCollector.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;
    }
.end annotation


# static fields
.field private static final BIG_DATA_UPDATED:I = 0x2

.field private static final CHECK_DURATION:I = 0x2710

.field private static final CONNECTION_STATE_CHANGED:I = 0x1

.field private static final KEY_AWARE_CONNECTION:I = 0x3

.field private static final KEY_AWARE_DISCONNECTION:I = 0x4

.field private static final KEY_DONGLE_ROAM_EVENT:I = 0xb

.field private static final KEY_MHS_DISABLED:I = 0x8

.field private static final KEY_MHS_ENABLED:I = 0x7

.field private static final KEY_OPTIMIZER_ACTIVATED:I = 0x5

.field private static final KEY_OPTIMIZER_DEACTIVATED:I = 0x6

.field private static final KEY_P2P_CONNECTION:I = 0x1

.field private static final KEY_P2P_DISCONNECTION:I = 0x2

.field private static final KEY_TWT_SESSION_CREATED:I = 0x9

.field private static final KEY_TWT_SESSION_REMOVED:I = 0xa

.field private static final STATS_INDEX_CCA_TIMES:I = 0x7

.field private static final STATS_INDEX_LINK_SPEED:I = 0x2

.field private static final STATS_INDEX_RADIO_ON_TIMES:I = 0x8

.field private static final STATS_INDEX_RSSI:I = 0x1

.field private static final STATS_INDEX_TIMESTAMP:I = 0x0

.field private static final STATS_INDEX_TX_BAD:I = 0x5

.field private static final STATS_INDEX_TX_RETRY:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SemWifiLinkInfoCollector"

.field private static final WIFI_OPTIMIZER_MODE_ENABLE:Ljava/lang/String; = "Enable"

.field private static final WIFI_OPTIMIZER_MODE_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.LATENCYMODE"


# instance fields
.field private mAvgLinkSpeed:I

.field private mCcaBusyRatio:Ljava/lang/String;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectionTime:J

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDisconnectionTime:J

.field private final mHandler:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;

.field private mIsPrivateDnsActivated:I

.field private mIsValidNetwork:I

.field private mIsVpnConnected:I

.field mOperationHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRssiCur:I

.field private mRssiMax:I

.field private mRssiMin:I

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTotalTxBad:I

.field private mTotalTxRetries:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;


# direct methods
.method public static synthetic $r8$lambda$-Q3EdNg-QOkZ5I0HyahR-L_0f6o(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7sWJY-GgYle_GKVM8zx5rNVhgSk(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->lambda$new$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Frno5m2uglzBxyl8gnEZ8ZFRxRo(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pMIApJuVWtZ0fyiVhnR1Ch7_P_Y(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;ZILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->lambda$new$2(ZILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectionTime(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectionTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisconnectionTime(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mDisconnectionTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$msendInternalMessage(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;IIILjava/lang/Object;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .registers 9

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 62
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsPrivateDnsActivated:I

    .line 63
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsVpnConnected:I

    .line 64
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsValidNetwork:I

    const-wide/16 v2, 0x0

    .line 65
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectionTime:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mDisconnectionTime:J

    .line 67
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mAvgLinkSpeed:I

    .line 68
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiCur:I

    .line 69
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    .line 70
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxBad:I

    .line 72
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxRetries:I

    const-string v0, "0.0"

    .line 73
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mCcaBusyRatio:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    .line 106
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mHandler:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;

    .line 107
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 108
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 109
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 117
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V

    .line 126
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerP2pStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    .line 134
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerWifiAwareStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    .line 142
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 143
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiUsabilityStatsMonitor()Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    const-string p2, "connectivity"

    .line 144
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 146
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.samsung.android.wifi.LATENCYMODE"

    .line 147
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private checkRecentRunningHistory(IILjava/lang/Long;)I
    .registers 9

    const-wide/16 v0, 0x0

    .line 223
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 224
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 225
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    goto :goto_20

    :cond_1f
    move-object p1, v2

    .line 227
    :goto_20
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 228
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Long;

    .line 231
    :cond_39
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, v3, v0

    if-lez p0, :cond_5e

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-wide/16 v3, 0x2710

    sub-long/2addr p2, v3

    cmp-long p0, v0, p2

    if-gtz p0, :cond_5c

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-lez p0, :cond_5e

    :cond_5c
    const/4 p0, 0x1

    return p0

    :cond_5e
    const/4 p0, 0x0

    return p0
.end method

.method private convertHexStringToMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 464
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_9
    const/4 v1, 0x3

    if-lt v0, v1, :cond_22

    add-int/lit8 v2, v0, -0x2

    .line 466
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v0, v1, :cond_1a

    const-string v1, ":"

    goto :goto_1c

    :cond_1a
    const-string v1, ""

    :goto_1c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x2

    goto :goto_9

    .line 468
    :cond_22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getInformationElements()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    .line 473
    :goto_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    move-result-object p0

    if-eqz v0, :cond_35

    .line 476
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_35

    .line 477
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 478
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 479
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v1

    :cond_35
    return-object v1
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 111
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_f

    .line 113
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_f
    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0xd

    if-ne p1, v3, :cond_c

    const/4 p1, 0x7

    .line 120
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    goto :goto_15

    :cond_c
    const/16 v3, 0xb

    if-ne p1, v3, :cond_15

    const/16 p1, 0x8

    .line 122
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    :cond_15
    :goto_15
    return-void
.end method

.method private synthetic lambda$new$2(ZILjava/lang/String;)V
    .registers 5

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x2

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    .line 128
    invoke-direct {p0, v0, p1, p3, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    goto :goto_d

    .line 130
    :cond_a
    invoke-direct {p0, v0, v0, p3, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    :goto_d
    return-void
.end method

.method private synthetic lambda$new$3(Z)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_a

    const/4 p1, 0x3

    .line 136
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    goto :goto_e

    :cond_a
    const/4 p1, 0x4

    .line 138
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    :goto_e
    return-void
.end method

.method private sendInternalMessage(IIILjava/lang/Object;)V
    .registers 5

    .line 218
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mHandler:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public dongleRoamEvent()V
    .registers 5

    const/4 v0, 0x2

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 187
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public getApChipsetOuiFromVsie()Ljava/lang/String;
    .registers 26

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getInformationElements()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_af

    .line 489
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_10

    goto/16 :goto_af

    .line 495
    :cond_10
    new-instance v2, Ljava/util/HashSet;

    const-string v3, "00:17:F2"

    const-string v4, "00:03:93"

    const-string v5, "00:0B:86"

    const-string v6, "F8:32:E4"

    const-string v7, "00:04:0E"

    const-string v8, "00:40:96"

    const-string v9, "00:18:0A"

    const-string v10, "88:36:6C"

    const-string v11, "00:90:4C"

    const-string v12, "00:09:0F"

    const-string v13, "F4:F5:E8"

    const-string v14, "00:A0:57"

    const-string v15, "00:19:3B"

    const-string v16, "00:50:F2"

    const-string v17, "5C:5B:35"

    const-string v18, "00:14:6C"

    const-string v19, "00:13:92"

    const-string v20, "00:1D:2E"

    const-string v21, "00:1F:41"

    const-string v22, "C0:4A:00"

    const-string v23, "8C:BE:BE"

    const-string v24, "50:6F:9A"

    filled-new-array/range {v3 .. v24}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 517
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4d
    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult$InformationElement;

    .line 518
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v4

    const/16 v5, 0xdd

    if-ne v4, v5, :cond_93

    .line 521
    :try_start_61
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 522
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_83
    .catch Ljava/nio/BufferUnderflowException; {:try_start_61 .. :try_end_83} :catch_96

    const/4 v6, 0x7

    if-ne v5, v6, :cond_93

    move-object/from16 v5, p0

    .line 524
    :try_start_88
    invoke-direct {v5, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->convertHexStringToMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 525
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_90
    .catch Ljava/nio/BufferUnderflowException; {:try_start_88 .. :try_end_90} :catch_98

    if-nez v4, :cond_4d

    return-object v3

    :cond_93
    move-object/from16 v5, p0

    goto :goto_4d

    :catch_96
    move-object/from16 v5, p0

    .line 530
    :catch_98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BufferUnderflowException ie:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemWifiLinkInfoCollector"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_af
    :goto_af
    return-object v1
.end method

.method public getAvgLinkSpeed()I
    .registers 1

    .line 436
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mAvgLinkSpeed:I

    return p0
.end method

.method public getBssidOui()Ljava/lang/String;
    .registers 3

    .line 330
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-eqz p0, :cond_1c

    .line 331
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 332
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public getCcaBusyRatio()Ljava/lang/String;
    .registers 1

    .line 460
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mCcaBusyRatio:Ljava/lang/String;

    return-object p0
.end method

.method getChipsetVendorName()Ljava/lang/String;
    .registers 1

    .line 267
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedTime()I
    .registers 8

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 350
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-wide/16 v3, 0x2710

    if-eqz v2, :cond_12

    .line 351
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectionTime:J

    sub-long/2addr v0, v5

    goto :goto_20

    .line 352
    :cond_12
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mDisconnectionTime:J

    sub-long/2addr v0, v5

    cmp-long v0, v0, v3

    if-gez v0, :cond_1e

    .line 353
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectionTime:J

    sub-long v0, v5, v0

    goto :goto_20

    :cond_1e
    const-wide/16 v0, 0x0

    :goto_20
    const-wide/16 v5, 0x1388

    cmp-long p0, v0, v5

    if-gez p0, :cond_28

    const/4 p0, 0x0

    return p0

    :cond_28
    cmp-long p0, v0, v3

    if-gez p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    const-wide/16 v2, 0x7530

    cmp-long p0, v0, v2

    if-gez p0, :cond_36

    const/4 p0, 0x2

    return p0

    :cond_36
    const-wide/32 v2, 0xea60

    cmp-long p0, v0, v2

    if-gez p0, :cond_3f

    const/4 p0, 0x3

    return p0

    :cond_3f
    const-wide/32 v2, 0x493e0

    cmp-long p0, v0, v2

    if-gez p0, :cond_48

    const/4 p0, 0x4

    return p0

    :cond_48
    const/4 p0, 0x5

    return p0
.end method

.method public getNumOfObss()I
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 317
    :cond_6
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 320
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    move-result-object p0

    .line 321
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 322
    iget v2, v2, Landroid/net/wifi/ScanResult;->frequency:I

    if-ne v2, v0, :cond_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_27
    return v1
.end method

.method public getOperatingFrequency()I
    .registers 1

    .line 343
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getRssiCur()I
    .registers 1

    .line 440
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiCur:I

    return p0
.end method

.method public getRssiMax()I
    .registers 1

    .line 444
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    return p0
.end method

.method public getRssiMin()I
    .registers 1

    .line 448
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    return p0
.end method

.method public getTxBad()I
    .registers 1

    .line 452
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxBad:I

    return p0
.end method

.method public getTxRetries()I
    .registers 1

    .line 456
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxRetries:I

    return p0
.end method

.method public getWifiInfo()V
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method public getWifiStandard()I
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method hasTwtSession(Ljava/lang/Long;)I
    .registers 4

    const/16 v0, 0x9

    const/16 v1, 0xa

    .line 255
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    move-result p0

    return p0
.end method

.method isAwareConnected(Ljava/lang/Long;)I
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 242
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    move-result p0

    return p0
.end method

.method isLowLatencyModeActivated(Ljava/lang/Long;)I
    .registers 4

    const/4 v0, 0x5

    const/4 v1, 0x6

    .line 246
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    move-result p0

    return p0
.end method

.method isMhsEnabled(Ljava/lang/Long;)I
    .registers 4

    const/4 v0, 0x7

    const/16 v1, 0x8

    .line 251
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    move-result p0

    return p0
.end method

.method isP2pConnected(Ljava/lang/Long;)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 238
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public isPrivateDnsActivated()I
    .registers 1

    .line 298
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsPrivateDnsActivated:I

    return p0
.end method

.method isRoamed(Ljava/lang/Long;)I
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/16 v0, 0xb

    .line 261
    invoke-direct {p0, v0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public isValidNetwork()I
    .registers 1

    .line 306
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsValidNetwork:I

    return p0
.end method

.method public isVpnConnected()I
    .registers 1

    .line 302
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsVpnConnected:I

    return p0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 5

    if-eqz p1, :cond_10

    .line 171
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mHandler:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;

    const/4 v0, 0x1

    .line 172
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    const/4 v1, 0x0

    .line 171
    invoke-static {p0, v0, p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 174
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ifaceName is null, isConnected "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiLinkInfoCollector"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void
.end method

.method public updateLinkStats(J)V
    .registers 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 371
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mAvgLinkSpeed:I

    .line 372
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiCur:I

    .line 373
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    .line 374
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    const/4 v2, -0x1

    .line 375
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxBad:I

    .line 376
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxRetries:I

    const-string v2, "0.0"

    .line 377
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mCcaBusyRatio:Ljava/lang/String;

    .line 379
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->getWifiUsabilityStatsEntry(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "line.separator"

    .line 380
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 381
    array-length v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2b

    return-void

    :cond_2b
    const/4 v3, 0x1

    .line 384
    aget-object v4, v2, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 385
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v8, p1, v6

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-lez v8, :cond_43

    return-void

    .line 389
    :cond_43
    aget-object v8, v4, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 390
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiCur:I

    .line 391
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    .line 392
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    const/4 v8, 0x2

    .line 394
    aget-object v9, v4, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 395
    iput v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mAvgLinkSpeed:I

    const/4 v12, 0x5

    .line 397
    aget-object v13, v4, v12

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const/4 v15, 0x6

    .line 398
    aget-object v16, v4, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const/16 v18, 0x7

    .line 399
    aget-object v19, v4, v18

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    const/16 v21, 0x8

    .line 400
    aget-object v4, v4, v21

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move v4, v8

    .line 403
    :goto_77
    array-length v15, v2

    if-ge v4, v15, :cond_ac

    .line 404
    aget-object v15, v2, v4

    invoke-virtual {v15, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 405
    aget-object v24, v15, v1

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    sub-long v24, v6, v24

    cmp-long v24, v24, v10

    if-lez v24, :cond_8e

    sub-int/2addr v4, v3

    goto :goto_ad

    .line 409
    :cond_8e
    aget-object v24, v15, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 410
    iget v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    if-le v10, v11, :cond_9a

    iput v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    .line 411
    :cond_9a
    iget v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    if-ge v10, v11, :cond_a0

    iput v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    .line 412
    :cond_a0
    aget-object v10, v15, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v10, 0x2710

    goto :goto_77

    :cond_ac
    move v4, v1

    :goto_ad
    if-le v4, v3, :cond_10c

    .line 416
    aget-object v2, v2, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 417
    div-int/2addr v9, v4

    iput v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mAvgLinkSpeed:I

    .line 418
    aget-object v4, v2, v12

    .line 419
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v13, v4

    long-to-int v4, v13

    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxBad:I

    const/4 v4, 0x6

    .line 420
    aget-object v4, v2, v4

    .line 421
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long v4, v16, v4

    long-to-int v4, v4

    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxRetries:I

    .line 423
    aget-object v4, v2, v18

    .line 424
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long v4, v19, v4

    .line 425
    aget-object v2, v2, v21

    .line 426
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v22, v6

    .line 427
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->isRoamed(Ljava/lang/Long;)I

    move-result v2

    if-ne v2, v3, :cond_ed

    const-string v1, "-1.0"

    .line 428
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mCcaBusyRatio:Ljava/lang/String;

    goto :goto_10c

    :cond_ed
    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_10c

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-lez v2, :cond_10c

    new-array v2, v3, [Ljava/lang/Object;

    long-to-double v3, v4

    long-to-double v5, v6

    div-double/2addr v3, v5

    .line 430
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.1f"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mCcaBusyRatio:Ljava/lang/String;

    :cond_10c
    :goto_10c
    return-void
.end method

.method public updateNetworkCapabilities()V
    .registers 8

    .line 272
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    .line 273
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsPrivateDnsActivated:I

    .line 274
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsVpnConnected:I

    .line 275
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsValidNetwork:I

    .line 276
    array-length v2, v0

    :goto_e
    if-ge v1, v2, :cond_44

    aget-object v3, v0, v1

    .line 277
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-nez v4, :cond_1b

    goto :goto_41

    :cond_1b
    const/4 v5, 0x1

    .line 282
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 283
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 285
    invoke-virtual {v3}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result v3

    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsPrivateDnsActivated:I

    :cond_30
    const/16 v3, 0x10

    .line 288
    invoke-virtual {v4, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsValidNetwork:I

    :cond_38
    const/4 v3, 0x4

    .line 291
    invoke-virtual {v4, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 292
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsVpnConnected:I

    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_44
    return-void
.end method

.method public updateTwtState(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lez p1, :cond_b

    const/16 p1, 0x9

    .line 180
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    goto :goto_10

    :cond_b
    const/16 p1, 0xa

    .line 182
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    :goto_10
    return-void
.end method
