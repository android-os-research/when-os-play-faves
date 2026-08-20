.class public Lcom/samsung/android/server/wifi/SemClientModeManager;
.super Ljava/lang/Object;
.source "SemClientModeManager.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;
.implements Lcom/samsung/android/server/wifi/ClientModeStateProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;,
        Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;
    }
.end annotation


# static fields
.field private static final DBG_PRODUCT_DEV:Z

.field static final DEFAULT_LAZY_BOOT_COMPLETED_DELAY_MS:J = 0x4e20L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_INTERFACE_COUNT:I = 0x2

.field static final NETWORK_STATE_CHANGE_DELAY_MILLIS:J = 0xfaL
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final RECOVERY_INTERFACE_DELAY_MILLIS:J = 0x12cL
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STA_INTERFACE_NAME_PREFIX:Ljava/lang/String; = "wlan"

.field private static final TAG:Ljava/lang/String; = "SemClientModeManager"


# instance fields
.field private final mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

.field private final mClientModeStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ClientModeStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientModes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ISemClientModeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mDisableRandomMacForTest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mIsSimPresent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLazyBootCompleteListener:Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPrimaryInterface:Ljava/lang/String;

.field private final mPrimaryInterfaceListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mScanningEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mScreenState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiDriverInfo:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

.field private final mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;


# direct methods
.method public static synthetic $r8$lambda$4WhVFVfut25Y6SVF0CFhVURNiAU(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$changePrimaryInterface$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5o8McogyjEGpTuarhs43jjvfMRU(Ljava/lang/String;Lcom/samsung/android/server/wifi/ISemClientModeImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$setNCHOModeEnabled$8(Ljava/lang/String;Lcom/samsung/android/server/wifi/ISemClientModeImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7lC2OhbQiOktkxBUgm4RR5iPqlk(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$registerPrimaryInterfaceListener$4(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LWkFG2ohqATejRjJ_F0C_xGJiJY(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$unregisterPrimaryInterfaceListener$5(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P8ig8qCpQePGf_ZJXQLvk3LHD5Q(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$getNumFavoriteNetworks$9(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WCM_m_vwPHPgVocqBfMaj8t6lwA(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$unregisterClientModeStateListener$7(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXZTyFBMYEtXp_OdVqJlrjVdxIU(Lcom/samsung/android/server/wifi/SemClientModeManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kN-wOs8e01E82SHlNd8P4ZwHDsM(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$registerClientModeStateListener$6(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l57b6WLbshOuDF6GwEBvDiybvV0(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$addClientModeImpl$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$waB-3qnyb-GEDGeJS9SOSNTV3X8(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$addClientModeImpl$2(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientModes(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLazyBootCompleteListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mLazyBootCompleteListener:Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/util/ScanPool;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanningEnable(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScanningEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiDriverInfo(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiDriverInfo:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->addClientModeImpl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndGetConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndGetConnectivityManager()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndUpdatePrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndUpdatePrimaryInterface(Landroid/net/Network;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getInterfaceName(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPrimaryClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/ISemClientModeImpl;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetW24HBigDataParameters(Lcom/samsung/android/server/wifi/SemClientModeManager;ZZ)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getW24HBigDataParameters(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyAirplaneModeChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyAirplaneModeChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCapabilitiesChangedEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;Landroid/net/wifi/WifiInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyCapabilitiesChangedEvent(Landroid/net/Network;Landroid/net/wifi/WifiInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDisableRandomMacForTest(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyDisableRandomMacForTest()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyLinkConfiguredChangedEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyLinkConfiguredChangedEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyNetworkConnectionEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyNetworkConnectionEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySimStateChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifySimStateChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyTelephonyCountryCodeChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyTelephonyCountryCodeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyTelephonyServiceStateChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/telephony/ServiceState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyTelephonyServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->removeClientModeImpl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG_PRODUCT_DEV()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeManager;->DBG_PRODUCT_DEV:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 76
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeManager;->DBG_PRODUCT_DEV:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 9

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScreenState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mIsSimPresent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDisableRandomMacForTest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScanningEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 840
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$2;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 854
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$3;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 113
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    .line 114
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 115
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 116
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 117
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 118
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 119
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 120
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 121
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 122
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiDriverInfo:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 123
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 125
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    move-result-object p4

    invoke-direct {v1, p0, p2, p4}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 126
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    new-instance p2, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {p2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    const-string p2, "power"

    .line 129
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 130
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 131
    new-instance p1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    invoke-virtual {p3, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 135
    new-instance p1, Lcom/samsung/android/server/wifi/SemClientModeManager$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    invoke-virtual {p3, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 148
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterfaceListeners:Ljava/util/Set;

    .line 149
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModeStateListeners:Ljava/util/Set;

    return-void
.end method

.method private addClientModeImpl(Ljava/lang/String;)V
    .registers 8

    .line 196
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    const-string v1, "SemClientModeManager"

    if-nez v0, :cond_42

    .line 198
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeClientModeImpl(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->initialize()V

    .line 200
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScreenState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleScreenStateChanged(Z)V

    .line 201
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mIsSimPresent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleSimStateChanged(Z)V

    .line 202
    new-instance v2, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setListener(Lcom/samsung/android/server/wifi/ClientModeImplStateListener;)V

    .line 207
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_42

    const-string v2, "there are 3 or more STA interfaces"

    .line 209
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    const/4 v2, 0x1

    .line 214
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 215
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    goto :goto_4d

    .line 218
    :cond_60
    invoke-interface {v4}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v4

    if-eqz v4, :cond_4d

    const/4 v2, 0x0

    goto :goto_4d

    :cond_68
    if-eqz v2, :cond_71

    .line 224
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->changePrimaryInterface(Ljava/lang/String;)V

    .line 227
    :cond_71
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v2

    if-nez v2, :cond_99

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start client mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setupClientMode()V

    .line 230
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDisableRandomMacForTest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_99

    .line 231
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->disableRandomMac()V

    :cond_99
    return-void
.end method

.method private changePrimaryInterface(Ljava/lang/String;)V
    .registers 5

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SemClientModeManager"

    if-nez v0, :cond_35

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primary interface was changed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b

    .line 271
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primary interface is not changed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_4b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 274
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setPrimary(Z)V

    goto :goto_55

    :cond_6d
    return-void
.end method

.method private checkAndGetConnectivityManager()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_10
    return-void
.end method

.method private checkAndUpdatePrimaryInterface(Landroid/net/Network;)V
    .registers 3

    .line 285
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->isPrimaryWifiNetwork(Landroid/net/Network;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 286
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getInterfaceName(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->changePrimaryInterface(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private getAdpsState()I
    .registers 4

    .line 704
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedAdps()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 705
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "wifi_adps_enable"

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, -0x1

    :goto_15
    return p0
.end method

.method private getAggressiveSnsState()I
    .registers 4

    .line 694
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    const-string v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getApeStats()Lcom/samsung/android/server/wifi/SemApeService$Stats;
    .registers 4

    .line 802
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeService()Lcom/samsung/android/server/wifi/SemApeService;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 805
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeService;->getStats()Lcom/samsung/android/server/wifi/SemApeService$Stats;

    move-result-object p0

    goto :goto_1d

    .line 807
    :cond_d
    new-instance p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$Stats;-><init>()V

    const/4 v0, -0x1

    .line 808
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    const-wide/16 v1, -0x1

    .line 809
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    .line 810
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    .line 811
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    :goto_1d
    return-object p0
.end method

.method private getAutoWifiState()I
    .registers 4

    .line 699
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    const-string v1, "sem_auto_wifi_control_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getBecomeFavoriteAPTime()J
    .registers 4

    .line 709
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    const-string v1, "sem_auto_wifi_time_become_favorite_ap"

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private getInterfaceName(Landroid/net/Network;)Ljava/lang/String;
    .registers 2

    .line 831
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndGetConnectivityManager()V

    .line 832
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "SemClientModeManager"

    const-string p1, "could not get interface name, linkProperties is null"

    .line 834
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 837
    :cond_15
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNumFavoriteNetworks()I
    .registers 3

    .line 684
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetworks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 685
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 383
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    return-object p0
.end method

.method private getSilentRoamingState()I
    .registers 5

    .line 713
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    const-string v2, "sem_wifi_switch_to_better_wifi_supported"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    const/4 p0, -0x1

    return p0

    .line 717
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi_switch_to_better_wifi_enabled"

    invoke-virtual {v0, p0, v1, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getSilentRoamingW24hStats()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;
    .registers 2

    .line 722
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSilentRoamingManager()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 725
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getSilentRoamingW24hStats()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    move-result-object p0

    goto :goto_1b

    .line 727
    :cond_d
    new-instance p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;-><init>()V

    const/4 v0, -0x1

    .line 728
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    .line 729
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    .line 730
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 731
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    :goto_1b
    return-object p0
.end method

.method private getSnsState()I
    .registers 4

    .line 689
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getW24HBigDataParameters(ZZ)Ljava/lang/String;
    .registers 11

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getApeStats()Lcom/samsung/android/server/wifi/SemApeService$Stats;

    move-result-object v1

    .line 747
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getSilentRoamingW24hStats()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    move-result-object v2

    if-eqz p1, :cond_14

    const-string v3, "\n - Wi-Fi Enabled:"

    .line 749
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    :cond_14
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v3

    const-string v4, "1"

    const-string v5, "0"

    if-eqz v3, :cond_22

    move-object v3, v4

    goto :goto_23

    :cond_22
    move-object v3, v5

    :goto_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_32

    const-string v6, "\n - Wi-Fi Scan Always Mode Enabled:"

    .line 751
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :cond_32
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    move-result v6

    if-eqz v6, :cond_3b

    goto :goto_3c

    :cond_3b
    move-object v4, v5

    :goto_3c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_49

    const-string v4, "\n - Auto Wi-Fi Enabled:"

    .line 753
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getAutoWifiState()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5a

    const-string v4, "\n - Favorite Network Count:"

    .line 755
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_5a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getNumFavoriteNetworks()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6b

    const-string v4, "\n - SNS Enabled:"

    .line 757
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :cond_6b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getSnsState()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7c

    const-string v4, "\n - Aggressive Mode Enabled:"

    .line 759
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_7c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getAggressiveSnsState()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8d

    const-string v4, "\n - Total Driver HANG or HIDL problem Count:"

    .line 761
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    :cond_8d
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getEventCount(I)I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    const/4 v7, 0x1

    .line 763
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getEventCount(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 762
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a9

    const-string v4, "\n - ADPS Enabled:"

    .line 764
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_a9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getAdpsState()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_ba

    const-string v4, "\n - Wi-Fi Network Count:"

    .line 766
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_ba
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_d1

    const-string v4, "\n - laaEnterState:"

    .line 768
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    :cond_d1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_de

    const-string v4, "\n - laaActiveState:"

    .line 770
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_de
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_eb

    const-string v4, "\n - totalSecondsOfApeEnabledForVoipApp:"

    .line 772
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    :cond_eb
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_fa

    const-string v4, "\n - totalSecondsOfBackgroundLimitedForVoipApp:"

    .line 774
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    :cond_fa
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_109

    const-string v4, "\n - totalSecondsOfApeEnabledForNonVoipApp:"

    .line 776
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_109
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_118

    const-string v4, "\n - totalSecondsOfBackgroundLimitedForNonVoipApp:"

    .line 778
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_118
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_127

    const-string v1, "\n - totalSecondsOfBecomeFavoriteAP:"

    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    :cond_127
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getBecomeFavoriteAPTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_138

    const-string v1, "\n - SilentRoamingState:"

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_138
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getSilentRoamingState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_149

    const-string v1, "\n - totalSilentRoamingToggleCount:"

    .line 784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_149
    iget v1, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_158

    const-string v1, "\n - totalSilentRoamingSwitchCount:"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    :cond_158
    iget v1, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_167

    const-string v1, "\n - totalSilentRoamingSwitchFailureCount:"

    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_167
    iget v1, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_176

    const-string p1, "\n - totalSilentRoamingSwitchNoInternetCount:"

    .line 790
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_176
    iget p1, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_18b

    .line 794
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->resetEventCounters()V

    .line 795
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->resetApeStats()V

    .line 796
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->resetSilentRoamingW24hStats()V

    .line 798
    :cond_18b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleScreenStateChanged()V
    .registers 4

    .line 279
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 280
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScreenState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleScreenStateChanged(Z)V

    goto :goto_a

    :cond_20
    return-void
.end method

.method private isPrimaryWifiNetwork(Landroid/net/Network;)Z
    .registers 3

    .line 291
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_11

    const-string p0, "SemClientModeManager"

    const-string p1, "WifiManagerProxy.getCurrentNetwork returns null"

    .line 293
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 296
    :cond_11
    invoke-virtual {p0}, Landroid/net/Network;->getNetId()I

    move-result p0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    if-ne p0, p1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method private synthetic lambda$addClientModeImpl$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 4

    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModeStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ClientModeStateListener;

    .line 204
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/server/wifi/ClientModeStateListener;->onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$addClientModeImpl$2(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$changePrimaryInterface$3(Ljava/lang/String;)V
    .registers 3

    .line 266
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterfaceListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 267
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;->onPrimaryInterfaceChanged(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private static synthetic lambda$getNumFavoriteNetworks$9(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .registers 1

    .line 685
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->getNetworkScore()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScreenState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->handleScreenStateChanged()V

    return-void
.end method

.method private synthetic lambda$registerClientModeStateListener$6(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .registers 2

    .line 423
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModeStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$registerPrimaryInterfaceListener$4(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .registers 2

    .line 413
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterfaceListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$setNCHOModeEnabled$8(Ljava/lang/String;Lcom/samsung/android/server/wifi/ISemClientModeImpl;)V
    .registers 2

    const/4 p0, 0x0

    .line 586
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setNCHOModeEnabled(Z)Z

    return-void
.end method

.method private synthetic lambda$unregisterClientModeStateListener$7(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .registers 2

    .line 428
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModeStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$unregisterPrimaryInterfaceListener$5(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .registers 2

    .line 418
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterfaceListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private notifyAirplaneModeChanged(Z)V
    .registers 3

    .line 355
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 356
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleAirplaneModeChanged(Z)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private notifyCapabilitiesChangedEvent(Landroid/net/Network;Landroid/net/wifi/WifiInfo;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 335
    :cond_3
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_28

    .line 336
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 338
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    .line 339
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    if-eqz p0, :cond_28

    .line 340
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 341
    invoke-interface {p0, p2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleCapabilitiesChanged(Landroid/net/wifi/WifiInfo;)V

    :cond_28
    return-void
.end method

.method private notifyDisableRandomMacForTest()V
    .registers 2

    .line 373
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 374
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->disableRandomMac()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private notifyLinkConfiguredChangedEvent()V
    .registers 10

    .line 318
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndGetConnectivityManager()V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_4d

    aget-object v3, v0, v2

    .line 320
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 322
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 323
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    if-eqz v6, :cond_4a

    .line 324
    invoke-interface {v6}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyLinkConfiguredChangedEvent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SemClientModeManager"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 327
    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 326
    invoke-interface {v6, v3, v5, v4}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleLinkConfiguredChanged(Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_4d
    return-void
.end method

.method private notifyNetworkConnectionEvent()V
    .registers 11

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndGetConnectivityManager()V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_58

    aget-object v3, v0, v2

    .line 302
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    if-eqz v4, :cond_55

    .line 304
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 305
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    if-eqz v6, :cond_55

    .line 306
    invoke-interface {v6}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v7

    if-eqz v7, :cond_55

    .line 307
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 308
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyNetworkConnectionEvent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " networkInfoFromCm:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "SemClientModeManager"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-interface {v6, v3, v7, v4}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleNetworkStateChanged(Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V

    .line 311
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndUpdatePrimaryInterface(Landroid/net/Network;)V

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_58
    return-void
.end method

.method private notifySimStateChanged(Z)V
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mIsSimPresent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 349
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 350
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mIsSimPresent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleSimStateChanged(Z)V

    goto :goto_f

    :cond_25
    return-void
.end method

.method private notifyTelephonyCountryCodeChanged(Ljava/lang/String;)V
    .registers 3

    .line 367
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 368
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleTelephonyCountryCodeChanged(Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private notifyTelephonyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3

    .line 361
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 362
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleTelephonyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private removeClientModeImpl(Ljava/lang/String;)V
    .registers 6

    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    const-string v1, "SemClientModeManager"

    if-nez v0, :cond_21

    .line 239
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not exists instant of SemClientModeImpl for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 242
    :cond_21
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop client mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->stopClientMode()V

    .line 246
    :cond_3e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 247
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 248
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_58
    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    goto :goto_58

    .line 252
    :cond_6b
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 253
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->changePrimaryInterface(Ljava/lang/String;)V

    :cond_78
    return-void
.end method

.method private resetApeStats()V
    .registers 1

    .line 817
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeService()Lcom/samsung/android/server/wifi/SemApeService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 819
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeService;->resetStats()V

    :cond_b
    return-void
.end method

.method private resetSilentRoamingW24hStats()V
    .registers 1

    .line 737
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSilentRoamingManager()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 739
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->resetSilentRoamingW24hStats()V

    :cond_b
    return-void
.end method


# virtual methods
.method disableRandomMac()V
    .registers 3

    .line 472
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDisableRandomMacForTest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 473
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(I)V

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 824
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 825
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OpBranding: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "W24H Params:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getW24HBigDataParameters(ZZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "STA Chip Information: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiDriverInfo:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method enableVerboseLogging(I)V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-lez p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->enableVerboseLogging(I)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->setLogVisible(Z)V

    .line 167
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 168
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->enableVerboseLogging(I)V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public getChannelUtilization()I
    .registers 2

    .line 477
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 478
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 479
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getChannelUtilization()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public getCountryRev()Ljava/lang/String;
    .registers 2

    .line 564
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 565
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 566
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getCountryRev()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaces()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 403
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 404
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    invoke-interface {v2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 405
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_31
    return-object v0
.end method

.method public getMaxTdlsSession()I
    .registers 2

    .line 667
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 668
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 669
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getMaxTdlsSession()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public getNumOfTdlsSession()I
    .registers 2

    .line 675
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 676
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 677
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getNumOfTdlsSession()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public getPrimaryInterfaceName()Ljava/lang/String;
    .registers 3

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 391
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_28

    .line 393
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrimaryInterfaceName "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SemClientModeManager"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-object v0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRoamBand()I
    .registers 2

    .line 548
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 549
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 550
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getRoamBand()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public getRoamDelta()I
    .registers 2

    .line 516
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 517
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 518
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getRoamDelta()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public getRoamScanPeriod()I
    .registers 2

    .line 532
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 533
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 534
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getRoamScanPeriod()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public getRoamTrigger()I
    .registers 2

    .line 500
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 501
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 502
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getRoamTrigger()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method getRssi(Ljava/lang/String;)I
    .registers 2

    .line 438
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    if-eqz p0, :cond_15

    .line 439
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 440
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->syncGetRssi()I

    move-result p0

    return p0

    :cond_15
    const/16 p0, -0xc8

    return p0
.end method

.method handleBootCompleted(Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;)V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(I)V

    .line 158
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mLazyBootCompleteListener:Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;

    .line 159
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/16 p1, 0xf

    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method initialize()V
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(I)V

    return-void
.end method

.method public isAvailableTdls()Z
    .registers 2

    .line 643
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 644
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 645
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isAvailableTdls()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isNCHOModeEnabled()Z
    .registers 2

    .line 572
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 573
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 574
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isNCHOModeEnabled()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method isScanningEnabled()Z
    .registers 1

    .line 464
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScanningEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isWesModeEnabled()Z
    .registers 2

    .line 609
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 610
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 611
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isWesModeEnabled()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isWiderBandwidthTdlsSupported()Z
    .registers 2

    .line 651
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 652
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 653
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isWiderBandwidthTdlsSupported()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .registers 4

    .line 413
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method report(ILandroid/os/Bundle;)V
    .registers 3

    .line 432
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    if-eqz p0, :cond_7

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;I)Z
    .registers 4

    .line 635
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 636
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 637
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->sendReassociationRequestFrame(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 6

    .line 626
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 627
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 628
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method setAirplaneMode(Z)V
    .registers 3

    .line 177
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(II)V

    return-void
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .registers 3

    .line 556
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 557
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 558
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setCountryRev(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method setDtimInSuspendMode(I)V
    .registers 3

    .line 453
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 454
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 455
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setDtimInSuspendMode(I)V

    :cond_f
    return-void
.end method

.method setImsCallEstablished(Z)V
    .registers 3

    .line 485
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 486
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 487
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setImsCallEstablished(Z)V

    :cond_f
    return-void
.end method

.method setMaxDtimInSuspendMode(Z)V
    .registers 3

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 447
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 448
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setMaxDtimInSuspendMode(Z)V

    :cond_f
    return-void
.end method

.method public setNCHOModeEnabled(Z)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    .line 581
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 583
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setNCHOModeEnabled(Z)Z

    move-result p0

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0

    .line 586
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    new-instance p1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return v0
.end method

.method setNetworkCountryCode(Ljava/lang/String;)V
    .registers 3

    .line 185
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setRoamBand(I)Z
    .registers 3

    .line 540
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 541
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 542
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamBand(I)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public setRoamDelta(I)Z
    .registers 3

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 509
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 510
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamDelta(I)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanChannels([Ljava/lang/String;)Z
    .registers 3

    .line 601
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 602
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 603
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamScanChannels([Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanEnabled(Z)Z
    .registers 3

    .line 593
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 594
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 595
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamScanEnabled(Z)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanPeriod(I)Z
    .registers 3

    .line 524
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 525
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 526
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamScanPeriod(I)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public setRoamTrigger(I)Z
    .registers 3

    .line 492
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 493
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 494
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamTrigger(I)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method setScanningEnable(ZLjava/lang/String;)V
    .registers 3

    .line 460
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->setScanningEnable(ZLjava/lang/String;)V

    return-void
.end method

.method setSimState(Z)V
    .registers 3

    .line 173
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(II)V

    return-void
.end method

.method public setTdlsEnabled(Z)Z
    .registers 3

    .line 659
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 660
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 661
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setTdlsEnabled(Z)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method setTelephonyServiceState(Landroid/telephony/ServiceState;)V
    .registers 3

    .line 181
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setWesModeEnabled(Z)Z
    .registers 3

    .line 617
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 618
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 619
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setWesModeEnabled(Z)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method startScan()Z
    .registers 1

    .line 468
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->startScan()Z

    move-result p0

    return p0
.end method

.method public unregisterClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .registers 4

    .line 428
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .registers 4

    .line 418
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
