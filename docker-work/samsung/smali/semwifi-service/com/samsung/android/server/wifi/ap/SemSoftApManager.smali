.class public Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
.super Ljava/lang/Object;
.source "SemSoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final MHSDBG:Z

.field public static final MHS_NR_MMWAVE_SAR_BACKOFF_DISABLED:I = 0x3

.field public static final MHS_NR_MMWAVE_SAR_BACKOFF_ENABLED:I = 0x4

.field public static final MHS_NR_SUB6_SAR_BACKOFF_DISABLED:I = 0x5

.field public static final MHS_NR_SUB6_SAR_BACKOFF_ENABLED:I = 0x6

.field public static final MHS_SAR_BACKOFF_DISABLED:I = 0x8

.field public static final MHS_SAR_BACKOFF_ENABLED:I = 0x9

.field private static final SUPPORTMHS11AX_SPF:Z = false

.field private static final SUPPORTMHSPOWERSAVEFEATURE_SPF:Z = false

.field private static final SUPPORTMHSSARBACKOFF:Z = false

.field public static final SUPPORTMOBILEAPONTRIGGER_CSC:Z

.field public static final SUPPORTMOBILEAPONTRIGGER_SPF:Z = true

.field private static final TAG:Ljava/lang/String; = "SemSoftApManager"

.field private static final WIFIAP_WARNING_CLASS:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

.field private static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field private static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static final WIFIAP_WARNING_STOP_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

.field static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2

.field private static isRegistered:Z = false

.field private static mIsTurnOffScanMode:Z

.field private static mIsTurnOnScanMode:Z

.field private static mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;


# instance fields
.field private final RESET_SOFTAP_TIME_OUT:I

.field private final SOFTAP_CELLULAR_DUN_TIME_OUT:I

.field private final TURN_OFF_SCAN_TIME_OUT:I

.field private isDunCheckRequired:Z

.field private isUpstreamCellular:Z

.field private mAirplaneModeOn:Z

.field private mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mApInterfaceName:Ljava/lang/String;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCallbackSoftApState:I

.field private mCellularDUNCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

.field private mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

.field private mHostapdWorkThread:Landroid/os/HandlerThread;

.field private mIsWifiSharingModeEnabled:Z

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCountryCode:Ljava/lang/String;

.field private mP2pConnected:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetSoftAp:Z

.field private mSemSoftApDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSkipWifiSharingWhenNetworkCountryChange:Z

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mSoftApCapability:Landroid/net/wifi/SoftApCapability;

.field private mSoftApMode:I

.field private mSoftApState:I

.field private mTetheringManager:Landroid/net/TetheringManager;

.field private mWifiApPowerSaveImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

.field private mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

.field private mWifiApWarningActivityState:I

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiState:I

.field private old2GhzChannel:I

.field private old5GhzChannel:I

.field private old6GhzChannel:I

.field private oldCountryCode:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isDunCheckRequired:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisUpstreamCellular(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUpstreamCellular:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAospClientsHashMap(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiSharingModeEnabled(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/Network;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pConnected(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mP2pConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResetSoftAp(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/wifi/SemWifiManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/SoftApCapability;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApMode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old2GhzChannel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old5GhzChannel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old6GhzChannel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->oldCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isDunCheckRequired:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisUpstreamCellular(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUpstreamCellular:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/Network;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmP2pConnected(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mP2pConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResetSoftAp(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSoftApMode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old2GhzChannel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old5GhzChannel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old6GhzChannel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->oldCountryCode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAOSPWifiManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/WifiManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/ConnectivityManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleModemPowerBackoff(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleModemPowerBackoff(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;IILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleSoftApState(IILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSoftapEnable(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleSoftapEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpersistWifiApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->persistWifiApState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCSC_CONFIG_OP_BRANDING()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetMHSDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->MHSDBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsTurnOnScanMode()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOnScanMode:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsTurnOnScanMode(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOnScanMode:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 68
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->MHSDBG:Z

    .line 86
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportMobileApOnTrigger"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->SUPPORTMOBILEAPONTRIGGER_CSC:Z

    .line 90
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    const/4 v0, 0x0

    .line 109
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 122
    sput-boolean v2, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOnScanMode:Z

    .line 123
    sput-boolean v2, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOffScanMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 7

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    .line 79
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    .line 80
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    const/4 v1, 0x4

    .line 93
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiState:I

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const/16 v2, 0x64

    .line 111
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->RESET_SOFTAP_TIME_OUT:I

    const/16 v2, 0x65

    .line 112
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->TURN_OFF_SCAN_TIME_OUT:I

    const/16 v2, 0x66

    .line 113
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->SOFTAP_CELLULAR_DUN_TIME_OUT:I

    .line 119
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApWarningActivityState:I

    .line 121
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mP2pConnected:Z

    .line 124
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetworkCountryCode:Ljava/lang/String;

    .line 125
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    .line 126
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->oldCountryCode:Ljava/lang/String;

    .line 127
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old6GhzChannel:I

    .line 128
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old5GhzChannel:I

    .line 129
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old2GhzChannel:I

    const/4 v1, 0x1

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isDunCheckRequired:Z

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUpstreamCellular:Z

    .line 137
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 323
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCellularDUNCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 740
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemSoftApDumpLogs:Ljava/util/List;

    .line 358
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 359
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 360
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 361
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 362
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "HostapdWorkThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkThread:Landroid/os/HandlerThread;

    .line 363
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 364
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    return-void
.end method

.method private disableSoftap()V
    .registers 5

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableSoftap : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mResetSoftAp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSkipWifiSharingWhenNetworkCountryChange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    if-eqz v0, :cond_4f

    const-string v0, "ro.csc.country_code"

    .line 856
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_48

    .line 857
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4f

    .line 859
    :cond_48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 862
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 863
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->unRegisterSoftApCallback()V

    :cond_5c
    const/4 v0, 0x0

    .line 871
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    return-void
.end method

.method private dualSoftApScanModeReset()V
    .registers 3

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DualSoftApScanModeReset  isScanAlwaysAvailable :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsTurnOffScanMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOffScanMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOffScanMode:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    .line 1499
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOffScanMode:Z

    .line 1500
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    :cond_35
    return-void
.end method

.method private enableSoftap()V
    .registers 3

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSoftap : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "isRegisteredHostapdAidl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->isRegisteredHostapdAidl()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v0

    if-nez v0, :cond_33

    .line 844
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->registerSoftApCallback()V

    :cond_33
    return-void
.end method

.method private getAOSPWifiManager()Landroid/net/wifi/WifiManager;
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 506
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 508
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 511
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 512
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 514
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1b

    const-string v0, "SemSoftApManager"

    const-string v1, "mConnectivityManager is null"

    .line 515
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private getWifiSavedState()I
    .registers 2

    .line 554
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_saved_state"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    const/4 p0, 0x0

    return p0
.end method

.method private handleModemPowerBackoff(I)V
    .registers 10

    const/16 v0, 0xb

    const/16 v1, 0xd

    const-string v2, "SemSoftApManager"

    if-ne p1, v1, :cond_e

    .line 876
    :try_start_8
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V

    goto :goto_1b

    :cond_e
    if-ne p1, v0, :cond_1b

    .line 878
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_1b

    :catch_16
    const-string v3, "Failed to note battery stats in wifi"

    .line 881
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1b
    :goto_1b
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2b

    .line 884
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    sput-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    :cond_2b
    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne p1, v1, :cond_58

    .line 887
    sget-object v5, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 889
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v5

    if-eq v5, v3, :cond_4f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4f

    const/4 v6, 0x3

    if-ne v5, v6, :cond_44

    goto :goto_4f

    :cond_44
    if-ne v5, v4, :cond_58

    const-string v5, "in 5G FREQUENCY_RANGE_MMWAVE mode"

    .line 896
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    goto :goto_58

    :cond_4f
    :goto_4f
    const-string v5, "in 5G NR_5G_BEARER_STATUS_ALLOCATED mode"

    .line 893
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x6

    .line 894
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    .line 902
    :cond_58
    :goto_58
    sget-boolean v5, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->MHSDBG:Z

    if-eqz v5, :cond_72

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MHS SPF backoff : true MHS CSC backoff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->SUPPORTMOBILEAPONTRIGGER_CSC:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    const-string v5, "vold.encrypt_progress"

    .line 904
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    const/16 v5, 0xe

    if-eq p1, v1, :cond_88

    if-eq p1, v0, :cond_88

    if-ne p1, v5, :cond_c3

    :cond_88
    const-string v6, "isemtelephony"

    .line 908
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v6

    const/4 v7, 0x0

    if-ne p1, v1, :cond_96

    goto :goto_97

    :cond_96
    move v3, v7

    .line 914
    :goto_97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->syncGetWifiApStateByName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", new api SAR backOffState = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_c3

    .line 917
    :try_start_b4
    invoke-interface {v6, v4, v3}, Lcom/android/internal/telephony/ISemTelephony;->setTransmitPowerWithFlag(IZ)Z
    :try_end_b7
    .catch Ljava/lang/NullPointerException; {:try_start_b4 .. :try_end_b7} :catch_be
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_c3

    :catch_b8
    const-string p0, "RemoteException occurs in setTransmitPowerWithFlag"

    .line 922
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    :catch_be
    const-string p0, "NullPointerException, as ITelephony object is null"

    .line 920
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    :goto_c3
    return-void
.end method

.method private handleSoftApState(IILjava/lang/String;I)V
    .registers 7

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->syncGetWifiApStateByName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " apiface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " reason "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "SemSoftApManager"

    .line 930
    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_84

    return-void

    .line 962
    :pswitch_48
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->disableSoftap()V

    if-ne p2, p4, :cond_5a

    .line 963
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->isRegisteredHostapdAidl()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 964
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->stopHostapdAidl()V

    :cond_5a
    return-void

    .line 955
    :pswitch_5b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-void

    :pswitch_5f
    if-ne p2, v0, :cond_64

    .line 947
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleWifiSharingSoftap(Z)V

    :cond_64
    if-ne p2, p4, :cond_73

    .line 949
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->isRegisteredHostapdAidl()Z

    move-result p1

    if-nez p1, :cond_73

    .line 950
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->setUpHostapdAidl()I

    .line 952
    :cond_73
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->enableSoftap()V

    return-void

    :pswitch_77
    if-ne p2, v0, :cond_7d

    const/4 p1, 0x0

    .line 937
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleWifiSharingSoftap(Z)V

    .line 939
    :cond_7d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 943
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->disableSoftap()V

    return-void

    :pswitch_data_84
    .packed-switch 0xb
        :pswitch_77
        :pswitch_5f
        :pswitch_5b
        :pswitch_48
    .end packed-switch
.end method

.method private handleSoftapEnable()V
    .registers 3

    .line 668
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUsbTethered()Z

    move-result v0

    if-nez v0, :cond_17

    .line 669
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result p0

    if-nez p0, :cond_17

    const-string p0, "SemSoftApManager"

    const-string v0, "enabled startTetheredHotspot : failed"

    .line 670
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method private handleWifiSharingSoftap(Z)V
    .registers 5

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiSharingSoftap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWifiSharingModeEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSkipWifiSharingWhenNetworkCountryChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " csc_op "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getWifiSavedState() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiSavedState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isWifiOn() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isWifiOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mResetSoftAp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemSoftApManager"

    .line 678
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemRilUtil;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string p0, "wifionly do not handle the wifi state"

    .line 680
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_64
    const/4 v0, 0x0

    if-eqz p1, :cond_7d

    .line 684
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    if-eqz p1, :cond_71

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->checkDualBandHostapd()Z

    move-result p1

    if-eqz p1, :cond_af

    .line 685
    :cond_71
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isWifiOn()Z

    move-result p1

    if-eqz p1, :cond_af

    .line 686
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(Z)Z

    goto :goto_af

    .line 691
    :cond_7d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiSavedState()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_af

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    if-nez p1, :cond_af

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    if-nez p1, :cond_af

    const-string p1, "VZW"

    .line 692
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 693
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUsbTethered()Z

    move-result p1

    if-nez p1, :cond_a3

    .line 694
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(Z)Z

    .line 695
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setWifiSavedState(I)V

    goto :goto_af

    .line 697
    :cond_a3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setWifiSavedState(I)V

    goto :goto_af

    .line 700
    :cond_a7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(Z)Z

    .line 701
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setWifiSavedState(I)V

    :cond_af
    :goto_af
    return-void
.end method

.method private init()V
    .registers 5

    .line 441
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTimeOutImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 442
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getHostapdHal()Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 443
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApPowerSaveImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApPowerSaveImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    .line 444
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 450
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    const/4 v0, 0x1

    .line 451
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApMode:I

    const-string v1, "wlan0"

    .line 452
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mApInterfaceName:Ljava/lang/String;

    const-string v1, "batterystats"

    .line 453
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 454
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v1

    if-eqz v1, :cond_67

    const-string v1, "swlan0"

    .line 455
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 457
    :cond_67
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_wifi_sharing"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_98

    .line 460
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v1

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 461
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharingLite()Z

    move-result v1

    if-nez v1, :cond_98

    .line 462
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 466
    :cond_98
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 467
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_disable_random_mac"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 472
    :cond_ab
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    if-eqz v0, :cond_db

    .line 473
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_db

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " semSetWifiFactoryMacAddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    :cond_db
    const-string v0, " semSetWifiFactoryMacAddress null"

    .line 477
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_e0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    new-instance v1, Landroid/os/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method

.method private isLohsOn()Z
    .registers 2

    .line 990
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApLOHSState()I

    move-result p0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_15

    const/16 v0, 0xd

    if-eq p0, v0, :cond_15

    const/16 v0, 0xa

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private isMobileApOn()Z
    .registers 2

    .line 605
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_11

    const/16 v0, 0xc

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private isSoftApOn()Z
    .registers 2

    .line 997
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result p0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_15

    const/16 v0, 0xd

    if-eq p0, v0, :cond_15

    const/16 v0, 0xa

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private isUsbTethered()Z
    .registers 9

    .line 586
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/TetheringManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTetheringManager:Landroid/net/TetheringManager;

    .line 587
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 588
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object p0

    .line 589
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_41

    aget-object v4, v0, v3

    const-string v5, "ncm0"

    .line 590
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const-string p0, "SemSoftApManager"

    const-string v0, "enabled tetheredIface : ncm0"

    .line 591
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 594
    :cond_2d
    array-length v5, p0

    move v6, v2

    :goto_2f
    if-ge v6, v5, :cond_3e

    aget-object v7, p0, v6

    .line 595
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    const/4 p0, 0x1

    return p0

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_41
    return v2
.end method

.method private isWifiOn()Z
    .registers 2

    .line 611
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private synthetic lambda$handleSoftApState$0()V
    .registers 2

    const/16 v0, 0x9

    .line 958
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    return-void
.end method

.method private declared-synchronized persistWifiApState(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "SemSoftApManager"

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistWifiApState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_saved_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 572
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private registerCellularDUNCallback()V
    .registers 3

    .line 521
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    .line 522
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xd

    .line 523
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 524
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 525
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCellularDUNCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_21
    return-void
.end method

.method private registerForWifiSharingModeChange()V
    .registers 4

    .line 721
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$4;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/os/Handler;)V

    .line 734
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "wifi_ap_wifi_sharing"

    .line 735
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 734
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setWifiSavedState(I)V
    .registers 4

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiSavedState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_saved_state"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public addSemSoftApDumpLog(Ljava/lang/String;)V
    .registers 7

    .line 1516
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1519
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1521
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemSoftApDumpLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_46

    .line 1522
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemSoftApDumpLogs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1524
    :cond_46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemSoftApDumpLogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_4f} :catch_4f

    :catch_4f
    return-void
.end method

.method public checkDualBandHostapd()Z
    .registers 3

    .line 1060
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkDualBandHostapd:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public disassociateSTA(Ljava/lang/String;)V
    .registers 4

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISASSOCIATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public dualSoftApScanModeDisable()V
    .registers 4

    .line 1486
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    move-result v0

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DualSoftApScanModeDisable isScanAlwaysAvailable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " wifiState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    .line 1490
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOffScanMode:Z

    .line 1491
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    :cond_3d
    return-void
.end method

.method public enableHotspotTsfInfo(Z)V
    .registers 5

    if-eqz p1, :cond_5

    const-string p1, "start"

    goto :goto_7

    :cond_5
    const-string p1, "stop"

    .line 1454
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAPD_GET_TSF_INFO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHotspotTsfInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SemSoftApManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :try_start_2e
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_47

    :catch_32
    move-exception p0

    .line 1459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "General exception "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return-void
.end method

.method public getDumpLogs()Ljava/lang/String;
    .registers 3

    .line 1530
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--SemSoftApManager \n"

    .line 1531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1532
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemSoftApDumpLogs:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1534
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMhsPsInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1423
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_AP_RPS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1424
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 1426
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method declared-synchronized getPersistedWifiApState()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 576
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_12

    :try_start_7
    const-string v1, "wifi_ap_saved_state"

    .line 578
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_d} :catch_f
    .catchall {:try_start_7 .. :try_end_d} :catchall_12

    monitor-exit p0

    return v0

    :catch_f
    const/4 v0, 0x0

    .line 582
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSoftApCapability()Landroid/net/wifi/SoftApCapability;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    return-object p0
.end method

.method public getSoftApInterfaceName()Ljava/lang/String;
    .registers 1

    .line 543
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public getStationInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1409
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_STA_INFO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 1411
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiApWarningActivityRunningState()I
    .registers 1

    .line 1047
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApWarningActivityState:I

    return p0
.end method

.method handleAirplaneMode(Z)V
    .registers 5

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD_AIRPLANE_TOGGLED ,isMobileApOn():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isMobileApOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "csc_op"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_39

    .line 637
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isMobileApOn()Z

    move-result p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 638
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->persistWifiApState(I)V

    goto :goto_8a

    .line 641
    :cond_39
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result p1

    if-eqz p1, :cond_8a

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getPersistedWifiApState()I

    move-result p1

    if-ne p1, v0, :cond_8a

    const/4 p1, 0x0

    .line 642
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->persistWifiApState(I)V

    .line 643
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->isSmartViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_5a

    return-void

    .line 647
    :cond_5a
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->isWirelessDexEnabled()Z

    move-result v0

    if-eqz v0, :cond_69

    return-void

    .line 651
    :cond_69
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    if-nez v0, :cond_87

    const-string v0, "ToDo need to handle disabled Wifi on "

    .line 652
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(Z)Z

    .line 654
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 655
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$3;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8a

    .line 662
    :cond_87
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleSoftapEnable()V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public handleBootCompleted()V
    .registers 6

    .line 1505
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    move-result v0

    .line 1506
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    move v3, v2

    :cond_17
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mSoftApCapability  :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAirplaneModeOn:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SemSoftApManager"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    if-nez v1, :cond_76

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    if-nez v1, :cond_76

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    move-result v1

    if-nez v1, :cond_76

    if-eq v0, v2, :cond_64

    const/4 v1, 0x4

    if-ne v0, v1, :cond_76

    .line 1509
    :cond_64
    sput-boolean v2, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOnScanMode:Z

    .line 1510
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 1511
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    const/16 v0, 0x65

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_76
    return-void
.end method

.method public isInterfaceUp(Ljava/lang/String;)Z
    .registers 3

    const-string p0, "network_management"

    .line 1433
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1434
    invoke-static {p0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p0

    const/4 v0, 0x0

    .line 1436
    :try_start_b
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 1438
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->isUp()Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    move v0, p0

    :catch_16
    :cond_16
    return v0
.end method

.method public isP2pConnected()Z
    .registers 1

    .line 1482
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mP2pConnected:Z

    return p0
.end method

.method public isSKT()Z
    .registers 2

    .line 352
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 353
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    const-string v0, "45005"

    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public onTetherError(Ljava/lang/String;)V
    .registers 4

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTetherError on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mResetSoftAp:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mCallbackSoftApState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemSoftApManager"

    .line 828
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 830
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    if-eqz p1, :cond_51

    const/4 p1, 0x0

    .line 831
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 832
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    const/16 v1, 0xa

    if-eq p1, v1, :cond_42

    const/16 v1, 0xb

    if-eq p1, v1, :cond_42

    const/16 v1, 0xe

    if-ne p1, v1, :cond_51

    .line 835
    :cond_42
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result p0

    if-nez p0, :cond_51

    const-string p0, "enabled startTetheredHotspot : failed"

    .line 836
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void
.end method

.method readWifiSharingMode()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_wifi_sharing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    :cond_11
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readWifiSharingMode-> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    return p0
.end method

.method public resetSoftAp()V
    .registers 3

    .line 626
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isMobileApOn()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 627
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 628
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->resetsoftap()V

    :cond_1f
    const/4 v0, 0x1

    .line 630
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 631
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_29
    return-void
.end method

.method public resetSoftAp(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 3

    .line 616
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isMobileApOn()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    .line 617
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 618
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 619
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->resetsoftap()V

    .line 621
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 622
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_2e
    return-void
.end method

.method public saveDebugDumpForHotspot()V
    .registers 3

    const-string v0, "SemSoftApManager"

    const-string v1, "saveDebugDumpForHotspot"

    .line 1344
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    const-string v1, "DEBUG_DUMP"

    .line 1346
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception p0

    const-string v1, "General exception DEBUG_DUMP"

    .line 1348
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isSoftApOn()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isLohsOn()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1010
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1012
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendHostapdCommand isSoftApOn "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isSoftApOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "isLohsOn "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isLohsOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemSoftApManager"

    .line 1013
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendHostapdCommandToHandler(Ljava/lang/String;)V
    .registers 4

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isSoftApOn()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isLohsOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1027
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$6;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_48

    .line 1034
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendHostapdCommandToHandler isSoftApOn "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isSoftApOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "isLohsOn "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isLohsOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemSoftApManager"

    .line 1035
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method public setArdkPowerSaveMode(Z)I
    .registers 7

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "General exception "

    const/4 v4, 0x0

    if-eqz p1, :cond_3c

    :try_start_1d
    const-string v4, "SET_AP_RPS_PARAMS 16 9 10 0 swlan0"

    .line 1215
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V

    const-string v4, "SET_AP_RPS 1 swlan0"

    .line 1217
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28

    return v0

    :catch_28
    move-exception p0

    .line 1220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_3c
    :try_start_3c
    const-string v4, "SET_AP_RPS 0 swlan0"

    .line 1226
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_42

    return v0

    :catch_42
    move-exception p0

    .line 1229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public setHotspoPciePowerManage(Z)V
    .registers 6

    const/4 v0, 0x0

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotspoPciePowerManage enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemSoftApManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "General exception "

    if-eqz p1, :cond_39

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1f

    return-void

    :cond_1f
    :try_start_1f
    const-string v0, "PCIE_RPM_ENABLE"

    .line 1322
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_38

    :catch_25
    move-exception p0

    .line 1324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    return-void

    :cond_39
    :try_start_39
    const-string v0, "PCIE_RPM_DISABLE"

    .line 1330
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_52

    :catch_3f
    move-exception p0

    .line 1332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    return-void
.end method

.method public setHotspotBackOff(I)V
    .registers 5

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_TX_POWER_CALLING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemSoftApManager"

    const-string v1, "setHotspotBackOff Mode"

    .line 1360
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_31

    :catch_1c
    move-exception p0

    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "General exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return-void
.end method

.method public setHotspotBackOff(Z)V
    .registers 5

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_TX_POWER_CALLING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemSoftApManager"

    const-string v1, "setHotspotBackOff Enable"

    .line 1376
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_31

    :catch_1c
    move-exception p0

    .line 1380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "General exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return-void
.end method

.method public setHotspotCustomBackOff(Ljava/lang/String;)Z
    .registers 5

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_CUSTOM_TX_POWER_CALLING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemSoftApManager"

    const-string v1, "setHotspotCustomBackOff Mode"

    .line 1471
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1d

    const/4 p0, 0x1

    return p0

    :catch_1d
    move-exception p0

    .line 1476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "General exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setHotspotPcieIrqAffinity(I)V
    .registers 5

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PCIE_IRQ_CORE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemSoftApManager"

    const-string v1, "setHotspotPcieIrqAffinity"

    .line 1300
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_31

    :catch_1c
    move-exception p0

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "General exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return-void
.end method

.method public setNetworkCountryCode(Ljava/lang/String;)V
    .registers 4

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setNetworkCountryCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " old : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetworkCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetworkCountryCode:Ljava/lang/String;

    if-eq p1, v0, :cond_33

    .line 432
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetworkCountryCode:Ljava/lang/String;

    .line 433
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    const/16 v0, 0xd

    if-eq p1, v0, :cond_30

    const/16 v0, 0xc

    if-ne p1, v0, :cond_33

    :cond_30
    const/4 p1, 0x1

    .line 435
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    :cond_33
    return-void
.end method

.method public setSoftApAntMode(I)I
    .registers 9

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSoftApAntMode mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wifi_ap_kdi_selection_ant"

    const-string v2, "General exception "

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_46

    const/4 v6, 0x2

    if-eq p1, v6, :cond_23

    return v3

    :cond_23
    :try_start_23
    const-string v5, "SET_BWNSS 0x22220002 0x222"

    .line 1121
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V

    .line 1122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_31} :catch_32

    return v4

    :catch_32
    move-exception p0

    .line 1125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_46
    :try_start_46
    const-string v5, "SET_BWNSS 0x22220002 0x211"

    .line 1111
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V

    .line 1112
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_54} :catch_55

    return v4

    :catch_55
    move-exception p0

    .line 1115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public setSoftApElnaEnable(Ljava/lang/String;Z)I
    .registers 9

    const/4 v0, 0x0

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemSoftApManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SET_SOFTAP_ELNA_BYPASS "

    const-string v3, "General exception "

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_56

    if-eq p2, v5, :cond_2a

    return v4

    .line 1145
    :cond_2a
    :try_start_2a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_41} :catch_42

    return v5

    :catch_42
    move-exception p0

    .line 1149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    .line 1154
    :cond_56
    :try_start_56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1155
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6d} :catch_6e

    return v5

    :catch_6e
    move-exception p0

    .line 1158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public setSoftApRadioPowerSave(Ljava/lang/String;Z)I
    .registers 9

    const/4 v0, 0x0

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemSoftApManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "General exception "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_65

    if-eq p2, v4, :cond_28

    return v3

    .line 1076
    :cond_28
    :try_start_28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_AP_RPS_PARAMS 16 5 10 0 "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V

    .line 1078
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_AP_RPS 1 "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1079
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_50} :catch_51

    return v4

    :catch_51
    move-exception p0

    .line 1082
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    .line 1087
    :cond_65
    :try_start_65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_AP_RPS 0 "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_79} :catch_7a

    return v4

    :catch_7a
    move-exception p0

    .line 1091
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public setSoftApRadioPowerSaveAggressive(Ljava/lang/String;Z)I
    .registers 9

    const/4 v0, 0x0

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemSoftApManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "General exception "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_65

    if-eq p2, v4, :cond_28

    return v3

    .line 1178
    :cond_28
    :try_start_28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_AP_RPS_PARAMS 16 7 10 0 "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V

    .line 1180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_AP_RPS 1 "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_50} :catch_51

    return v4

    :catch_51
    move-exception p0

    .line 1184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    .line 1189
    :cond_65
    :try_start_65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_AP_RPS 0 "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_79} :catch_7a

    return v4

    :catch_7a
    move-exception p0

    .line 1193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public setSoftApRadioPowerSaveNoBeacon(Ljava/lang/String;Z)I
    .registers 9

    const/4 v0, 0x0

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemSoftApManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "General exception "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_51

    if-eq p2, v4, :cond_28

    return v3

    .line 1272
    :cond_28
    :try_start_28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_AP_SUSPEND 1 "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1273
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3c} :catch_3d

    return v4

    :catch_3d
    move-exception p0

    .line 1276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    .line 1281
    :cond_51
    :try_start_51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_AP_SUSPEND 0 "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1282
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_65} :catch_66

    return v4

    :catch_66
    move-exception p0

    .line 1285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public setWifiApWarningActivityRunning(I)V
    .registers 4

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiApWarningActivityState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApWarningActivityState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApWarningActivityState:I

    return-void
.end method

.method public startTracking()V
    .registers 4

    .line 530
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "SemSoftApManager"

    const-string v1, " SemSoftApManager startTracking"

    .line 532
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->init()V

    const/4 v0, 0x1

    .line 534
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isRegistered:Z

    .line 535
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->readWifiSharingMode()Z

    .line 537
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->registerForWifiSharingModeChange()V

    .line 538
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->registerCellularDUNCallback()V

    return-void
.end method

.method public stopTracking()V
    .registers 3

    const/4 v0, 0x0

    .line 547
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isRegistered:Z

    const-string v0, "SemSoftApManager"

    const-string v1, " SemSoftApManager stopTracking"

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public syncGetWifiApStateByName(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_16

    const-string p0, "[invalid state]"

    return-object p0

    :pswitch_6
    const-string p0, "failed"

    return-object p0

    :pswitch_9
    const-string p0, "enabled"

    return-object p0

    :pswitch_c
    const-string p0, "enabling"

    return-object p0

    :pswitch_f
    const-string p0, "disabled"

    return-object p0

    :pswitch_12
    const-string p0, "disabling"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0xa
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public tethered(Ljava/lang/String;)V
    .registers 3

    .line 806
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tethered on:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSoftApManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public untethered(Ljava/lang/String;)V
    .registers 4

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "untethered on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mResetSoftAp:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mCallbackSoftApState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemSoftApManager"

    .line 811
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 813
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->removeMessages(I)V

    .line 814
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    if-eqz p1, :cond_58

    const/4 p1, 0x0

    .line 815
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 816
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    const/16 v1, 0xa

    if-eq p1, v1, :cond_49

    const/16 v1, 0xb

    if-eq p1, v1, :cond_49

    const/16 v1, 0xe

    if-ne p1, v1, :cond_58

    .line 819
    :cond_49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result p0

    if-nez p0, :cond_58

    const-string p0, "enabled startTetheredHotspot : failed"

    .line 820
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void
.end method

.method public upstreamChangedToCellular(Landroid/net/Network;)V
    .registers 6

    .line 314
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetwork:Landroid/net/Network;

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUpstreamCellular:Z

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 317
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 318
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isDunCheckRequired:Z

    if-eqz p1, :cond_2b

    .line 319
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2b
    return-void
.end method

.method public upstreamChangedToWifi(Landroid/net/Network;)V
    .registers 3

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUpstreamCellular:Z

    .line 308
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetwork:Landroid/net/Network;

    .line 309
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->removeMessages(I)V

    return-void
.end method
