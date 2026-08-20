.class public Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
.super Ljava/lang/Object;
.source "SemWifiTrafficPoller.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;,
        Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;
    }
.end annotation


# static fields
.field private static final ADD_FOREGROUND_APPLIST:I = 0x4

.field private static final AFFINITY_AUTO:I = 0x0

.field private static final AFFINITY_PRIMARY:I = 0x1

.field private static final AFFINITY_SECONDARY:I = 0x2

.field private static final AWARE_CONNECTED:I = 0x4

.field private static final AWARE_INTERFACE_NAME:Ljava/lang/String; = "aware_data0"

.field private static final CSTATE_ACQUIRED:I = 0x1

.field private static final CSTATE_HINT:I = 0xfaa

.field private static final CSTATE_RELEASED:I = 0x0

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xc8

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiTrafficPoller history:"

.field private static final L1SS_ACQUIRED:I = 0x1

.field private static final L1SS_HINT:I = 0xfab

.field private static final L1SS_RELEASED:I = 0x0

.field private static final P2P_CONNECTED:I = 0x2

.field private static final POLLING_INTERVAL_1000MS:I = 0x3e8

.field private static final POLLING_INTERVAL_3000MS:I = 0xbb8

.field private static final POLLING_INTERVAL_500MS:I = 0x1f4

.field private static final POLLING_INTERVAL_6000MS:I = 0x1770

.field private static final REMOVE_FOREGROUND_APPLIST:I = 0x5

.field private static final STA_CONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiTrafficPoller"

.field static final TAG_CSTATE:Ljava/lang/String; = "WIFI_CSTATE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TAG_L1SS:Ljava/lang/String; = "WIFI_L1SS"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TRAFFIC_STATS_POLL:I = 0x1

.field private static final TRAFFIC_STATS_REGISTER_CALLBACK:I = 0x2

.field private static final TRAFFIC_STATS_UNREGISTER_CALLBACK:I = 0x3


# instance fields
.field private final isFeatureEnabled:Z

.field private final isSupportAffinityBooster:Z

.field private final isSupportCpuCstateControl:Z

.field private final isSupportL1ssControl:Z

.field final m1000msCallbacks:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;",
            ">;"
        }
    .end annotation
.end field

.field final m3000msCallbacks:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;",
            ">;"
        }
    .end annotation
.end field

.field final m500msCallbacks:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;",
            ">;"
        }
    .end annotation
.end field

.field final m6000msCallbacks:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mAffinityBoosterThreshold:I

.field private final mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

.field private mConnected:I

.field private final mConnectedStaIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

.field private final mCstateDisableThreshold:I

.field private mCurrentAffinityMode:I

.field private mCurrentCstateModeValue:I

.field private mCurrentL1ssModeValue:I

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mForegroundPkgList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

.field private final mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private final mL1ssDisableThreshold:I

.field private mLpm:Lcom/samsung/android/os/SemDvfsManager;

.field private final mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPollingInterval:I

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mRxBytes:J

.field private mStaPrimaryIfaceName:Ljava/lang/String;

.field private final mStaTrafficStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficPollTime:I

.field private mTxBytes:J

.field private mVerboseLoggingEnabled:Z

.field private mWifiAwareIfaceNames:[Ljava/lang/String;

.field private final mWifiAwareTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiP2pIfaceName:Ljava/lang/String;

.field private final mWifiP2pTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private final mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;


# direct methods
.method public static synthetic $r8$lambda$AYXzAQRfn5hSjMoGcXzGvzabCAc(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;ZILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->lambda$new$0(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OM_MhMk8FfTOl9E-6liiKb0sZqc(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->lambda$new$1(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isFeatureEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBoostHandler(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmForegroundPkgList(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mForegroundPkgList:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolled(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPollingInterval(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficPollTime(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStaPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBoostMode(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->setBoostMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPollingInterval(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->setPollingInterval()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateP2pAwareTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->updateP2pAwareTrafficStats()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->updateStaTrafficStats()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 11

    const-string v0, "SemWifiTrafficPoller"

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCstateModeValue:I

    .line 102
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    .line 103
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 115
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v2, 0x3e8

    .line 116
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    .line 118
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 167
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mForegroundPkgList:Ljava/util/HashMap;

    .line 168
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 287
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m500msCallbacks:Ljava/util/Set;

    .line 289
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msCallbacks:Ljava/util/Set;

    .line 291
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msCallbacks:Ljava/util/Set;

    .line 293
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m6000msCallbacks:Ljava/util/Set;

    .line 205
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mContext:Landroid/content/Context;

    .line 206
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 207
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    .line 208
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 209
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 210
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 211
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    .line 212
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaTrafficStats:Ljava/util/HashMap;

    .line 214
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-direct {p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 215
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-direct {p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 216
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-direct {p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiAwareTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 218
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getBoosterThresholds()[I

    move-result-object p2

    .line 219
    aget p4, p2, v1

    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mAffinityBoosterThreshold:I

    const/4 v3, 0x1

    .line 220
    aget v4, p2, v3

    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCstateDisableThreshold:I

    const/4 v5, 0x2

    .line 221
    aget p2, p2, v5

    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mL1ssDisableThreshold:I

    if-lez p4, :cond_9f

    move p4, v3

    goto :goto_a0

    :cond_9f
    move p4, v1

    .line 222
    :goto_a0
    iput-boolean p4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportAffinityBooster:Z

    if-lez v4, :cond_a6

    move v4, v3

    goto :goto_a7

    :cond_a6
    move v4, v1

    .line 223
    :goto_a7
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportCpuCstateControl:Z

    if-lez p2, :cond_ad

    move p2, v3

    goto :goto_ae

    :cond_ad
    move p2, v1

    .line 224
    :goto_ae
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportL1ssControl:Z

    if-nez p4, :cond_b6

    if-nez p2, :cond_b6

    if-eqz v4, :cond_b7

    :cond_b6
    move v1, v3

    .line 225
    :cond_b7
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isFeatureEnabled:Z

    .line 228
    :try_start_b9
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c0} :catch_cb
    .catch Ljava/lang/SecurityException; {:try_start_b9 .. :try_end_c0} :catch_c1

    goto :goto_d4

    :catch_c1
    move-exception p2

    const-string p4, "SecurityException - registerProcessObserver"

    .line 233
    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_d4

    :catch_cb
    move-exception p2

    const-string p4, "RemoteException - registerProcessObserver"

    .line 230
    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 237
    :goto_d4
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportCpuCstateControl:Z

    if-eqz p2, :cond_f7

    .line 238
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string p4, "WIFI_CSTATE"

    invoke-virtual {p2, p1, p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getDvfsManager(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p2, :cond_f2

    const/16 p4, 0xfaa

    .line 239
    invoke-virtual {p2, p4}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    move-result p2

    if-eqz p2, :cond_f2

    .line 240
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p2, p4}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_f7

    :cond_f2
    const-string p2, "Not permitted to control cstate"

    .line 242
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_f7
    :goto_f7
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportL1ssControl:Z

    if-eqz p2, :cond_11a

    .line 247
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string p4, "WIFI_L1SS"

    invoke-virtual {p2, p1, p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getDvfsManager(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_115

    const/16 p2, 0xfab

    .line 248
    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    move-result p1

    if-eqz p1, :cond_115

    .line 249
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_11a

    :cond_115
    const-string p1, "Not permitted to control l1ss"

    .line 251
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_11a
    :goto_11a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 257
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 258
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerP2pStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    .line 272
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerWifiAwareStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(ZILjava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_b

    .line 260
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pIfaceName:Ljava/lang/String;

    .line 261
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    goto :goto_14

    :cond_b
    const/4 p1, 0x0

    .line 263
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pIfaceName:Ljava/lang/String;

    .line 264
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 267
    :goto_14
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    if-lez p1, :cond_23

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_23

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->startTrafficPoll()V

    :cond_23
    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .registers 2

    if-eqz p1, :cond_11

    const-string p1, "aware_data0"

    .line 274
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiAwareIfaceNames:[Ljava/lang/String;

    .line 275
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    goto :goto_1a

    :cond_11
    const/4 p1, 0x0

    .line 277
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiAwareIfaceNames:[Ljava/lang/String;

    .line 278
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 281
    :goto_1a
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    if-lez p1, :cond_29

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_29

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->startTrafficPoll()V

    :cond_29
    return-void
.end method

.method private logBoostMode(JIII)V
    .registers 9

    .line 510
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 511
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%s, %d, %d, %d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_33} :catch_59

    .line 517
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    if-eqz p2, :cond_3c

    const-string p2, "SemWifiTrafficPoller"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_3c
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    monitor-enter p2

    .line 519
    :try_start_3f
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 520
    :goto_44
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 p3, 0xc8

    if-le p1, p3, :cond_54

    .line 521
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_44

    .line 523
    :cond_54
    monitor-exit p2

    return-void

    :catchall_56
    move-exception p0

    monitor-exit p2
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_56

    throw p0

    :catch_59
    move-exception p0

    const-string p1, "SemWifiTrafficPoller"

    const-string p2, "format problem"

    .line 513
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private notifyTrafficStatsChanged()V
    .registers 4

    .line 327
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    rem-int/lit16 v0, v0, 0x1f4

    if-nez v0, :cond_1e

    .line 328
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m500msCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 329
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;->updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    goto :goto_c

    .line 333
    :cond_1e
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    rem-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_3c

    .line 334
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 335
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;->updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    goto :goto_2a

    .line 339
    :cond_3c
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    rem-int/lit16 v0, v0, 0xbb8

    if-nez v0, :cond_5a

    .line 340
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 341
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;->updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    goto :goto_48

    .line 345
    :cond_5a
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    rem-int/lit16 v0, v0, 0x1770

    if-nez v0, :cond_78

    .line 346
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m6000msCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 347
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;->updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    goto :goto_66

    :cond_78
    return-void
.end method

.method private renewTrafficBytes(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;Ljava/lang/String;)V
    .registers 5

    .line 409
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 410
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    return-void
.end method

.method private setBoostMode()V
    .registers 15

    .line 417
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTxBytes:J

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mRxBytes:J

    .line 421
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaTrafficStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-wide v7, v5

    move-wide v9, v7

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 422
    iget-wide v12, v11, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    add-long/2addr v7, v12

    .line 423
    iget-wide v11, v11, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    add-long/2addr v9, v11

    goto :goto_12

    .line 426
    :cond_25
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 427
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    iget-wide v11, v4, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    add-long/2addr v7, v11

    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiAwareTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    iget-wide v12, v11, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    add-long/2addr v7, v12

    .line 428
    iget-wide v12, v4, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    add-long/2addr v9, v12

    iget-wide v11, v11, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    add-long/2addr v9, v11

    goto :goto_42

    .line 430
    :cond_3e
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTxBytes:J

    .line 431
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mRxBytes:J

    .line 434
    :goto_42
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTxBytes:J

    .line 435
    iput-wide v9, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mRxBytes:J

    cmp-long v4, v0, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-gtz v4, :cond_50

    cmp-long v4, v2, v5

    if-lez v4, :cond_161

    :cond_50
    sub-long/2addr v7, v0

    sub-long/2addr v9, v2

    .line 439
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportCpuCstateControl:Z

    const-string v1, "SemWifiTrafficPoller"

    if-eqz v0, :cond_92

    add-long v2, v7, v9

    .line 440
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCstateDisableThreshold:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_79

    .line 441
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_92

    .line 442
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_6e

    const-string v0, "mCpuCstate acquire"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_6e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 444
    iput v12, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCstateModeValue:I

    :goto_77
    move v0, v12

    goto :goto_93

    .line 448
    :cond_79
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCstateModeValue:I

    if-ne v0, v12, :cond_92

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_92

    .line 449
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_8a

    const-string v0, "mCpuCstate release."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_8a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 451
    iput v11, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCstateModeValue:I

    goto :goto_77

    :cond_92
    move v0, v11

    .line 457
    :goto_93
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportL1ssControl:Z

    if-eqz v2, :cond_d6

    .line 458
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mL1ssDisableThreshold:I

    int-to-long v3, v2

    cmp-long v3, v7, v3

    if-gtz v3, :cond_bd

    int-to-long v2, v2

    cmp-long v2, v9, v2

    if-lez v2, :cond_a4

    goto :goto_bd

    .line 466
    :cond_a4
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    if-ne v2, v12, :cond_d6

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_d6

    .line 467
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_b5

    const-string v0, "mL1ss release"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_b5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 469
    iput v11, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    goto :goto_d5

    .line 459
    :cond_bd
    :goto_bd
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    if-nez v2, :cond_d6

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_d6

    .line 460
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_ce

    const-string v0, "mL1ss acquire"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_ce
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 462
    iput v12, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    :goto_d5
    move v0, v12

    .line 475
    :cond_d6
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportAffinityBooster:Z

    if-eqz v2, :cond_160

    add-long/2addr v7, v9

    .line 476
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mAffinityBoosterThreshold:I

    int-to-long v3, v2

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    cmp-long v3, v7, v3

    const-string v4, "Affinity "

    if-lez v3, :cond_10f

    .line 477
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_160

    .line 478
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 479
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setAffinityBooster(Ljava/lang/String;I)Z

    .line 480
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_10d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10d
    :goto_10d
    move v11, v12

    goto :goto_161

    :cond_10f
    int-to-long v2, v2

    cmp-long v2, v7, v2

    if-lez v2, :cond_13a

    .line 484
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    if-eq v2, v12, :cond_160

    .line 485
    iput v12, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 486
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setAffinityBooster(Ljava/lang/String;I)Z

    .line 487
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_10d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .line 491
    :cond_13a
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    if-eqz v2, :cond_160

    .line 492
    iput v11, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 493
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2, v11}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setAffinityBooster(Ljava/lang/String;I)Z

    .line 494
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_10d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    :cond_160
    move v11, v0

    :cond_161
    :goto_161
    if-eqz v11, :cond_171

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCstateModeValue:I

    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->logBoostMode(JIII)V

    :cond_171
    return-void
.end method

.method private setPollingInterval()V
    .registers 2

    .line 603
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m500msCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/16 v0, 0x1f4

    .line 604
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    goto :goto_11

    :cond_d
    const/16 v0, 0x3e8

    .line 606
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    :goto_11
    return-void
.end method

.method private startTrafficPoll()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 163
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateP2pAwareTrafficStats()V
    .registers 6

    .line 395
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 396
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pIfaceName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 397
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->renewTrafficBytes(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;Ljava/lang/String;)V

    .line 400
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiAwareIfaceNames:[Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 401
    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    .line 402
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiAwareTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->renewTrafficBytes(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_23
    return-void
.end method

.method private updateStaTrafficStats()V
    .registers 6

    .line 353
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 354
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    const/16 v1, 0x1770

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    .line 355
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 357
    :cond_11
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 359
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 360
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaTrafficStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 362
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 363
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 364
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->renewTrafficBytes(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 366
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    iget-wide v3, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    iput-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 367
    iget-wide v3, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    iput-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 368
    iget-wide v3, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    iput-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 369
    iget-wide v2, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    iput-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    goto :goto_26

    .line 374
    :cond_68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_9e

    .line 377
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mForegroundPkgList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 379
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 384
    :cond_9e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUidTxPackets(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPacketsTopActivity:J

    .line 385
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUidRxPackets(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPacketsTopActivity:J

    .line 386
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUidTxBytes(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    .line 387
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUidRxBytes(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    .line 388
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->uidTopActivity:I

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->notifyTrafficStatsChanged()V

    :cond_cd
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 532
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    monitor-enter p1

    .line 533
    :try_start_3
    new-instance p3, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    invoke-direct {p3, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 534
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "SemWifiTrafficPoller history:"

    .line 535
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 537
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 539
    :cond_24
    invoke-virtual {p3}, Ljava/util/LinkedList;->clear()V

    .line 540
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p0

    .line 534
    :try_start_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 527
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getPollingInterval()I
    .registers 1

    .line 611
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    return p0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 134
    :cond_3
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    if-eqz p2, :cond_21

    .line 135
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaTrafficStats:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    if-nez p2, :cond_1b

    .line 137
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-direct {p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaTrafficStats:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1b
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 142
    :cond_21
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 145
    :goto_26
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_3f

    .line 146
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    invoke-interface {p1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 148
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    .line 150
    :cond_38
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    goto :goto_45

    .line 152
    :cond_3f
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 155
    :goto_45
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    if-lez p1, :cond_54

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_54

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->startTrafficPoll()V

    :cond_54
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V
    .registers 5

    if-eqz p1, :cond_36

    const/16 v0, 0x1f4

    if-eq p2, v0, :cond_2a

    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_2a

    const/16 v0, 0xbb8

    if-eq p2, v0, :cond_2a

    const/16 v0, 0x1770

    if-ne p2, v0, :cond_13

    goto :goto_2a

    .line 303
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid interval ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 306
    :cond_2a
    :goto_2a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 308
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 298
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V
    .registers 5

    if-eqz p1, :cond_36

    const/16 v0, 0x1f4

    if-eq p2, v0, :cond_2a

    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_2a

    const/16 v0, 0xbb8

    if-eq p2, v0, :cond_2a

    const/16 v0, 0x1770

    if-ne p2, v0, :cond_13

    goto :goto_2a

    .line 318
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid interval ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 321
    :cond_2a
    :goto_2a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 323
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 313
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
