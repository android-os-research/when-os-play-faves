.class public Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;
.super Ljava/lang/Object;
.source "WifiProfileAndQoSProvider.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;,
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;,
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;
    }
.end annotation


# static fields
.field private static final MAX_PASSWORD_REQ_TIME:J = 0x36ee80L

.field private static final PERIOD_QOS_DATA_UPDATE_TIME:J = 0x2dc6c0L

.field private static final TAG:Ljava/lang/String; = "WifiProfileShare"

.field private static final VERSION:Ljava/lang/String; = "1.8.3"

.field private static final mDebugProcessMessage:Z = false


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;

.field private final mCallbackLock:Ljava/lang/Object;

.field final mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mFeature:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private final mFlagForUseMcfService:[Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastNetworkState:Landroid/net/NetworkInfo$State;

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mMcfProvider:Lcom/samsung/android/server/wifi/share/mcf/McfController;

.field private final mMcfServiceCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mMcfServiceListener:Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

.field private mQosOnlyOpenNetwork:Z

.field private final mScanMatcherUtil:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

.field final mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTestQoSData:[I

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWipsNetworkProvider:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;


# direct methods
.method public static synthetic $r8$lambda$Hr0rGhvHU68nycacW35QLbI1uxU(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->lambda$dump$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oL7AXQGIXxZ7xbRDCb9TjTT0FKg(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->lambda$checkAndStart$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mAdapter:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackLock(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFeature:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/net/NetworkInfo$State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfProvider:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMcfServiceCallbacks(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfServiceCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQosOnlyOpenNetwork(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mQosOnlyOpenNetwork:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mScanMatcherUtil:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mTestQoSData:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWipsNetworkProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mWipsNetworkProvider:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Landroid/net/NetworkInfo$State;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndBindMcfService(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->checkAndBindMcfService(Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndUnbindMcfService(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->checkAndUnbindMcfService(Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetUltraPowerSaveEnabledFromProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->getUltraPowerSaveEnabledFromProvider()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEnableNetworkRecommendation(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->isEnableNetworkRecommendation()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEnabledNearByScanningSettings(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->isEnabledNearByScanningSettings()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misKeyguardLocked(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWifiNetworkActivated(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->isWifiNetworkActivated()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyWifiNetworkState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;ZLandroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->notifyWifiNetworkState(ZLandroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMcfServiceForCaster(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->setMcfServiceForCaster(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMcfServiceForSubscriber(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->setMcfServiceForSubscriber(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;)V
    .registers 13

    .line 120
    new-instance v3, Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/McfController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    new-instance v4, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    .line 121
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V

    new-instance v5, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;

    invoke-direct {v5}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 120
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/share/mcf/McfController;Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/share/mcf/McfController;Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 112
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFlagForUseMcfService:[Z

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCallbackLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfServiceCallbacks:Ljava/util/Set;

    .line 116
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 490
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$6;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfServiceListener:Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    .line 129
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 132
    invoke-virtual {p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 133
    iput-object p7, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mAdapter:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;

    .line 134
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfProvider:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 135
    iput-object p4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mScanMatcherUtil:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    .line 136
    invoke-virtual {p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 137
    invoke-virtual {p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFeature:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 138
    invoke-virtual {p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 139
    invoke-virtual {p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getMobileWipsFrameworkService()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mWipsNetworkProvider:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 141
    new-instance p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    .line 142
    new-instance p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-direct {p1, p0, p2, p5}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Landroid/os/Looper;Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    .line 144
    new-instance p1, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-void
.end method

.method private checkAndBindMcfService(Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)V
    .registers 7

    .line 467
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfServiceCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 469
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfProvider:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_51

    if-lez v1, :cond_2f

    const-string v2, "WifiProfileShare"

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already tried to bind mcf service, callback size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfServiceCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_2f
    const-string v1, "WifiProfileShare"

    const-string v2, "try to bind mcf service"

    .line 474
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfProvider:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfServiceListener:Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->bindMcfService(Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 476
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfServiceCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_46
    const-string p0, "WifiProfileShare"

    const-string v1, "failed to bind service"

    .line 478
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;->onFailedToBindService()V

    goto :goto_6f

    :cond_51
    const-string v2, "WifiProfileShare"

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already bound mcf service, callback size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfServiceCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;->onServiceConnected()V

    .line 487
    :goto_6f
    monitor-exit v0

    return-void

    :catchall_71
    move-exception p0

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw p0
.end method

.method private checkAndUnbindMcfService(Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)V
    .registers 6

    .line 518
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfServiceCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 519
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFlagForUseMcfService:[Z

    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    const-string v3, "WifiProfileShare"

    if-nez v1, :cond_23

    aget-boolean p1, p1, v2

    if-nez p1, :cond_23

    .line 520
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfServiceCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 521
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfProvider:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->unbindMcfService()V

    const-string p0, "unbind mcf service"

    .line 522
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 524
    :cond_23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcf service is used for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFlagForUseMcfService:[Z

    aget-boolean v0, v1, v0

    const-string v1, ""

    if-eqz v0, :cond_38

    const-string v0, "caster "

    goto :goto_39

    :cond_38
    move-object v0, v1

    :goto_39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFlagForUseMcfService:[Z

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_44

    const-string v1, "subscriber "

    :cond_44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 524
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    return-void
.end method

.method private getUltraPowerSaveEnabledFromProvider()Z
    .registers 4

    .line 421
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    const-string v1, "emergency_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v2, v0

    :cond_f
    return v2
.end method

.method private isEnableNetworkRecommendation()Z
    .registers 4

    .line 436
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi_network_rating_scorer_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network score provider settings "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v2, :cond_1a

    const-string v1, "enabled"

    goto :goto_1c

    :cond_1a
    const-string v1, "disabled"

    .line 439
    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare"

    .line 438
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v2, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    return v2
.end method

.method private isEnabledNearByScanningSettings()Z
    .registers 5

    .line 444
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    const-string v1, "nearby_scanning_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nearby scanning settings "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1b

    const-string v3, "run"

    goto :goto_23

    :cond_1b
    const/4 v3, 0x2

    if-ne p0, v3, :cond_21

    const-string v3, "pause"

    goto :goto_23

    :cond_21
    const-string v3, "stop"

    .line 447
    :goto_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WifiProfileShare"

    .line 446
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v1, :cond_32

    move v2, v1

    :cond_32
    return v2
.end method

.method private isKeyguardLocked()Z
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_10

    .line 453
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 455
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method private isWifiNetworkActivated()Z
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_10

    .line 149
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private synthetic lambda$checkAndStart$0(Z)V
    .registers 3

    const-string v0, "WifiProfileShare"

    if-eqz p1, :cond_1b

    const-string p1, "screen on"

    .line 172
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_35

    .line 174
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$msetEnableCaster(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V

    .line 175
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->setEnableSubscriber(Z)V

    goto :goto_35

    :cond_1b
    const-string p1, "screen off"

    .line 178
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mscreenOff(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V

    .line 180
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->clearUserConfirmHistory()V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->setEnableSubscriber(Z)V

    .line 182
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfServiceCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_35
    :goto_35
    return-void
.end method

.method private synthetic lambda$dump$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 307
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mScanMatcherUtil:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->getConfigKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 308
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_14

    const/4 p1, 0x0

    .line 309
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_14
    const-string p0, "unknown"

    return-object p0
.end method

.method private notifyWifiNetworkState(ZLandroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)V
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mupdateWifiInfoAndConfig(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)V

    .line 299
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$msetEnableCaster(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V

    return-void
.end method

.method private setDisableNetworkRecommendationIfNotSet()V
    .registers 5

    .line 426
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    const-string v2, "sem_wifi_network_rating_scorer_enabled"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1c

    const-string v0, "WifiProfileShare"

    const-string v1, "force disable network score provider setting"

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_1c
    return-void
.end method

.method private setMcfServiceForCaster(Z)V
    .registers 3

    .line 459
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFlagForUseMcfService:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method private setMcfServiceForSubscriber(Z)V
    .registers 3

    .line 463
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFlagForUseMcfService:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method


# virtual methods
.method public checkAndStart()V
    .registers 7

    const-string v0, "WifiProfileShare"

    const-string v1, "checkAndStart"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isComcastVendor()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->setDisableNetworkRecommendationIfNotSet()V

    .line 158
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->start()V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->start()V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$1;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    const-string v2, "sem_wifi_network_rating_scorer_enabled"

    .line 222
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$3;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    .line 223
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$3;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Landroid/os/Handler;)V

    const/4 v4, 0x0

    .line 221
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    const-string v2, "nearby_scanning_enabled"

    .line 236
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$4;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    .line 237
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$4;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Landroid/os/Handler;)V

    .line 235
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mContext:Landroid/content/Context;

    const-string v2, "emergency_mode"

    .line 251
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$5;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    .line 252
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$5;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Landroid/os/Handler;)V

    .line 250
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 261
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/4 v0, 0x1

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->setEnableSubscriber(ZJ)V

    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 11

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version: 1.8.3"

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mAdapter:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;

    invoke-interface {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;->getCurrentNetworkScore()[I

    move-result-object v1

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    const-string v4, "\n - Current Network Scores: "

    .line 331
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    array-length v4, v1

    move v5, v3

    :goto_1c
    if-ge v5, v4, :cond_29

    aget v6, v1, v5

    .line 333
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_29
    const-string v1, "\nCaster Info:"

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n - Current State: "

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n - QoS Policy: "

    .line 338
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mQosOnlyOpenNetwork:Z

    if-eqz v4, :cond_4c

    const-string v4, "OPEN only"

    goto :goto_4e

    :cond_4c
    const-string v4, "Default (OPEN or SECURED)"

    :goto_4e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmMobileWipsDetectedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_85

    const-string v4, "\n - Suspicious networks:"

    .line 341
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmMobileWipsDetectedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    :cond_85
    const-string v4, "\n - ScanPower: "

    .line 346
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfProvider:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isLowLatencyForCasterPasswordShare()Z

    move-result v5

    const-string v6, "Low Latency"

    const-string v7, "Low Power"

    if-eqz v5, :cond_98

    move-object v5, v6

    goto :goto_99

    :cond_98
    move-object v5, v7

    :goto_99
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v5, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastUpdatedQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v5

    const/4 v8, 0x1

    if-eqz v5, :cond_b5

    const-string v5, "\n - Sharing QoS Data: "

    .line 350
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastUpdatedQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v5, v8

    goto :goto_b6

    :cond_b5
    move v5, v3

    .line 353
    :goto_b6
    iget-object v9, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedStaConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_cd

    const-string v5, "\n - Sharing STA Password for "

    .line 354
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedStaConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ce

    :cond_cd
    move v8, v5

    :goto_ce
    if-nez v8, :cond_d5

    const-string v5, "\n - There is no shared data"

    .line 358
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_d5
    iget-object v5, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedApConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_eb

    const-string v5, "\n - Sharing AP Password for "

    .line 361
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedApConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_eb
    const-string v5, "\nSubscriber Info:"

    .line 363
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfProvider:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isLowLatencyForSubscriberPasswordScan()Z

    move-result v1

    if-eqz v1, :cond_10d

    move-object v1, v6

    goto :goto_10e

    :cond_10d
    move-object v1, v7

    :goto_10e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfProvider:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isLowLatencyForSubscriberQoSScan()Z

    move-result v1

    if-eqz v1, :cond_11d

    goto :goto_11e

    :cond_11d
    move-object v6, v7

    :goto_11e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mTestQoSData:[I

    if-eqz v1, :cond_144

    const-string v1, "\nTestQoSData: "

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mTestQoSData:[I

    array-length v1, p0

    :goto_132
    if-ge v3, v1, :cond_13f

    aget v4, p0, v3

    .line 372
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_132

    :cond_13f
    const-string p0, "]"

    .line 374
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "WifiProfileShare:"

    .line 303
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/4 v1, 0x0

    .line 306
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->syncGetQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)V

    .line 305
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->printCachedScores(Ljava/util/Map;Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$ConfigKeyProvider;)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 316
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p0, ""

    .line 318
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getQoSScores(Ljava/util/List;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 287
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->syncGetQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    const-string p0, "1.8.3"

    return-object p0
.end method

.method public registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .registers 3

    .line 273
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->asyncRegisterPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "WifiProfileShare"

    const-string p1, "failed to register password callback"

    .line 274
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public requestPassword(Z)V
    .registers 2

    .line 283
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->asyncRequestPassword(Z)V

    return-void
.end method

.method public setTestSettings(Landroid/os/Bundle;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "clearScores"

    .line 385
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 386
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->asyncClearCachedNetworkScores()V

    :cond_10
    const-string v0, "clearConfirmHistory"

    .line 389
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 390
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->clearUserConfirmHistory()V

    :cond_1d
    const-string v0, "resetTestScores"

    .line 393
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mTestQoSData:[I

    .line 395
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mrequestToUpdateShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V

    goto :goto_42

    :cond_2f
    const-string v0, "networkScores"

    .line 397
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_42

    .line 398
    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_42

    .line 399
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mTestQoSData:[I

    .line 400
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mrequestToUpdateShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V

    :cond_42
    :goto_42
    const-string v0, "updateScanPolicy"

    .line 404
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_63

    const-string v0, "scanPolicies"

    .line 405
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    if-eqz v0, :cond_63

    .line 406
    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_63

    .line 411
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mMcfProvider:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    aget-boolean v4, v0, v2

    aget-boolean v1, v0, v1

    const/4 v5, 0x2

    aget-boolean v0, v0, v5

    invoke-virtual {v3, v4, v1, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->setScanMode(ZZZ)V

    :cond_63
    const-string v0, "qosForOpenNetwork"

    .line 415
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 416
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mQosOnlyOpenNetwork:Z

    :cond_71
    return-void
.end method

.method public setUserConfirm(ZLjava/lang/String;)V
    .registers 3

    .line 269
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$masyncSetUserConfirm(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;ZLjava/lang/String;)V

    return-void
.end method

.method public unregisterPasswordCallback()V
    .registers 1

    .line 279
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->asyncUnregisterPasswordCallback()V

    return-void
.end method

.method public updateQoSData(Ljava/lang/String;ZZ)V
    .registers 6

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network QoS data was changed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), updateQoSData networkType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", qosData: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiProfileShare"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mrequestToUpdateShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V

    return-void
.end method
