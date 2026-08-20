.class public final Lcom/samsung/android/server/wifi/SemApeService;
.super Ljava/lang/Object;
.source "SemApeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeService$Stats;,
        Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;,
        Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;,
        Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;
    }
.end annotation


# static fields
.field private static final APE_APP_TYPE_NONE:I = 0x0

.field private static final APE_APP_TYPE_OTHER:I = 0x10

.field private static final APE_APP_TYPE_VOIP:I = 0x1

.field private static final APE_EXTRA_BANDWIDTH:Ljava/lang/String; = "bandwidth"

.field private static final APE_EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final APE_EXTRA_PACKAGE:Ljava/lang/String; = "package"

.field private static final APE_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final APE_EXTRA_UID:Ljava/lang/String; = "uid"

.field private static final BANDWIDTH_LIMIT_FACTOR:D = 0.7

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x7d0

.field private static final DUMP_TITLE:Ljava/lang/String;

.field private static final ENABLE_APE_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.ENABLE_APE"

.field private static final EVENT_NET_CAPABILITIES:I = 0x5

.field private static final EVENT_PERIODIC:I = 0x1

.field private static final EVENT_PRIMARY_IFACE_CHANGED:I = 0x6

.field private static final EVENT_START:I = 0x0

.field private static final EVENT_STOP:I = 0x2

.field private static final EVENT_USER_SWITCHED:I = 0x7

.field private static final EVENT_VPN_CONNECTED:I = 0x8

.field private static final EVENT_VPN_DISCONNECTED:I = 0x9

.field private static final EVENT_WIFI_CONNECTED:I = 0x3

.field private static final EVENT_WIFI_DISCONNECTED:I = 0x4

.field private static final MAX_SMOOTHED_BW_THRES:I = 0x32

.field private static final MAX_TIME_STORE:J = 0x7530L

.field private static final SET_APE_STATIC_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.SET_APE_STATIC"

.field public static final TAG:Ljava/lang/String; = "SemApeService"

.field private static final TRAFFIC_POLL_INTERVAL:I = 0x3e8

.field private static final VER:Ljava/lang/String; = "0.9.1"

.field private static mVerboseLoggingEnabled:Z = false


# instance fields
.field private final mAllowPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApeHandler:Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mCurrentUserId:I

.field private mDefaultNwCallback:Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfaceHandleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsVpnConnected:Z

.field private mLatestBandwidth:I

.field private mLatestUid:I

.field private mMaxRxLinkSpeed:I

.field private mMaxTxLinkSpeed:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mPrimaryIfaceName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRulesApplied:Z

.field private mStaticBandwidth:I

.field private final mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

.field private mTimeLatestBandwidthCaptured:J

.field private mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

.field private mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiConnected:Z


# direct methods
.method public static synthetic $r8$lambda$pd5bjzHYjpnJXVPlFJc6aB7f1xo(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mApeHandler:Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemApeService;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mIfaceHandleMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mIsVpnConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLatestBandwidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestUid(Lcom/samsung/android/server/wifi/SemApeService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLatestUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mMaxRxLinkSpeed:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mMaxTxLinkSpeed:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mPrimaryIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mRulesApplied:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStaticBandwidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeService;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mTimeLatestBandwidthCaptured:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mCurrentAppType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mCurrentUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mIsVpnConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLatestBandwidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatestUid(Lcom/samsung/android/server/wifi/SemApeService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLatestUid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mMaxRxLinkSpeed:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mMaxTxLinkSpeed:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mRulesApplied:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStaticBandwidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mTimeLatestBandwidthCaptured:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemApeService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mWifiConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyRule(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;II)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemApeService;->applyRule(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeleteRule(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;II)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemApeService;->deleteRule(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemApeService;Landroid/net/Network;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->getIfaceName(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->interfaceChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshAllowList(Lcom/samsung/android/server/wifi/SemApeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService;->refreshAllowList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->removeApeRules(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreplaceRule(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;II)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemApeService;->replaceRule(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateStatsFromSession(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->updateStatsFromSession(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 58
    const-class v0, Lcom/samsung/android/server/wifi/SemApeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (v"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0.9.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") history:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/SemApeService;->DUMP_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 7

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mIfaceHandleMap:Ljava/util/HashMap;

    const-string v0, ""

    .line 99
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mPrimaryIfaceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mWifiConnected:Z

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mIsVpnConnected:Z

    .line 104
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mCurrentAppType:I

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAllowPackageList:Ljava/util/List;

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAllowUidList:Ljava/util/List;

    .line 122
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mCurrentUserId:I

    .line 126
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    .line 128
    new-instance v2, Lcom/samsung/android/server/wifi/SemApeService$Stats;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/SemApeService$Stats;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 130
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStaticBandwidth:I

    .line 1352
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeService$1;-><init>(Lcom/samsung/android/server/wifi/SemApeService;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1454
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeService$2;-><init>(Lcom/samsung/android/server/wifi/SemApeService;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 187
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mContext:Landroid/content/Context;

    .line 188
    new-instance p1, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;-><init>(Lcom/samsung/android/server/wifi/SemApeService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mApeHandler:Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService;->registerBroadcastReceivers()V

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService;->registerNetworkCallbacks()V

    .line 191
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/SemApeService;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    const-string p0, "com.samsung.android.smartmirroring"

    .line 193
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "com.google.android.gms"

    .line 194
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "com.samsung.android.galaxycontinuity"

    .line 195
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "com.microsoft.appmanager"

    .line 196
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "SemApeService Initialized: ver=0.9.1"

    .line 198
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private applyRule(Ljava/lang/String;II)I
    .registers 9

    .line 472
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService;->getNMS()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8d

    if-eqz p1, :cond_8d

    const/4 v0, 0x1

    if-lt p2, v0, :cond_8d

    if-gez p3, :cond_10

    goto/16 :goto_8d

    .line 476
    :cond_10
    :try_start_10
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemApeService;->prioritizeAllowListApps(Z)V

    .line 477
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0, p3}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I

    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_84

    .line 478
    :try_start_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prioritizeApp: UID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_30

    const-string v4, ""

    goto :goto_32

    :cond_30
    const-string v4, "NOT "

    :goto_32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "added to the BPF map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 480
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    if-eqz v2, :cond_47

    return v1

    .line 484
    :cond_47
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0, p1, p2}, Landroid/os/INetworkManagementService;->addApeRule(ZLjava/lang/String;I)I

    move-result v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_4d} :catch_81

    if-nez v1, :cond_6f

    .line 486
    :try_start_4f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addApeRule: rule is added for ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") bandwidth="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    goto :goto_8d

    :cond_6f
    const-string p1, "addApeRule: TC rule is NOT applied and so deleting the uid from the BPF map"

    .line 491
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 492
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 493
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->prioritizeAllowListApps(Z)V

    .line 494
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {p0, p1, p3}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_80} :catch_84

    goto :goto_8d

    :catch_81
    move-exception p0

    move v1, v2

    goto :goto_85

    :catch_84
    move-exception p0

    :goto_85
    const-string p1, "Exception while calling addApeRule"

    .line 497
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 498
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    :cond_8d
    :goto_8d
    return v1
.end method

.method private deleteRule(Ljava/lang/String;II)I
    .registers 9

    const/4 v0, -0x1

    if-eqz p1, :cond_83

    .line 540
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService;->getNMS()Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_83

    :cond_b
    const-string v1, ""

    const-string v2, "NOT "

    const/4 v3, 0x0

    if-lez p2, :cond_46

    .line 545
    :try_start_12
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v3, p1, p2}, Landroid/os/INetworkManagementService;->addApeRule(ZLjava/lang/String;I)I

    move-result v0

    .line 546
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addApeRule: rule is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_26

    move-object p2, v1

    goto :goto_27

    :cond_26
    move-object p2, v2

    :goto_27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "deleted for UID="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 548
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_3c} :catch_3d

    goto :goto_46

    :catch_3d
    move-exception p1

    const-string p2, "Exception while calling addApeRule"

    .line 550
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 551
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    if-lez p3, :cond_83

    .line 557
    :try_start_48
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemApeService;->prioritizeAllowListApps(Z)V

    .line 558
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {p1, v3, p3}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I

    move-result v0

    .line 559
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "prioritizeApp: UID="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_66

    goto :goto_67

    :cond_66
    move-object v1, v2

    :goto_67
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "deleted from the BPF map"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 560
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_79} :catch_7a

    goto :goto_83

    :catch_7a
    move-exception p0

    const-string p1, "Exception while calling prioritizeApp"

    .line 563
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 564
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    :cond_83
    :goto_83
    return v0
.end method

.method private getIfaceName(Landroid/net/Network;)Ljava/lang/String;
    .registers 2

    .line 414
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 416
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const-string p0, ""

    :goto_11
    return-object p0
.end method

.method private getNMS()Z
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_18

    const-string v0, "network_management"

    .line 176
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "getNMS: IBinder returned is null"

    .line 178
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    goto :goto_18

    .line 180
    :cond_12
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    .line 183
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p0

    :goto_6
    if-eqz v1, :cond_12

    .line 162
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_d

    return-object v0

    .line 165
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_6

    .line 168
    :cond_12
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 169
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 171
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private interfaceChanged(Ljava/lang/String;)V
    .registers 6

    .line 430
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mRulesApplied:Z

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    if-eqz v0, :cond_b4

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService;->getNMS()Z

    move-result v0

    if-eqz v0, :cond_b4

    if-eqz p1, :cond_b4

    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mPrimaryIfaceName:Ljava/lang/String;

    .line 432
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 435
    :try_start_26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mPrimaryIfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/os/INetworkManagementService;->addApeRule(ZLjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "Either rule is NOT applied or the rule is NOT deleted properly"

    .line 436
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 440
    :cond_3e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$minitVariables(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 441
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->addApeRule(ZLjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_83

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addApeRule: rule is NOT applied while changing the interface ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), so deleting the uid from priority map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 445
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemApeService;->prioritizeAllowListApps(Z)V

    .line 447
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-interface {v0, v3, v1}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I

    .line 448
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemApeService;->mRulesApplied:Z

    goto :goto_b4

    .line 450
    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addApeRule: rule is changed with new interface ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") bandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 452
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_aa} :catch_ab

    goto :goto_b4

    :catch_ab
    move-exception v0

    const-string v1, "Exception while calling addApeRule"

    .line 455
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 456
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 459
    :cond_b4
    :goto_b4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mPrimaryIfaceName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V
    .registers 3

    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mApeHandler:Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static logd(Ljava/lang/String;)V
    .registers 2

    .line 141
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2

    .line 133
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/Throwable;)V
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static logi(Ljava/lang/String;)V
    .registers 2

    .line 137
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static logv(Ljava/lang/String;)V
    .registers 2

    .line 145
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemApeService;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_9

    .line 146
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private prioritizeAllowListApps(Z)V
    .registers 7

    .line 1415
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAllowUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1417
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I

    move-result v2

    .line 1418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllowList: prioritizeApp: UID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_33

    const-string v1, ""

    goto :goto_35

    :cond_33
    const-string v1, "NOT "

    :goto_35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3d

    const-string v1, "added to "

    goto :goto_3f

    :cond_3d
    const-string v1, "deleted from "

    :goto_3f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "the BPF map"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1419
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 1420
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_51} :catch_52

    goto :goto_6

    :catch_52
    move-exception v1

    const-string v2, "Exception while calling addApeRule"

    .line 1422
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1423
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5c
    return-void
.end method

.method private recordHistory(Ljava/lang/String;)V
    .registers 6

    .line 1467
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1469
    :try_start_19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1470
    :goto_2d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_3d

    .line 1471
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_2d

    .line 1473
    :cond_3d
    monitor-exit v1

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method private refreshAllowList()V
    .registers 7

    .line 1398
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAllowUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1400
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1401
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAllowPackageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v3, 0x400080

    .line 1403
    :try_start_20
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1405
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAllowUidList:Ljava/util/List;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v4, p0, Lcom/samsung/android/server/wifi/SemApeService;->mCurrentUserId:I

    const v5, 0x186a0

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_36} :catch_37

    goto :goto_11

    :catch_37
    move-exception v2

    .line 1407
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    goto :goto_11

    .line 1411
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total allowed UIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAllowUidList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private registerBroadcastReceivers()V
    .registers 3

    .line 1345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.wifi.ENABLE_APE"

    .line 1346
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.wifi.SET_APE_STATIC"

    .line 1347
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 1348
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1349
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerNetworkCallbacks()V
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 208
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;-><init>(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mDefaultNwCallback:Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;

    .line 210
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 211
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 212
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService;->mDefaultNwCallback:Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;

    invoke-virtual {v2, v0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v3, 0x4

    .line 215
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0xf

    .line 216
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 214
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private removeApeRules(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V
    .registers 4

    .line 423
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mRulesApplied:Z

    if-eqz v0, :cond_18

    .line 424
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mPrimaryIfaceName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemApeService;->deleteRule(Ljava/lang/String;II)I

    const/4 p1, 0x0

    .line 425
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mRulesApplied:Z

    :cond_18
    return-void
.end method

.method private replaceRule(Ljava/lang/String;II)I
    .registers 6

    .line 513
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService;->getNMS()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4c

    if-eqz p1, :cond_4c

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4c

    if-ge p3, v0, :cond_f

    goto :goto_4c

    .line 517
    :cond_f
    :try_start_f
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mRulesApplied:Z

    if-eqz v0, :cond_4c

    .line 518
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->replaceApeRule(Ljava/lang/String;II)I

    move-result v1

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "replaceApeRule="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") new bandwidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 520
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 521
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_42} :catch_43

    goto :goto_4c

    :catch_43
    move-exception p0

    const-string p1, "Exception while calling replaceRule"

    .line 524
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 525
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    :cond_4c
    :goto_4c
    return v1
.end method

.method private updateStatsFromSession(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V
    .registers 8

    .line 1534
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mCurrentAppType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/16 v2, 0x10

    if-eq v0, v2, :cond_a

    goto :goto_45

    .line 1542
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmTotalSecondsOfApeEnabled(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    .line 1543
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmTotalSecondsOfBackgroundLimited(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    .line 1544
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    goto :goto_45

    .line 1536
    :cond_28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmTotalSecondsOfApeEnabled(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    .line 1537
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmTotalSecondsOfBackgroundLimited(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    .line 1538
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    :goto_45
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 9

    .line 1482
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1483
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1484
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_88

    .line 1485
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeService;->DUMP_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1486
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "TotalRunningSeconds=%d / APE Running Seconds - VoIP(%d): total=%d, limited=%d, Non VoIP(%d): total=%d, limited=%d"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 1487
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemApeService$Stats;->getTotalRunningSeconds()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget v5, v5, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    .line 1488
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget v5, v5, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    .line 1489
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v4

    .line 1486
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_71
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1491
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_71

    .line 1493
    :cond_81
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1494
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_88
    move-exception p0

    .line 1484
    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p0
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    .line 1477
    :goto_5
    sput-boolean p0, Lcom/samsung/android/server/wifi/SemApeService;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getStats()Lcom/samsung/android/server/wifi/SemApeService$Stats;
    .registers 2

    .line 1553
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Stats;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeService$Stats;-><init>(Lcom/samsung/android/server/wifi/SemApeService$Stats;)V

    return-object v0
.end method

.method public registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 3

    const-string v0, "SemClientModeManager registered"

    .line 202
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 203
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemApeService;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    return-void
.end method

.method public resetStats()V
    .registers 1

    .line 1557
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeService$Stats;->reset()V

    return-void
.end method

.method storeBgBandwidth(II)V
    .registers 5

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mTimeLatestBandwidthCaptured:J

    .line 575
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLatestBandwidth:I

    .line 576
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLatestUid:I

    return-void
.end method
