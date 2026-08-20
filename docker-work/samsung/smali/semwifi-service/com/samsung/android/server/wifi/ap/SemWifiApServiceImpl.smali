.class public Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
.super Ljava/lang/Object;
.source "SemWifiApServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final DESKTOP_MODE_UI_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field private static final MAX_NAME_LENGTH:I = 0x20

.field private static final MAX_PACKET_RECORDS:I = 0x1f4

.field private static final MAX_PASSWORD_LENGTH:I = 0x3f

.field private static final MIN_PASSWORD_LENGTH:I = 0x8

.field private static final NUM_SOFT_AP_CALLBACKS_WARN_LIMIT:I = 0xa

.field private static final NUM_SOFT_AP_CALLBACKS_WTF_LIMIT:I = 0x14

.field private static final PRODUCT_DEV:Z

.field static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "SemWifiApServiceImpl"

.field private static final WLAN_ADVANCED_DEBUG_DISC:I = 0x4

.field private static final WLAN_ADVANCED_DEBUG_HOTSPOT:I = 0x40

.field private static final WLAN_ADVANCED_DEBUG_HOTSPOT_ANTENNA:I = 0x80

.field private static final WLAN_ADVANCED_DEBUG_PKT:I = 0x1

.field private static final WLAN_ADVANCED_DEBUG_RESET:I = 0x0

.field private static final WLAN_ADVANCED_DEBUG_UNWANTED:I = 0x2

.field private static final WLAN_ADVANCED_DEBUG_UNWANTED_PANIC:I = 0x10

.field public static mCountries2GOnly:[Ljava/lang/String; = null

.field private static final mFreq2ChannelNum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIndoorChannelFilePath:Ljava/lang/String; = "/vendor/etc/wifi/indoorchannel.info"


# instance fields
.field private canRetryToEnableMHS:I

.field private isHotspotLogRunning:Z

.field private mCSCRegion:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field mCountryChannel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCountryChannelList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugLogThread:Ljava/lang/Thread;

.field private mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

.field private mLOHSState:I

.field private mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

.field private mMHSExConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mNetdService:Landroid/net/INetd;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrev5GNewRadioState:I

.field private mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/wifi/ISemWifiApSmartCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

.field private mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

.field private mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

.field private mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

.field private mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

.field private mSemWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

.field private final mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTetheredData:I

.field private mWifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

.field private mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

.field private mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

.field private mWifiApSmartMhsMac:Ljava/lang/String;

.field private mWifiApSmartState:I

.field private mWifiApState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWlanAdvancedDebugState:I

.field private redirect_socket_calls_hooked:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$5LgUzfyu_e17Q268W2SI7nn4Arc(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$handleWifiApStateChange$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$7CzxG6YGPeSJKUxkOdsYYUjB068(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$unregisterWifiApSmartCallback$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CfOwOXT9SIq9PvAmbQGoNe4Ys4w(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$setWifiApConfigurationToDefault$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$HU2FOjY6fxnf6tslS5dvyU9Apqs(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$handleWifiApStateChange$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QOqE4LDGU09naEKETraJIqARuiI(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$changeHotspotAntenna$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QabHOMiwT6C7CR_fCr8BnT9seEE(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApSmartCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$registerWifiApSmartCallback$5(ILcom/samsung/android/wifi/ISemWifiApSmartCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XfCo8INj2nDLjQRNV408e35jK5M(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$unRegisterWifiApDataUsageCallback$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kdBSJGYSOrKeyiRMGKMUxPzM2Dk(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)[I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$getSoftApBands$9()[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lB_eF9n9gn3phqfZIAtFpZt-_8k(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$registerWifiApDataUsageCallback$7(ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lknXYliaqz9XV1tm-FeZaIL60pU(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$isDataSaverModeEnabled$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$otC2Pjh1-CbSIaMjqVbgobkrOvQ(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$setWifiApEnabled$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$yaUHJcCRRKtNm9ptVC59taV4NhI(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$setWifiApEnabled$4(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHotspotMobileDataLimit(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisteredWifiApSmartCallbacks(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReservation(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiInjector(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTetheredData(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTetheredData:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWlanAdvancedDebugState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReservation(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTetheredData(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTetheredData:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApSmartMhsMac(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartMhsMac:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApSmartState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWlanAdvancedDebugState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeHotspotAntenna(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->changeHotspotAntenna()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndSarBackoffSoftApModeFor5GmmWave(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/telephony/ServiceState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->checkAndSarBackoffSoftApModeFor5GmmWave(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTimeToStringSec(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTimeToStringSec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleWifiApStateChange(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;IIILjava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->handleWifiApStateChange(IIILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetHotspotAntenna(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->resetHotspotAntenna()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunHotspotDebugLog(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->runHotspotDebugLog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopHotspotDebugLog(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->stopHotspotDebugLog()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 108
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->PRODUCT_DEV:Z

    .line 349
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFreq2ChannelNum:Landroid/util/SparseArray;

    const/4 v1, 0x1

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x96c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x2

    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x971

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x3

    .line 353
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x976

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x4

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x97b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x5

    .line 355
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x980

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x6

    .line 356
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x985

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x7

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x98a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x8

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x98f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x9

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x994

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa

    .line 360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x999

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb

    .line 361
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x99e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc

    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9a3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd

    .line 363
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9a8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9b4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x22

    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1432

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x24

    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x143c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x26

    .line 367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1446

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x28

    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1450

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2a

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x145a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2c

    .line 370
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1464

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2e

    .line 371
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x146e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x30

    .line 372
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1478

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x34

    .line 373
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x148c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x38

    .line 374
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14a0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x3c

    .line 375
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14b4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x40

    .line 376
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14c8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x64

    .line 377
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x157c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x68

    .line 378
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1590

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x6c

    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15a4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x70

    .line 380
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15b8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x74

    .line 381
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15cc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x78

    .line 382
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15e0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x7c

    .line 383
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15f4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x80

    .line 384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1608

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x84

    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x161c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x88

    .line 386
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1630

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x8c

    .line 387
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1644

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x90

    .line 388
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1658

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x95

    .line 389
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1671

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x99

    .line 390
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1685

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x9d

    .line 391
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1699

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa1

    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16ad

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa5

    .line 393
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16c1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 5

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    const-string v0, "false"

    .line 85
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    const/16 v0, 0xb

    .line 90
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApState:I

    .line 91
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLOHSState:I

    const/4 v0, 0x2

    .line 92
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->canRetryToEnableMHS:I

    .line 93
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartState:I

    const/4 v1, 0x0

    .line 99
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartMhsMac:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 115
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    .line 119
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWlanAdvancedDebugState:I

    .line 127
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mDebugLogThread:Ljava/lang/Thread;

    .line 128
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    .line 129
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 130
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 2375
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 135
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    return-void
.end method

.method private bindNetdNativeService()V
    .registers 5

    const-string v0, "SemWifiApServiceImpl"

    :try_start_2
    const-string v1, "netd"

    .line 1982
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mNetdService:Landroid/net/INetd;

    if-nez v1, :cond_2f

    const-string v1, "Failed to bind service netd, error"

    .line 1984
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v1

    .line 1990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind service netd, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    :cond_2f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mNetdService:Landroid/net/INetd;

    const-string p0, "Can\'t bind service netd"

    .line 1993
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private changeHotspotAntenna()V
    .registers 8

    .line 2797
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getHotspotAntMode()I

    move-result v0

    const-string v1, "SemWifiApServiceImpl"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_f

    const-string v3, "MHS antenna set to SISO"

    goto :goto_16

    :cond_f
    if-ne v0, v2, :cond_49

    const-string v2, "MHS antenna set to MIMO"

    move v6, v3

    move-object v3, v2

    move v2, v6

    .line 2810
    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeHotspotAntenna() currentMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " changeMode:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2813
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setHotspotAntMode(I)V

    return-void

    .line 2807
    :cond_49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeHotspotAntenna() error currentMode:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkAndSarBackoffSoftApModeFor5GmmWave(Landroid/telephony/ServiceState;)V
    .registers 5

    .line 2338
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2339
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceState.getNrFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mPrev5GNewRadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_65

    if-eq p1, v1, :cond_65

    const/4 v0, 0x3

    if-eq p1, v0, :cond_65

    const/4 v2, 0x4

    if-eq p1, v2, :cond_57

    .line 2361
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    if-ne p1, v2, :cond_49

    .line 2362
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p1, :cond_53

    .line 2363
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    goto :goto_53

    :cond_49
    if-ne p1, v1, :cond_53

    .line 2366
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p1, :cond_53

    const/4 v0, 0x5

    .line 2367
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    :cond_53
    :goto_53
    const/4 p1, 0x0

    .line 2370
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    goto :goto_73

    .line 2353
    :cond_57
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    if-eq p1, v2, :cond_62

    .line 2354
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p1, :cond_62

    .line 2355
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    .line 2358
    :cond_62
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    goto :goto_73

    .line 2345
    :cond_65
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    if-eq p1, v1, :cond_71

    .line 2346
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p1, :cond_71

    const/4 v0, 0x6

    .line 2347
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    .line 2350
    :cond_71
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    :goto_73
    return-void
.end method

.method private enforceAccessPermission()V
    .registers 3

    .line 2543
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    const-string v1, "SemWifiService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .registers 3

    .line 2558
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    const-string v1, "SemWifiService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceNetworkSettingsPermission()V
    .registers 3

    .line 2548
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "SemWifiService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceNetworkStackPermission()V
    .registers 3

    .line 2553
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.NETWORK_STACK"

    const-string v1, "SemWifiService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getAospWifiManager()Landroid/net/wifi/WifiManager;
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 141
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 143
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method private getIndoorSupportStatus()Z
    .registers 8

    .line 2254
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 2255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device country code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiApServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_b1

    .line 2256
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_b1

    .line 2260
    :cond_29
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_3e

    .line 2261
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v5, v4, :cond_3e

    const-string p0, "Device is not connected to any WIFI network. Disconnected Flag:"

    .line 2262
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2265
    :cond_3e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, " "

    .line 2266
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_6b

    .line 2269
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 2270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current network frequency : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :cond_6b
    move v0, v4

    :goto_6c
    if-eq v0, v4, :cond_b0

    .line 2273
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFreq2ChannelNum:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Channel number :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for frequency : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2275
    :goto_97
    array-length v4, p0

    if-ge v0, v4, :cond_b0

    .line 2276
    aget-object v4, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    const-string p0, "STA connected to indoor channel. Take the user consent for turning on MHS"

    .line 2277
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_b0

    :cond_ad
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    :cond_b0
    :goto_b0
    return v1

    :cond_b1
    :goto_b1
    const-string p0, "Country doesn\'t support indoor channel."

    .line 2257
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getSoftApChannel()I
    .registers 2

    .line 1924
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_13

    const-string v0, "GET_CHANNEL"

    .line 1925
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1928
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    const/4 p0, -0x1

    return p0
.end method

.method private getStaInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1876
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_1e

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_STA_INFO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 1880
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 2331
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_10

    .line 2332
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2334
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private getTimeToStringSec()Ljava/lang/String;
    .registers 9

    .line 2657
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 2658
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const-string v2, "00"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const/4 v1, 0x2

    .line 2659
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    .line 2660
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    .line 2661
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    .line 2662
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    .line 2663
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 2664
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimeToStringSec : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private handleWifiApStateChange(IIILjava/lang/String;I)V
    .registers 8

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiApStateChange: currentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " previousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " errorCode= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ifaceName="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mode="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SemWifiApServiceImpl"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApState:I

    const/4 p2, 0x2

    if-ne p5, p2, :cond_51

    .line 296
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Local only hotspot state:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLOHSState:I

    :cond_51
    const/16 p4, 0xa

    if-ne p1, p4, :cond_79

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    move-result p1

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_78

    const-string p1, "setting indoor channel info when wifi turns on"

    .line 302
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    :cond_78
    return-void

    :cond_79
    const/4 p3, 0x1

    if-ne p5, p3, :cond_89

    const/16 p4, 0xc

    if-ne p1, p4, :cond_89

    .line 308
    iget-object p4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string p5, "softap_modified"

    const-string v0, "1"

    invoke-static {p4, p5, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    const/16 p4, 0xd

    if-ne p1, p4, :cond_e9

    .line 311
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->canRetryToEnableMHS:I

    .line 312
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportVerizonProvisioning()Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 313
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_c4

    .line 314
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    const/4 p4, -0x1

    if-eq p1, p4, :cond_c4

    .line 315
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x1040f58

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 316
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p5, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {p5, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    :cond_c4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result p0

    if-eqz p0, :cond_e9

    .line 320
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    move-result p1

    if-eqz p1, :cond_e9

    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getWifiApMacAclMode()I

    move-result p1

    if-ne p1, p3, :cond_e0

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readAllowListFileToSendHostapd()V

    goto :goto_e9

    .line 324
    :cond_e0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getWifiApMacAclMode()I

    move-result p1

    if-ne p1, p2, :cond_e9

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readDenyListFileToSendHostapd()V

    :cond_e9
    :goto_e9
    return-void
.end method

.method private insertBigdataForHotSpotEnabled(ZI)V
    .registers 10

    .line 503
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 504
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v2, -0x1

    const-string v3, ""

    if-eq p2, v2, :cond_5a

    .line 507
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    if-eqz v4, :cond_5a

    .line 511
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5a

    .line 513
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v5, :cond_27

    .line 514
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p2, :cond_27

    .line 515
    iget-object v3, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertBigdataForHotSpotEnabled : packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SemWifiApServiceImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 522
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8b

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiApSmart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8b

    .line 523
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "wifi_ap_smart_tethering_user_type"

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_7e

    const-string v3, "auto.hotspot.user"

    goto :goto_8b

    :cond_7e
    const/4 v0, 0x2

    if-ne p2, v0, :cond_84

    const-string v3, "auto.hotspot.family"

    goto :goto_8b

    :cond_84
    if-ne p2, v1, :cond_89

    const-string v3, "auto.hotspot.allowed"

    goto :goto_8b

    :cond_89
    const-string v3, "auto.hotspot"

    :cond_8b
    :goto_8b
    if-eqz p1, :cond_96

    .line 530
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApState()I

    move-result p2

    const/16 v0, 0xb

    if-eq p2, v0, :cond_9f

    return-void

    .line 532
    :cond_96
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApState()I

    move-result p2

    const/16 v0, 0xd

    if-eq p2, v0, :cond_9f

    return-void

    .line 535
    :cond_9f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_a9

    const-string p1, "1"

    goto :goto_ab

    :cond_a9
    const-string p1, "0"

    :goto_ab
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MHOF"

    .line 538
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private insertGsimForHotSpotEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_25

    .line 490
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 491
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiConnected()Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "Hotspot_con_wifi"

    goto :goto_20

    :cond_1b
    const-string p1, "Hotspot_con_mobile"

    goto :goto_20

    :cond_1e
    const-string p1, "Hotspot_mobile"

    :goto_20
    const-string v0, "HOTS"

    .line 496
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method private insertHotSpotEnabledHistory(ZLjava/lang/String;)V
    .registers 8

    .line 542
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " setwifiap packageName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 548
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 549
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "yy/MM/dd kk:mm:ss "

    .line 550
    invoke-static {v4, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " setwifiap "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "():"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "extra_log"

    .line 553
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    return-void
.end method

.method private isDataSaverModeEnabled()Z
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "netpolicy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    .line 254
    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 255
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method private isWifiApBlocked()Z
    .registers 8

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 269
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 270
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "isWifiTetheringEnabled"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 274
    :try_start_17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isWifiTetheringEnabled"

    .line 275
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2e

    .line 279
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :catchall_2e
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 280
    throw v0

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return v0
.end method

.method private isWifiConnected()Z
    .registers 2

    .line 569
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    .line 571
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 572
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private synthetic lambda$changeHotspotAntenna$11(Ljava/lang/String;)V
    .registers 3

    .line 2812
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getSoftApBands$9()[I
    .registers 1

    .line 1888
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleWifiApStateChange$1()V
    .registers 2

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setIndoorChannelsToDriver(Z)V

    return-void
.end method

.method private synthetic lambda$handleWifiApStateChange$2(Ljava/lang/String;)V
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isDataSaverModeEnabled$0()V
    .registers 4

    .line 255
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10407e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$registerWifiApDataUsageCallback$7(ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V
    .registers 4

    .line 1455
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->addDataUsageCallback(ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V

    .line 1457
    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->getUsage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;->onDataUsageChanged(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_26

    :catch_f
    move-exception p0

    .line 1459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerSemWifiApSmartCallback: remote exception -- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method

.method private synthetic lambda$registerWifiApSmartCallback$5(ILcom/samsung/android/wifi/ISemWifiApSmartCallback;)V
    .registers 6

    .line 1376
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSemWifiApSmartCallback: callbackIdentifier-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "callback "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiApServiceImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    const-string v1, "Too many SemWifiApSmartCallback AP callbacks: "

    const/16 v2, 0x14

    if-le p1, v2, :cond_4c

    .line 1379
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 1380
    :cond_4c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    const/16 v2, 0xa

    if-le p1, v2, :cond_6e

    .line 1381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_6e
    :goto_6e
    :try_start_6e
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartState:I

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartMhsMac:Ljava/lang/String;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback;->onStateChanged(ILjava/lang/String;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_75} :catch_76

    goto :goto_8b

    :catch_76
    move-exception p0

    .line 1388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerSemWifiApSmartCallback: remote exception -- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8b
    return-void
.end method

.method private synthetic lambda$setWifiApConfigurationToDefault$10()V
    .registers 1

    .line 2052
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setWifiApConfigurationToDefault()V

    return-void
.end method

.method private synthetic lambda$setWifiApEnabled$3()V
    .registers 3

    .line 714
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "SoftAp.info file is broken"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setWifiApEnabled$4(Ljava/lang/String;)V
    .registers 3

    .line 780
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$unRegisterWifiApDataUsageCallback$8(I)V
    .registers 2

    .line 1480
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->removeDataUsageCallback(I)V

    return-void
.end method

.method private synthetic lambda$unregisterWifiApSmartCallback$6(I)V
    .registers 3

    .line 1406
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    if-eqz p0, :cond_24

    .line 1408
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mRegisteredWifiApSmartCallbacks callback "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method private mapIndoorCountryToChannel()V
    .registers 7

    const-string v0, " "

    .line 397
    new-instance v1, Ljava/io/File;

    const-string v2, "/vendor/etc/wifi/indoorchannel.info"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "SemWifiApServiceImpl"

    const-string v3, "mIndoorChannelFilePath:/vendor/etc/wifi/indoorchannel.info"

    .line 398
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indoor channel filename:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "indoorChannelFile.exists() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_aa

    const/4 v3, 0x0

    :try_start_3b
    const-string v4, "Reading the file for indoor channel/vendor/etc/wifi/indoorchannel.info"

    .line 405
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 407
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 408
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_51} :catch_88
    .catchall {:try_start_3b .. :try_end_51} :catchall_86

    .line 410
    :try_start_51
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 411
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_65

    .line 412
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 414
    :cond_65
    :goto_65
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 415
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    const/4 v3, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_7b} :catch_83
    .catchall {:try_start_51 .. :try_end_7b} :catchall_80

    goto :goto_65

    .line 425
    :cond_7c
    :try_start_7c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_9a

    goto :goto_b2

    :catchall_80
    move-exception p0

    move-object v3, v4

    goto :goto_9f

    :catch_83
    move-exception v0

    move-object v3, v4

    goto :goto_89

    :catchall_86
    move-exception p0

    goto :goto_9f

    :catch_88
    move-exception v0

    :goto_89
    :try_start_89
    const-string v1, "Indoor channel file access fail:/vendor/etc/wifi/indoorchannel.inforead from hardcoded channels"

    .line 418
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->initializeChannelInfo()V

    .line 421
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_89 .. :try_end_94} :catchall_86

    if-eqz v3, :cond_b2

    .line 425
    :try_start_96
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_b2

    :catch_9a
    move-exception p0

    .line 427
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b2

    :goto_9f
    if-eqz v3, :cond_a9

    .line 425
    :try_start_a1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_a9

    :catch_a5
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 429
    :cond_a9
    :goto_a9
    throw p0

    :cond_aa
    const-string v0, "Indoor channel file does not exist:/vendor/etc/wifi/indoorchannel.info,read from hardcoded channels"

    .line 431
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->initializeChannelInfo()V

    :cond_b2
    :goto_b2
    return-void
.end method

.method private registerForBroadcasts()V
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 169
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApBroadcastReceiver()Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startTracking()V

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 174
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 209
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.WLAN_ADVANCED_DEBUG"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeSecurityLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_5

    const-string p0, "null"

    return-object p0

    :cond_5
    const-string p0, ",\""

    .line 1817
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    .line 1819
    :goto_e
    array-length v2, p1

    if-ge v0, v2, :cond_44

    .line 1820
    aget-object v2, p1, v0

    const-string v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    .line 1823
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "password\":\"removed\",\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_44
    return-object v1
.end method

.method private resetHotspotAntenna()V
    .registers 3

    const-string v0, "SemWifiApServiceImpl"

    const-string v1, "resetHotspotAntenna() set to MIMO"

    .line 2792
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setHotspotAntMode(I)V

    return-void
.end method

.method private resetWifiApProvisioningDB()V
    .registers 6

    .line 828
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 830
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi_ap_provision_success"

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 833
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    throw p0
.end method

.method private runHotspotDebugLog()V
    .registers 3

    .line 2765
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->stopHotspotDebugLog()V

    .line 2766
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-nez v0, :cond_f

    .line 2767
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2769
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz v0, :cond_2a

    const-string v1, "TPUT_DEBUG_MODE_ENABLE"

    .line 2770
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 2771
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mDebugLogThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 2772
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    .line 2773
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2a
    return-void
.end method

.method private stopHotspotDebugLog()V
    .registers 3

    const/4 v0, 0x0

    .line 2778
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    .line 2779
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-nez v0, :cond_f

    .line 2780
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2782
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz v0, :cond_18

    const-string v1, "TPUT_DEBUG_MODE_DISABLE"

    .line 2783
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 2785
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mDebugLogThread:Ljava/lang/Thread;

    if-eqz v0, :cond_22

    .line 2786
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 2787
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mDebugLogThread:Ljava/lang/Thread;

    :cond_22
    return-void
.end method


# virtual methods
.method public canAutoHotspotBeEnabled()Z
    .registers 4

    .line 1892
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1893
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1896
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1897
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->canAutoHotspotBeEnabled()Z

    move-result p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 1900
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1901
    throw p0
.end method

.method public clearAutoHotspotLists()V
    .registers 4

    .line 1246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1248
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    if-nez v2, :cond_10

    .line 1249
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 1250
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    if-eqz p0, :cond_17

    .line 1251
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->clearLocalResults()V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 1254
    :cond_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw p0
.end method

.method public connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I
    .registers 19

    .line 1074
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1076
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1078
    :try_start_7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClientSession()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1079
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClientSession()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_2d

    goto :goto_29

    :cond_28
    const/4 v0, -0x1

    .line 1082
    :goto_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_2d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1083
    throw v0
.end method

.method public connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z
    .registers 7

    .line 1542
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1546
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1547
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 1550
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1551
    throw p0
.end method

.method public connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z
    .registers 21

    move-object v0, p0

    .line 1179
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1183
    :try_start_8
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 1184
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2d

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 1188
    :goto_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_2d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 2567
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "MHS dump ----- start -----\n"

    .line 2568
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2569
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2571
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCSCRegion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isRegionFor5GCountry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isRegionFor5GCountry()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isRegionFor5G:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isRegionFor5G()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    if-eqz v2, :cond_46

    .line 2573
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDumpLogs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4b

    :cond_46
    const-string v2, "mWifiApConfigStore is null while taking dumpstate  -----\n"

    .line 2575
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4b
    const-string v2, "WifiApWarning - dump"

    .line 2578
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_wifiapwarning_enabled_history"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_wifiapwarning_destroyed_history"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2581
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2582
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getDumpLogs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2583
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2584
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->getDumpLogs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provision Success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getProvisionSuccess()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWifiSharingEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHS Clients\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApStaList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2591
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->getDumpLogs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2593
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getHostapdHal()Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->getDumpLogs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2594
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2595
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTimeOutImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2596
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2597
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getDumpLogs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, "--api"

    .line 2599
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5G:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp5G()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5g_Country:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp5GBasedOnCountry()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "6g_Country:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp6GBasedOnCountry()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxClient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifisharing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifisharinglite:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2607
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21e

    .line 2609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--provisioning apps length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2610
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21e

    .line 2611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2614
    :cond_21e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provision csc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v4, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringCscFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2616
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_295

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isEnhancedMobileApModeForLiteOrWifiOnlyLite()Z

    move-result v2

    if-eqz v2, :cond_295

    .line 2617
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2618
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartLocalLog()Landroid/util/LocalLog;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2619
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2620
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDumpLogs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2621
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2622
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2623
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getDumpLogs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2624
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2625
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    if-eqz v2, :cond_295

    .line 2626
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2627
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2628
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2629
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getDumpLogs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_295
    const-string v2, "SemWifiApServiceImpl connectivity packet log:"

    .line 2632
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2633
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2634
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTrafficPoller()Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->getPacketDumpLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2635
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2636
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getDumpLogs()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2638
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result p0

    if-eqz p0, :cond_2cf

    .line 2639
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->getDumpLogs()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2640
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_2cf
    const-string p0, "MHS dump ----- end -----\n"

    .line 2642
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2643
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2644
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2da
    .catchall {:try_start_c .. :try_end_2da} :catchall_2de

    .line 2646
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2de
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2647
    throw p0
.end method

.method public enableHotspotTsfInfo(Z)V
    .registers 2

    .line 2531
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    return-void
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    return-void
.end method

.method public factoryReset()V
    .registers 2

    .line 1304
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1305
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->factoryReset()V

    .line 1307
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isEnhancedMobileApModeForD2dOrWifiOnlyLite()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1308
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1309
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->factoryReset()V

    .line 1311
    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1312
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->factoryReset()V

    .line 1314
    :cond_3f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1315
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->factoryReset()V

    :cond_50
    return-void
.end method

.method public generateMhsDataUsageDummyData(IZ)V
    .registers 3

    .line 1012
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    return-void
.end method

.method public getAdvancedAutohotspotConnectSettings()I
    .registers 3

    .line 1209
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1212
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    if-eqz p0, :cond_d

    .line 1213
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    move-result p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    goto :goto_e

    :cond_d
    const/4 p0, -0x1

    .line 1216
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    throw p0
.end method

.method public getAdvancedAutohotspotLCDSettings()I
    .registers 3

    .line 1233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1236
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    if-eqz p0, :cond_d

    .line 1237
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    goto :goto_e

    :cond_d
    const/4 p0, -0x1

    .line 1240
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1241
    throw p0
.end method

.method public getHotspotAntMode()I
    .registers 5

    .line 1766
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    const/4 v0, -0x1

    .line 1768
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_3c

    const-string v1, "GET_HOTSPOT_ANTENNA_MODE"

    .line 1769
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "GET_HOTSPOT_ANTENNA_MODE "

    const-string v2, ""

    .line 1770
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SemWifiApServiceImpl"

    .line 1771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHotspotAntMode() mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    return v0

    .line 1775
    :cond_33
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_38

    return p0

    :catch_38
    move-exception p0

    .line 1778
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    return v0
.end method

.method public getIndoorStatus()I
    .registers 1

    .line 2287
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2288
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getIndoorSupportStatus()Z

    move-result p0

    return p0
.end method

.method public getMHSConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1808
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1809
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    const-string p0, ""

    return-object p0
.end method

.method public getMcfConnectedStatus(Ljava/lang/String;)I
    .registers 4

    .line 1089
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1091
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1093
    :try_start_7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClientSession()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 1094
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClientSession()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getMcfConnectedStatus(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_23

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 1097
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_23
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1098
    throw p0
.end method

.method public getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I
    .registers 4

    .line 1104
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1108
    :try_start_7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClientSession()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 1109
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClientSession()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_23

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 1112
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_23
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    throw p0
.end method

.method public getMcfScanDetail()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1023
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1024
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1025
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    :try_start_c
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1028
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->getMcfScanDetail()Ljava/util/List;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_22

    .line 1031
    :cond_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_22
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1032
    throw p0
.end method

.method public getMonthlyDataUsage()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 977
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 978
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getMonthlyDataUsage()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProvisionSuccess()I
    .registers 4

    .line 1956
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1957
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportVerizonProvisioning()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v1, "vendor.wifiap.provisioning.disable"

    const-string v2, ""

    .line 1958
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p0, 0x1

    return p0

    .line 1960
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "wifi_ap_provision_success"

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProvisioning successful  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getRVFModeStatus()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getSmartApConnectedStatus(Ljava/lang/String;)I
    .registers 5

    .line 1321
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1322
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1325
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1326
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSmartApConnectedStatus(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 1329
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    throw p0
.end method

.method public getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I
    .registers 5

    .line 1485
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1489
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1490
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 1493
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1494
    throw p0
.end method

.method public getSmartD2DClientConnectedStatus(Ljava/lang/String;)I
    .registers 5

    .line 1556
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1560
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1561
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 1564
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1565
    throw p0
.end method

.method public getSoftApBands()[I
    .registers 3

    .line 1887
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 4

    .line 838
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 842
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    if-nez v2, :cond_13

    .line 843
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApConfigStore()Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 845
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    if-eqz p0, :cond_1c

    .line 846
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_21

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    .line 849
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 850
    throw p0
.end method

.method public getStationInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1719
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1720
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1721
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getStaInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopHotspotClientsToday(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 908
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTopHotspotClientsToday(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopHotspotClientsTodayAsString(II)Ljava/lang/String;
    .registers 4

    .line 914
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 915
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTopHotspotClientsTodayAsString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 970
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 971
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiApBleD2DScanDetail()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1499
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1501
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    :try_start_c
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1504
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->getWifiApBleD2DScanResults()Ljava/util/List;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_22

    .line 1507
    :cond_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_22
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1508
    throw p0
.end method

.method public getWifiApBleScanDetail()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1124
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    :try_start_c
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1129
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->getWifiApBleScanResults()Ljava/util/List;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_22

    .line 1132
    :cond_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_22
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1133
    throw p0
.end method

.method public getWifiApChannel()I
    .registers 3

    .line 1910
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1911
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_10

    .line 1912
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApChannel()I

    move-result p0

    return p0

    .line 1914
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 1916
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .registers 3

    .line 900
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 901
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiApConnectedStationCount()I
    .registers 1

    .line 2218
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2221
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 2223
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getNumOfConnectedDevices()I

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public getWifiApDailyDataLimit()J
    .registers 3

    .line 928
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 929
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getDailyMhsDataLimit()J

    move-result-wide v0

    return-wide v0

    :cond_13
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getWifiApFreq()I
    .registers 3

    .line 1728
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    const/4 v0, -0x1

    .line 1730
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_1e

    const-string v1, "GET_FREQ"

    .line 1731
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1732
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    return v0

    .line 1735
    :cond_15
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    move-exception p0

    .line 1738
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    return v0
.end method

.method public getWifiApGuestPassword()Ljava/lang/String;
    .registers 1

    .line 946
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getWifiApGuestPassword()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApInterfaceName()Ljava/lang/String;
    .registers 1

    .line 1944
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1946
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_10

    .line 1947
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getSoftApInterfaceName()Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 1950
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiApIsolate()Z
    .registers 1

    .line 2425
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    const/4 p0, 0x0

    return p0
.end method

.method public getWifiApLOHSState()I
    .registers 1

    .line 2234
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2235
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLOHSState:I

    return p0
.end method

.method public getWifiApMacAclMode()I
    .registers 1

    .line 2437
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2438
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getWifiApMacAclMode()I

    move-result p0

    return p0
.end method

.method public getWifiApMaxClient()I
    .registers 6

    .line 1692
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1693
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v1, "vendor.wifiap.debug.maxclient"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result v0

    .line 1694
    sget-boolean v1, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    const-string v2, "SemWifiApServiceImpl"

    if-eqz v1, :cond_29

    if-eqz v0, :cond_29

    .line 1695
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed max client "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1700
    :cond_29
    sget v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->MAX_CLIENT:I

    .line 1701
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi_ap_chip_maxclient"

    invoke-virtual {v1, p0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8a

    const-string v1, "na"

    .line 1702
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_8a

    .line 1706
    :cond_40
    :try_start_40
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_44} :catch_45

    goto :goto_5b

    :catch_45
    move-exception p0

    .line 1708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    .line 1711
    :goto_5b
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v3, 0xa

    .line 1712
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "featureNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " chipNum:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " rInt:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_8a
    :goto_8a
    return v0
.end method

.method public getWifiApMaxClientFromFramework()I
    .registers 1

    .line 2243
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2244
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getWifiApMaxClientFromFramework()I

    move-result p0

    return p0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .registers 2

    .line 1796
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1798
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_12

    const-string v0, "GET_STA_LIST"

    .line 1799
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 1802
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiApStaListDetail()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1863
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1865
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1866
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    move-result-object p0

    .line 1867
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 1869
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiApState()I
    .registers 2

    .line 2211
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getAospWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2212
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getAospWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    return p0

    :cond_f
    const/16 p0, 0xb

    return p0
.end method

.method public getWifiApTodaysTotalDataUsage()J
    .registers 3

    .line 921
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 922
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v0

    return-wide v0

    :cond_13
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getWifiApWarningActivityRunningState()I
    .registers 1

    .line 1266
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_9

    .line 1267
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiApWarningActivityRunningState()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getWifiApWpsPbc()Z
    .registers 1

    .line 2448
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    const/4 p0, 0x0

    return p0
.end method

.method public handleBootCompleted()V
    .registers 4

    .line 577
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 580
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApBroadcastReceiver()Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startTracking()V

    .line 581
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->startTracking()V

    .line 582
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 583
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->handleBootCompleted()V

    .line 585
    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 586
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isEnhancedMobileApModeForLiteOrWifiOnlyLite()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 587
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->handleBootCompleted()V

    .line 588
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->handleBootCompleted()V

    .line 589
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->handleBootCompleted()V

    .line 590
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->handleBootCompleted()V

    .line 591
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->handleBootCompleted()V

    .line 592
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->handleBootCompleted()V

    .line 593
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    .line 611
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isEnhancedMobileApModeForD2dOrWifiOnlyLite()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 612
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->handleBootCompleted()V

    .line 613
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->handleBootCompleted()V

    .line 614
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->handleBootCompleted()V

    .line 616
    :cond_b1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    if-eqz v0, :cond_c0

    .line 617
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->handleBootCompleted()V

    .line 620
    :cond_c0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    if-eqz v0, :cond_c7

    .line 621
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->handleBootCompleted()V

    .line 623
    :cond_c7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTrafficPoller()Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->handleBootCompleted()V

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    .line 625
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 626
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 627
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 628
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 643
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mapIndoorCountryToChannel()V

    .line 645
    :cond_f3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleBootCompleted()V

    return-void
.end method

.method public initialize()V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    const-string v1, "SemWifiApServiceImpl"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "sem_wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 153
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndStartMHS start, mCSCRegion:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-nez v0, :cond_67

    .line 156
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 158
    :cond_67
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerForBroadcasts()V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 162
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotMHSLcdOnOff()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    .line 163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    .line 165
    :cond_96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    return-void
.end method

.method public initializeChannelInfo()V
    .registers 9

    const-string v0, "SemWifiApServiceImpl"

    const-string v1, "Initialize the indoor channel info"

    .line 438
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    const-string v2, "IN"

    const-string v3, "36 40 44 48 52 56 60 64 149 153 157 161"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    const-string v2, "KR,BB,VE,VN,AR,UY,CL,CA,CO,PA"

    const-string v3, "36 40 44 48"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    const-string v2, "BO"

    const-string v3, "52 56 60 64 149 153 157 161 165"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    const-string v2, "QA"

    const-string v3, "149 153 157 161 165"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    const-string v2, "GH,GG,GR,GL,ZA,NL,NO,NF,NZ,NU,DK,DE,LV,RO,LU,LY,LT,LI,MK,IM,MC,MA,ME,MV,MT,BH,VA,BE,BA,BG,BR,SA,SM,PM,RS,SE,CH,ES,SK,SI,AE,IS,IE,AL,EE,GB,IO,OM,AU,AT,UA,IL,EG,IT,JP,JE,GE,CN,GI,CZ,CC,CL,CA,CC,CO,KW,CK,HR,CY,TH,TR,TK,FO,PT,PL,FR,TF,PF,FJ,FI,PN,HM,HU,HK"

    const-string v3, "36 40 44 48 52 56 60 64"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 447
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 448
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Country = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", channels = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ","

    .line 450
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 451
    array-length v3, v2

    const/4 v5, 0x0

    :goto_80
    if-ge v5, v3, :cond_3e

    aget-object v6, v2, v5

    .line 452
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    :cond_8c
    return-void
.end method

.method public isClientAcceptedWifiProfileSharing(Z)V
    .registers 3

    .line 876
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 877
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isClientAcceptedWifiProfileSharing(Z)V

    :cond_11
    return-void
.end method

.method public isMCFClientAutohotspotSupported()Z
    .registers 2

    .line 1118
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v0, :cond_13

    .line 1119
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFClientAutohotspotSupported(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isOverAllMhsDataLimitReached()Z
    .registers 2

    .line 984
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 985
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isOverAllMhsDataLimitReached()Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isOverAllMhsDataLimitSet()Z
    .registers 2

    .line 991
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 992
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isOverAllMhsDataLimitSet()Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isP2pConnected()Z
    .registers 1

    .line 1906
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isP2pConnected()Z

    move-result p0

    return p0
.end method

.method public isRegionFor5G()Z
    .registers 3

    .line 1594
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    const-string v0, "KOR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public isRegionFor5GCountry()Z
    .registers 19

    move-object/from16 v0, p0

    .line 1621
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    const-string v2, "JPN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_10

    goto/16 :goto_d7

    .line 1624
    :cond_10
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v5, "SemWifiApServiceImpl"

    if-nez v1, :cond_36

    .line 1627
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "JP"

    invoke-virtual {v6, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1628
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set country code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_36
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1631
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 1632
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const/4 v8, -0x1

    const-string v9, "ro.product.first_api_level"

    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "S_LSI"

    .line 1634
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7a

    const/16 v8, 0x1d

    if-ge v7, v8, :cond_7a

    const-string v9, "BO"

    const-string v10, "QA"

    const-string v11, "KZ"

    const-string v12, "RU"

    const-string v13, "KP"

    const-string v14, "SY"

    const-string v15, "CU"

    const-string v16, "IR"

    const-string v17, "SD"

    .line 1635
    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountries2GOnly:[Ljava/lang/String;

    goto :goto_90

    :cond_7a
    const-string v9, "QA"

    const-string v10, "KZ"

    const-string v11, "RU"

    const-string v12, "KP"

    const-string v13, "SY"

    const-string v14, "CU"

    const-string v15, "IR"

    const-string v16, "SD"

    .line 1638
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountries2GOnly:[Ljava/lang/String;

    .line 1642
    :goto_90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wifichip : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " first_api_level:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " countryCode "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " length:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountries2GOnly:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v3

    .line 1644
    :goto_c0
    sget-object v7, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountries2GOnly:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_d6

    .line 1645
    aget-object v7, v7, v6

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d3

    const-string v1, " only 2G supported countries"

    .line 1646
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    :cond_d3
    add-int/lit8 v6, v6, 0x1

    goto :goto_c0

    :cond_d6
    move v3, v4

    .line 1652
    :goto_d7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 1653
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    goto :goto_e9

    :cond_e8
    move v4, v3

    :goto_e9
    return v4
.end method

.method public isRegionFor6GCountry()Z
    .registers 6

    .line 1672
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v1, "ro.csc.countryiso_code"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AU"

    .line 1673
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_9e

    const-string v1, "BR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    const-string v1, "NZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    const-string v1, "CR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto/16 :goto_9e

    :cond_2d
    const-string v1, "HK"

    .line 1676
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "S906"

    .line 1677
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "S908"

    .line 1678
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "X706"

    .line 1679
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "X806"

    .line 1680
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "X906"

    .line 1681
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    return v2

    .line 1684
    :cond_68
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const/4 v3, -0x1

    const-string v4, "ro.product.first_api_level"

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result v1

    .line 1685
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    const-string v4, "JPN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    const-string v3, "MA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_83
    const/16 v0, 0x21

    if-lt v1, v0, :cond_88

    return v2

    .line 1688
    :cond_88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    const-string v0, "EUR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9d

    goto :goto_9e

    :cond_9d
    const/4 v2, 0x0

    :cond_9e
    :goto_9e
    return v2
.end method

.method public isWifiApEnabled()Z
    .registers 2

    .line 2248
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2249
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public isWifiApEnabledWithDualBand()Z
    .registers 1

    .line 2199
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2200
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isWifiApEnabledWithDualBand()Z

    move-result p0

    return p0
.end method

.method public isWifiApGuestModeEnabled()Z
    .registers 1

    .line 951
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isWifiApGuestModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isWifiApGuestModeIsolationEnabled()Z
    .registers 1

    .line 961
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isWifiApGuestModeIsolationEnabled()Z

    move-result p0

    return p0
.end method

.method public isWifiApMacAclEnabled()Z
    .registers 1

    .line 2515
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2516
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    move-result p0

    return p0
.end method

.method public isWifiApWpa3Supported()Z
    .registers 3

    .line 1934
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1935
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1939
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public isWifiSharingEnabled()Z
    .registers 4

    .line 2057
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2059
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2061
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    .line 2063
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2064
    throw p0
.end method

.method public isWifiSharingLiteSupported()Z
    .registers 3

    .line 1856
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1857
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharingLite()Z

    move-result p0

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportWifiSharingLite() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isWifiSharingSupported()Z
    .registers 1

    .line 1851
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1852
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10

    monitor-enter p0

    .line 2467
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    const/4 v0, -0x1

    .line 2469
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 2470
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p4, v4, :cond_3c

    if-ne p3, v4, :cond_1d

    .line 2473
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->addStaToAllowListInFramework(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_63

    :cond_1d
    if-ne p3, v3, :cond_35

    .line 2475
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->removeStaInAllowedListInFramework(Ljava/lang/String;)I

    move-result v0

    .line 2476
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 2477
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabled()Z

    move-result p1

    if-eqz p1, :cond_63

    if-ne v0, v4, :cond_63

    .line 2478
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApDisassocSta(Ljava/lang/String;)V

    goto :goto_63

    :cond_35
    if-ne p3, v2, :cond_63

    .line 2481
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->modifyAllowedListInFramework(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_63

    :cond_3c
    if-ne p4, v3, :cond_63

    if-ne p3, v4, :cond_56

    .line 2485
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->addStaToDenyListInFramework(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2486
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 2487
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabled()Z

    move-result p1

    if-eqz p1, :cond_63

    if-ne v0, v4, :cond_63

    .line 2488
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApDisassocSta(Ljava/lang/String;)V

    goto :goto_63

    :cond_56
    if-ne p3, v3, :cond_5d

    .line 2491
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->removeStaInDenyListInFramework(Ljava/lang/String;)I

    move-result v0

    goto :goto_63

    :cond_5d
    if-ne p3, v2, :cond_63

    .line 2493
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->modifyDenyListInFramework(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_63
    :goto_63
    const-string p1, "SemWifiApServiceImpl"

    .line 2497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manageWifiApMacAclList,mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", add_or_delete_modify:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",allow_or_deny:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",retValue:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_1 .. :try_end_91} :catchall_93

    .line 2499
    monitor-exit p0

    return v0

    :catchall_93
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readWifiApMacAclList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2503
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2504
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    .line 2506
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readAllowList()Ljava/util/List;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_29

    monitor-exit p0

    return-object p1

    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_26

    .line 2508
    :try_start_1c
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readDenyList()Ljava/util/List;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_29

    monitor-exit p0

    return-object p1

    :cond_26
    const/4 p1, 0x0

    .line 2511
    monitor-exit p0

    return-object p1

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V
    .registers 7

    if-eqz p1, :cond_60

    if-eqz p2, :cond_58

    .line 1432
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    if-nez v0, :cond_9

    return-void

    .line 1435
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1436
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1437
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "registerWifiApDataUsageCallback uid=%"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 1440
    :cond_28
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$7;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$7;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/os/IBinder;I)V

    const/4 v1, 0x0

    .line 1448
    :try_start_2e
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_40

    .line 1454
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_40
    move-exception p0

    .line 1450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error on linkToDeath - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1430
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1427
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Binder must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V
    .registers 7

    if-eqz p1, :cond_5b

    if-eqz p2, :cond_53

    .line 1354
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1355
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1356
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "registerSemWifiApSmartCallback uid=%"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 1360
    :cond_23
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/os/IBinder;I)V

    const/4 v1, 0x0

    .line 1368
    :try_start_29
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_3b

    .line 1375
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApSmartCallback;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_3b
    move-exception p0

    .line 1370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error on linkToDeath - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1351
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1348
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Binder must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reportBigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2562
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2563
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object p0

    .line 2564
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    return-void
.end method

.method public reportHotspotDumpLogs(Ljava/lang/String;)V
    .registers 2

    .line 2526
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2527
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->addMHSDumpLog(Ljava/lang/String;)V

    return-void
.end method

.method public requestStopAutohotspotAdvertisement(Z)V
    .registers 5

    .line 1194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1195
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1197
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    if-eqz v2, :cond_11

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    .line 1198
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setCancelledByUser(Z)V

    .line 1200
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    if-eqz p0, :cond_18

    .line 1201
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotDiscovery()V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1c

    .line 1204
    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    throw p0
.end method

.method public resetSoftAp(Landroid/os/Message;)V
    .registers 3

    .line 2315
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    if-eqz p1, :cond_15

    .line 2317
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 2318
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/SoftApConfiguration;

    .line 2319
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_1c

    .line 2320
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->resetSoftAp(Landroid/net/wifi/SoftApConfiguration;)V

    goto :goto_1c

    .line 2323
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_1c

    .line 2324
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->resetSoftAp()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public declared-synchronized runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 1998
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1999
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_af

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2000
    monitor-exit p0

    return-object v1

    .line 2002
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_16

    .line 2003
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->bindNetdNativeService()V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_af

    :cond_16
    :try_start_16
    const-string v0, ""

    const-string v2, "VPN_RULES"

    const/4 v3, 0x0

    .line 2009
    :goto_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3f

    .line 2010
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    rem-int/lit8 v5, v3, 0x9

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    xor-int/2addr v0, v5

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_3f
    const-string v2, "SemWifiApServiceImpl"

    .line 2012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runCmd: cmd = {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "} param = {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    const-string v0, "SemWifiApServiceImpl"

    .line 2014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runCmd: ret = {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_79

    const-string v3, "OK"

    goto :goto_7a

    :cond_79
    move-object v3, v1

    :goto_7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_89} :catch_8a
    .catchall {:try_start_16 .. :try_end_89} :catchall_af

    goto :goto_ad

    :catch_8a
    move-exception v0

    :try_start_8b
    const-string v2, "SemWifiApServiceImpl"

    .line 2016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to run command: cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_8b .. :try_end_ad} :catchall_af

    .line 2018
    :goto_ad
    monitor-exit p0

    return-object v1

    :catchall_af
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAdvancedAutohotspotConnectSettings(I)V
    .registers 4

    .line 1222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1224
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    if-eqz p0, :cond_b

    .line 1225
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setAdvnacedConnectionSetting(I)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 1228
    :cond_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1229
    throw p0
.end method

.method public setAdvancedAutohotspotLCDSettings(I)V
    .registers 4

    .line 1273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1275
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    if-eqz p0, :cond_b

    .line 1276
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setAdvnacedConnectionLcdOffSetting(I)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 1279
    :cond_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1280
    throw p0
.end method

.method public setAntMode(I)V
    .registers 2

    .line 1744
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1746
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_f

    .line 1747
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setSoftApAntMode(I)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p0

    .line 1750
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method

.method public setArdkPowerSaveMode(Z)V
    .registers 2

    .line 2204
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2205
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_a

    .line 2206
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setArdkPowerSaveMode(Z)I

    :cond_a
    return-void
.end method

.method public setAutohotspotToastMessage(I)V
    .registers 5

    .line 1139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1142
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1143
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->notifyFromSettings(I)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1146
    :cond_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1147
    throw p0
.end method

.method public setHotspotAntMode(I)V
    .registers 4

    .line 1755
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1757
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_20

    .line 1758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_HOTSPOT_ANTENNA_MODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p0

    .line 1761
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_20
    return-void
.end method

.method public setIndoorChannelsToDriver(Z)V
    .registers 7

    .line 458
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApServiceImpl"

    if-eqz v0, :cond_ab

    .line 459
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_ab

    :cond_14
    const/4 v2, 0x0

    if-eqz p1, :cond_62

    const-string v2, "Setting indoor channel info in driver"

    .line 466
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_32

    const-string p0, "Wifi is off. So, not setting indoor channels to driver."

    .line 469
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    const-string v2, " "

    .line 472
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 473
    array-length v2, v2

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of indoor channels = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indoor channel details(<ch1> <ch2> ...) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_62
    const-string v0, ""

    :goto_64
    const-string v3, "sending cmd SEC_COMMAND_ID_SET_INDOOR_CHANNELS to WiFiNative to set/reset indoor ch"

    .line 477
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6e

    const-string p1, "set"

    goto :goto_70

    :cond_6e
    const-string p1, "reset"

    .line 480
    :goto_70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setIndoorChannels(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_96

    .line 481
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Indoor channels "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " successfully"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 483
    :cond_96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error! Indoor channels not "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_aa
    return-void

    :cond_ab
    :goto_ab
    const-string p0, "Country doesn\'t support indoor channel."

    .line 460
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const-string v5, "1"

    const-string v6, ""

    const-string v7, "false"

    const-string v8, "net.redirect_socket_calls.hooked"

    .line 2069
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2070
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 2071
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v10

    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "android"

    .line 2072
    invoke-virtual {v9, v11, v10}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2073
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setLocalOnlyHotspotEnabled clientPkgName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "SemWifiApServiceImpl"

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_68

    .line 2075
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "check network stack for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkStackPermission()V

    .line 2080
    :cond_68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2082
    :try_start_6c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " setLocalOnlyHotspotEnabled "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ssid:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " band:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    .line 2083
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    .line 2084
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "redirect_socket_calls_hooked = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_6c .. :try_end_b2} :catchall_21d

    const-string v9, "vendor.wifiap.twt"

    const-string v11, "true"

    if-nez v1, :cond_f1

    .line 2086
    :try_start_b8
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-eqz v1, :cond_20e

    const-string v1, "call mReservation.close()"

    .line 2087
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "0"

    .line 2088
    invoke-static {v9, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V

    const/4 v1, 0x0

    .line 2090
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 2091
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20e

    .line 2092
    invoke-static {v8, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recover redirect_socket_calls_hooked as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20e

    .line 2097
    :cond_f1
    iget v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLOHSState:I

    const/16 v12, 0xe

    move-object/from16 v16, v7

    const/16 v7, 0xb

    if-eq v1, v12, :cond_fd

    if-ne v1, v7, :cond_103

    :cond_fd
    iget v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApState:I

    if-eq v1, v7, :cond_10d

    if-eq v1, v12, :cond_10d

    :cond_103
    const-string v0, " mhs , lohs is not disabled"

    .line 2099
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_b8 .. :try_end_108} :catchall_21d

    .line 2193
    :goto_108
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :cond_10d
    const-string v1, " ssid is wrong"

    if-eqz v2, :cond_218

    .line 2102
    :try_start_111
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_119

    goto/16 :goto_218

    .line 2106
    :cond_119
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    const/4 v12, 0x1

    if-lt v7, v12, :cond_213

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    const/16 v12, 0x20

    if-le v7, v12, :cond_12c

    goto/16 :goto_213

    .line 2111
    :cond_12c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    .line 2112
    new-instance v7, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v7, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 2113
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v12, "wifi_ap_disable_random_mac"

    move-object/from16 v17, v8

    const/4 v8, 0x0

    invoke-static {v1, v12, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_149

    const/4 v1, 0x1

    goto :goto_14a

    :cond_149
    const/4 v1, 0x0

    .line 2114
    :goto_14a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDisableRandomMac:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_164

    const/4 v1, 0x0

    .line 2116
    invoke-virtual {v7, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2119
    :cond_164
    invoke-virtual {v7, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_167
    .catchall {:try_start_111 .. :try_end_167} :catchall_21d

    const-string v1, "com.samsung.android.app.xr.sample"

    const-string v2, "com.samsung.android.app.ar.phoneservice"

    const/4 v8, 0x6

    if-eqz v3, :cond_1aa

    .line 2121
    :try_start_16e
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_175

    goto :goto_1aa

    .line 2124
    :cond_175
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/16 v12, 0x8

    if-lt v6, v12, :cond_1a3

    .line 2125
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/16 v12, 0x3f

    if-le v6, v12, :cond_188

    goto :goto_1a3

    :cond_188
    const/4 v6, 0x3

    if-ne v4, v8, :cond_18f

    .line 2131
    invoke-virtual {v7, v3, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_193

    :cond_18f
    const/4 v12, 0x1

    .line 2133
    invoke-virtual {v7, v3, v12}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2135
    :goto_193
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19f

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1af

    .line 2136
    :cond_19f
    invoke-virtual {v7, v3, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_1af

    :cond_1a3
    :goto_1a3
    const-string v0, " password is wrong"

    .line 2126
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_108

    :cond_1aa
    :goto_1aa
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2122
    invoke-virtual {v7, v3, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_1af
    :goto_1af
    const/4 v3, 0x5

    if-ne v4, v3, :cond_1bc

    .line 2141
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$8;

    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$8;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    invoke-virtual {v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    :goto_1ba
    const/4 v3, 0x1

    goto :goto_1d0

    :cond_1bc
    if-ne v4, v8, :cond_1c7

    .line 2145
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;

    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    invoke-virtual {v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_1ba

    .line 2149
    :cond_1c7
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$10;

    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$10;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    invoke-virtual {v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_1ba

    .line 2154
    :goto_1d0
    invoke-virtual {v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2155
    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mMHSExConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 2157
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e5

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_201

    .line 2158
    :cond_1e5
    invoke-static {v9, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vendor.wifiap.axmode"

    .line 2159
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_201

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    .line 2161
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set redirect_socket_calls_hooked as false"

    .line 2162
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_201
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mMHSExConfig:Landroid/net/wifi/SoftApConfiguration;

    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$11;

    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$11;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->startLocalOnlyHotspot(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    :try_end_20e
    .catchall {:try_start_16e .. :try_end_20e} :catchall_21d

    .line 2193
    :cond_20e
    :goto_20e
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    .line 2107
    :cond_213
    :goto_213
    :try_start_213
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_108

    .line 2103
    :cond_218
    :goto_218
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21b
    .catchall {:try_start_213 .. :try_end_21b} :catchall_21d

    goto/16 :goto_108

    :catchall_21d
    move-exception v0

    .line 2193
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2194
    throw v0
.end method

.method public setMHSConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1830
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1832
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v0

    const-string v1, "error"

    if-nez v0, :cond_e

    return-object v1

    .line 1837
    :cond_e
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "SemWifiApServiceImpl"

    .line 1838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "semSetMHSConfig()  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->removeSecurityLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    .line 1845
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_46
    return-object v1
.end method

.method public setPowerSavingTime(I)V
    .registers 3

    .line 1784
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1786
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTrafficPoller()Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1787
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTrafficPoller()Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->setPowerSavingTime(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p0

    .line 1790
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    :goto_19
    return-void
.end method

.method public setProvisionSuccess(Z)Z
    .registers 5

    .line 1967
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provision variable set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, "wifi_ap_provision_success"

    if-eqz p1, :cond_26

    .line 1970
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_2e

    .line 1973
    :cond_26
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {p1, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    :goto_2e
    return v0
.end method

.method public setRVFmodeStatus(I)V
    .registers 2

    return-void
.end method

.method public setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 6

    .line 855
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 856
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 858
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientPkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiApServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_52

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check network stack for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkStackPermission()V

    .line 865
    :cond_52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 867
    :try_start_56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    if-eqz p0, :cond_5d

    .line 868
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_61

    .line 871
    :cond_5d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_61
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 872
    throw p0
.end method

.method public setWifiApClientDataPaused(Ljava/lang/String;Z)V
    .registers 4

    .line 894
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 895
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->setWifiApClientDataPaused(Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public setWifiApClientMobileDataLimit(Ljava/lang/String;J)V
    .registers 5

    .line 882
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 883
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->setClientDataLimit(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public setWifiApClientTimeLimit(Ljava/lang/String;J)V
    .registers 5

    .line 888
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 889
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->setClientTimeLimit(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public setWifiApConfigurationToDefault()V
    .registers 3

    .line 2050
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2051
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    if-eqz v0, :cond_15

    .line 2052
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public setWifiApDailyDataLimit(J)V
    .registers 4

    .line 935
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 936
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->setDailyMhsDataLimit(J)V

    :cond_11
    return-void
.end method

.method public setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z
    .registers 13

    .line 653
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 654
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 656
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientPkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SemWifiApServiceImpl"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_52

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check network stack for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkStackPermission()V

    .line 663
    :cond_52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const-string v0, "wifiap_persistent_state"

    const/4 v2, 0x0

    if-eqz p2, :cond_2c3

    .line 666
    :try_start_5b
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v7

    .line 667
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApBlocked()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_76

    const-string p1, "MHS is disabled due to Knox MDM Restrcition Policy"

    .line 668
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "MDM block MHS"

    .line 669
    invoke-direct {p0, v9, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->insertHotSpotEnabledHistory(ZLjava/lang/String;)V
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_30d

    .line 823
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 672
    :cond_76
    :try_start_76
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v8

    if-nez v8, :cond_92

    .line 673
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isDataSaverModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_92

    const-string p1, "MHS is disabled due to DataSaverModeEnabled"

    .line 674
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "datasaver block mhs"

    .line 675
    invoke-direct {p0, v9, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->insertHotSpotEnabledHistory(ZLjava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_76 .. :try_end_8e} :catchall_30d

    .line 823
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 679
    :cond_92
    :try_start_92
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-direct {p0, v9, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->insertBigdataForHotSpotEnabled(ZI)V

    .line 680
    invoke-direct {p0, v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->insertGsimForHotSpotEnabled(Z)V

    const/16 v8, 0xd

    if-eq v7, v8, :cond_2ab

    const/16 v8, 0xc

    if-ne v7, v8, :cond_a6

    goto/16 :goto_2ab

    .line 694
    :cond_a6
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_ef

    .line 695
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isWifiStateChangeAllowed(I)Z

    move-result v7

    if-nez v7, :cond_ef

    .line 696
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "wifi_state"

    const/16 v0, 0xe

    .line 697
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "previous_wifi_state"

    const/16 v0, 0xb

    .line 698
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"

    .line 699
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 700
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p2, "com.android.settings"

    .line 702
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p2, "com.android.systemui"

    .line 704
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_eb
    .catchall {:try_start_92 .. :try_end_eb} :catchall_30d

    .line 823
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 708
    :cond_ef
    :try_start_ef
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDevicePolicyManager()Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isAllowToUseHotspot()Z

    move-result v7
    :try_end_f9
    .catchall {:try_start_ef .. :try_end_f9} :catchall_30d

    if-nez v7, :cond_ff

    .line 823
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 711
    :cond_ff
    :try_start_ff
    sget-boolean v7, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->PRODUCT_DEV:Z

    if-eqz v7, :cond_142

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isJdmProduct()Z

    move-result v7

    if-nez v7, :cond_142

    .line 712
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->checkSoftApFileBrokenStatus()I

    move-result v7

    if-ne v7, v9, :cond_142

    .line 713
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 716
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SoftAp.info file is broken "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    :cond_142
    const/4 p2, 0x0

    if-nez p1, :cond_15d

    .line 721
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p2

    .line 722
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    if-nez v1, :cond_171

    .line 723
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isNotAllowedOpenMobileHotspot(I)Z

    move-result v1
    :try_end_157
    .catchall {:try_start_ff .. :try_end_157} :catchall_30d

    if-eqz v1, :cond_171

    .line 823
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 726
    :cond_15d
    :try_start_15d
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    if-nez v1, :cond_171

    .line 727
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isNotAllowedOpenMobileHotspot(I)Z

    move-result v1
    :try_end_16b
    .catchall {:try_start_15d .. :try_end_16b} :catchall_30d

    if-eqz v1, :cond_171

    .line 823
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_171
    if-nez p2, :cond_17e

    .line 731
    :try_start_173
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    goto :goto_188

    .line 733
    :cond_17e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 740
    :goto_188
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    move-result p2

    if-eqz p2, :cond_1be

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1be

    .line 741
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getIndoorSupportStatus()Z

    move-result p2

    if-eqz p2, :cond_1bb

    const-string p2, "Wifi is connected to indoor channel, so discconnect wifi"

    .line 742
    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getAospWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->disconnect()Z
    :try_end_1aa
    .catchall {:try_start_173 .. :try_end_1aa} :catchall_30d

    const-wide/16 v7, 0x12c

    .line 745
    :try_start_1ac
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1af
    .catch Ljava/lang/InterruptedException; {:try_start_1ac .. :try_end_1af} :catch_1b0
    .catchall {:try_start_1ac .. :try_end_1af} :catchall_30d

    goto :goto_1bb

    :catch_1b0
    move-exception p2

    .line 747
    :try_start_1b1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 748
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 751
    :cond_1bb
    :goto_1bb
    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setIndoorChannelsToDriver(Z)V

    .line 753
    :cond_1be
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "hotspot_enabled_history"

    const-string v3, "1"

    invoke-static {p2, v1, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result p2

    if-eqz p2, :cond_1e0

    if-eqz p1, :cond_1e0

    .line 755
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p2

    if-ne p2, v9, :cond_1e0

    .line 756
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v1, "vendor.wifiap.5gindoor"

    const-string v3, "0"

    invoke-virtual {p2, v1, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_1e0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp6GBasedOnCountry()Z

    move-result p2

    if-eqz p2, :cond_277

    if-eqz p1, :cond_1f4

    .line 762
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p2

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1f2

    :goto_1f0
    move p2, v9

    goto :goto_201

    :cond_1f2
    move p2, v2

    goto :goto_201

    .line 764
    :cond_1f4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p2

    .line 765
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p2

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1f2

    goto :goto_1f0

    :goto_201
    if-eqz p2, :cond_277

    .line 768
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    if-eqz p2, :cond_277

    .line 769
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_277

    .line 770
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p2

    .line 771
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040f4f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 772
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v7, "CountryISO"

    invoke-virtual {v3, v7}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringCscFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_242

    const-string v7, "JP"

    .line 773
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_242

    .line 774
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x1040f50

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 776
    :cond_242
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WifiConnected freq:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",country:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x141e

    if-lt p2, v3, :cond_277

    const/16 v3, 0x16da

    if-gt p2, v3, :cond_277

    .line 779
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 786
    :cond_277
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->startTetheredHotspot(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result p1

    if-nez p1, :cond_298

    const-string p2, "Mainline Softap is not enabled"

    .line 788
    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    move-result p2

    if-eqz p2, :cond_2a7

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2a7

    .line 791
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setIndoorChannelsToDriver(Z)V

    goto :goto_2a7

    .line 793
    :cond_298
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result p2

    if-eqz p2, :cond_2a7

    .line 794
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, v0, v9}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_2a7
    .catchall {:try_start_1b1 .. :try_end_2a7} :catchall_30d

    .line 823
    :cond_2a7
    :goto_2a7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 691
    :cond_2ab
    :goto_2ab
    :try_start_2ab
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " skip due to  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bf
    .catchall {:try_start_2ab .. :try_end_2bf} :catchall_30d

    .line 823
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    .line 798
    :cond_2c3
    :try_start_2c3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->insertBigdataForHotSpotEnabled(ZI)V

    .line 799
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->insertGsimForHotSpotEnabled(Z)V

    .line 807
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2da

    .line 808
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->resetWifiApProvisioningDB()V

    .line 810
    :cond_2da
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result p1

    if-eqz p1, :cond_2e9

    .line 811
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 814
    :cond_2e9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    move-result p1

    if-eqz p1, :cond_2fc

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2fc

    .line 815
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setIndoorChannelsToDriver(Z)V

    .line 817
    :cond_2fc
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    if-eqz p1, :cond_303

    .line 818
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->stopHotspotDebugLog()V

    .line 820
    :cond_303
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->stopSoftAp()Z

    move-result p0
    :try_end_309
    .catchall {:try_start_2c3 .. :try_end_309} :catchall_30d

    .line 823
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_30d
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 824
    throw p0
.end method

.method public setWifiApGuestModeEnabled(Z)V
    .registers 2

    .line 956
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApGuestModeEnabled(Z)V

    return-void
.end method

.method public setWifiApGuestModeIsolationEnabled(Z)V
    .registers 2

    .line 966
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApGuestModeIsolationEnabled(Z)V

    return-void
.end method

.method public setWifiApGuestPassword(Ljava/lang/String;)V
    .registers 2

    .line 941
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApGuestPassword(Ljava/lang/String;)V

    return-void
.end method

.method public setWifiApIsolate(Z)V
    .registers 2

    .line 2430
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    return-void
.end method

.method public setWifiApMacAclEnable(Z)V
    .registers 4

    .line 2520
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2521
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->setWifiApMacAclEnable(Z)V

    .line 2522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApMacAclList  setWifiApMacAclEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    return-void
.end method

.method public setWifiApMacAclMode(I)V
    .registers 4

    .line 2442
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2443
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->setWifiApMacAclMode(I)V

    .line 2444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApMacAclList  setWifiApMacAclMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    return-void
.end method

.method public setWifiApMaxClient(I)V
    .registers 4

    .line 2307
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2308
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_1b

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_MAXCLIENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    :cond_1b
    return-void
.end method

.method public setWifiApMaxClientToFramework(I)V
    .registers 2

    .line 2239
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2240
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApMaxClientToFramework(I)V

    return-void
.end method

.method public setWifiApWarningActivityRunning(I)V
    .registers 2

    .line 1259
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_7

    .line 1260
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setWifiApWarningActivityRunning(I)V

    :cond_7
    return-void
.end method

.method public setWifiApWpsPbc(Z)V
    .registers 2

    .line 2453
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    return-void
.end method

.method public setWifiSettingsForegroundState(I)V
    .registers 6

    .line 1284
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1285
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 1286
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiSettingsForegroundState clientPkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiApServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4f

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check network stack for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkStackPermission()V

    .line 1293
    :cond_4f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1295
    :try_start_53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    if-eqz p0, :cond_5a

    .line 1296
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setWifiSettingsForegroundState(I)V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5e

    .line 1299
    :cond_5a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1300
    throw p0
.end method

.method public setWifiSharingEnabled(Z)Z
    .registers 11

    .line 2022
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2023
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SemWifiApServiceImpl"

    if-nez v0, :cond_12

    const-string p0, "Failed: Does not support Wi-Fi Sharing."

    .line 2024
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_12
    const-string v0, "MHWS"

    .line 2029
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x1

    const-string v6, "wifi_ap_wifi_sharing"

    if-eqz p1, :cond_27

    .line 2032
    :try_start_1d
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7, v6, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string v1, "ON"

    goto :goto_30

    .line 2035
    :cond_27
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string v1, "OFF"

    .line 2038
    :goto_30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wi-Fi Sharing mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " wifiApState: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApState:I

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2042
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5d
    .catchall {:try_start_1d .. :try_end_5d} :catchall_61

    .line 2044
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_61
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2045
    throw p0
.end method

.method public startMcfClientMHSDiscovery(Z)I
    .registers 5

    .line 1037
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1039
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1041
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object v2

    if-eqz v2, :cond_27

    if-eqz p1, :cond_1c

    .line 1043
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->startDiscovery()I

    move-result p0

    goto :goto_28

    .line 1045
    :cond_1c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->stopDiscovery()I

    move-result p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_2c

    goto :goto_28

    :cond_27
    const/4 p0, -0x1

    .line 1049
    :goto_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1050
    throw p0
.end method

.method public startMcfMHSAdvertisement(Z)I
    .registers 5

    .line 1055
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1057
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1059
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object v2

    if-eqz v2, :cond_27

    if-eqz p1, :cond_1c

    .line 1061
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->startAdvertisement()I

    move-result p0

    goto :goto_28

    .line 1063
    :cond_1c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->stopAdvertisement()I

    move-result p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_2c

    goto :goto_28

    :cond_27
    const/4 p0, -0x1

    .line 1067
    :goto_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1068
    throw p0
.end method

.method public supportWifiAp5G()Z
    .registers 1

    .line 1598
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    const/4 p0, 0x0

    return p0
.end method

.method public supportWifiAp5GBasedOnCountry()Z
    .registers 8

    .line 1570
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1571
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    const/4 v1, 0x0

    const-string v2, "SemWifiApServiceImpl"

    const/4 v3, 0x1

    if-eqz v0, :cond_1b

    .line 1572
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v4, "vendor.wifiap.5gbandcountry"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1b

    const-string p0, "MHS vendor.wifiap.5gbandcountry is true"

    .line 1573
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1577
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "wifi_ap_chip_support5g_baseon_country"

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    const-string v6, "wifi_ap_chip_support5g"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MHS based on country"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",chip support"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6a

    const-string v2, "na"

    .line 1581
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    goto :goto_6a

    .line 1585
    :cond_56
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1586
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    if-eqz v0, :cond_69

    .line 1587
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isRegionFor5GCountry()Z

    move-result p0

    if-eqz p0, :cond_69

    move v1, v3

    :cond_69
    return v1

    .line 1583
    :cond_6a
    :goto_6a
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isRegionFor5GCountry()Z

    move-result p0

    return p0
.end method

.method public supportWifiAp6GBasedOnCountry()Z
    .registers 5

    .line 1661
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 1662
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 1663
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v3, "vendor.wifiap.6gbandcountry"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1b

    const-string p0, "SemWifiApServiceImpl"

    const-string v0, "MHS vendor.wifiap.6gbandcountry is true"

    .line 1664
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1668
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportMobileAp6G()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isRegionFor6GCountry()Z

    move-result p0

    if-eqz p0, :cond_2a

    move v1, v2

    :cond_2a
    return v1
.end method

.method public supportWifiSharing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public supportWifiSharingLite()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public unRegisterWifiApDataUsageCallback(I)V
    .registers 5

    .line 1471
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    if-nez v0, :cond_5

    return-void

    .line 1474
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1475
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1476
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "unRegisterWifiApDataUsageCallback uid=%"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 1479
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterWifiApSmartCallback(I)V
    .registers 5

    .line 1400
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1401
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1402
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "unregisterWifiApSmartCallback uid=%"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 1405
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateHostapdMacList(I)V
    .registers 2

    .line 2460
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    return-void
.end method

.method public wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;
    .registers 2

    .line 998
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 999
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->backUpClientDataUsageSettingsInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public wifiApBleClientRole(Z)Z
    .registers 5

    .line 1151
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1155
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1156
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->setWifiApSmartClient(Z)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 1159
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    throw p0
.end method

.method public wifiApBleD2DClientRole(Z)Z
    .registers 5

    .line 1513
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1517
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1518
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->wifiApBleD2DClientRole(Z)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 1521
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1522
    throw p0
.end method

.method public wifiApBleD2DMhsRole(Z)Z
    .registers 5

    .line 1527
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1531
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1532
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->wifiApBleD2DMhsRole(Z)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 1535
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1536
    throw p0
.end method

.method public wifiApBleMhsRole(Z)Z
    .registers 5

    .line 1165
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 1166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1169
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1170
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->setWifiApSmartMHS(Z)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 1173
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1174
    throw p0
.end method

.method public wifiApDisassocSta(Ljava/lang/String;)V
    .registers 3

    .line 2299
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2300
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->setAccessPointDisassocSta(Ljava/lang/String;)V

    .line 2301
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    if-eqz p0, :cond_15

    .line 2302
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->disassociateSTA(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    .registers 3

    .line 1006
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1007
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->restoreClientDataUsageSettingsInfo(Ljava/lang/String;)V

    :cond_11
    return-void
.end method
