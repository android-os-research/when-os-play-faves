.class public Lcom/samsung/android/server/wifi/SemCellularStateManager;
.super Ljava/lang/Object;
.source "SemCellularStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;
    }
.end annotation


# static fields
.field private static final ACTION_DATA_LIMIT_INTENT:Ljava/lang/String; = "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

.field private static final DBG:Z

.field private static final MBO_STATE_CELLULAR_DATA_AVAILABLE:B = 0x1t

.field private static final MBO_STATE_CELLULAR_DATA_UNAVAILABLE:B = 0x2t

.field private static final MBO_STATE_NO_CELLULAR_DATA_CAPABLE:B = 0x3t

.field private static final MBO_TYPE_NETWORK_CLASS_2G:B = 0x1t

.field private static final MBO_TYPE_NETWORK_CLASS_3G:B = 0x2t

.field private static final MBO_TYPE_NETWORK_CLASS_4G:B = 0x3t

.field private static final MBO_TYPE_NETWORK_CLASS_5G:B = 0x4t

.field private static final MBO_TYPE_NETWORK_CLASS_UNKNOWN:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "SemCellularStateManager"

.field private static final VER:Ljava/lang/String; = "1.1.0"

.field public static final WIFI_STATE_CONNECTED_STATE_ENTER:I = 0x3

.field public static final WIFI_STATE_CONNECTED_STATE_EXIT:I = 0x4

.field public static final WIFI_STATE_CONNECT_MODE_STATE_ENTER:I = 0x1

.field public static final WIFI_STATE_CONNECT_MODE_STATE_EXIT:I = 0x2

.field public static final WIFI_STATE_DONGLE_ROAM:I = 0x5

.field private static final WTC_CANDIDATE_RSSI_THRESHOLD24G:I = -0x46

.field private static final WTC_CANDIDATE_RSSI_THRESHOLD5G:I = -0x46

.field private static final WTC_CANDIDATE_RSSI_THRESHOLD6G:I = -0x46

.field private static final WTC_MODE_DISABLE_CONTROLLED_BY_FRAMEWORK:I = 0x4

.field private static final WTC_MODE_DISABLE_NOT_SUPPORTED:I = 0x2

.field private static final WTC_MODE_DISABLE_NO_CELLULAR_NETWORK:I = 0x3

.field private static final WTC_MODE_DISABLE_ROAM_TO_BETTER_AP:I = 0x5

.field private static final WTC_MODE_DISABLE_RSSI_IS_STRONG_ENOUGH:I = 0x7

.field private static final WTC_MODE_DISABLE_SUSPEND_MODE:I = 0x6

.field private static final WTC_MODE_DISABLE_UNSPECIFIED:I = 0x1

.field private static final WTC_MODE_ENABLE:I = 0x0

.field private static final WTC_SCAN_FULL:I = 0x2

.field private static final WTC_SCAN_NONE:I = 0x0

.field private static final WTC_SCAN_PARTIAL:I = 0x1

.field private static final WTC_TRIGGER_RSSI_THRESHOLD:I = -0x50


# instance fields
.field private mCellularCapaState:I

.field private mCellularCellId:I

.field private mCellularSignalLevel:I

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsMobileDataLimited:Z

.field private mIsSimCardReady:Z

.field private mIsUserDataEnabled:Z

.field private mIsUserDataRoamingEnabled:Z

.field private final mIsWifiOnlyModel:Z

.field private mNetworkClass:I

.field private mPrevCellularCapaState:I

.field private mPrevCellularCellId:I

.field private mPrevCellularSignalLevel:I

.field private mPrevNetworkClass:I

.field private mPrevWtcMode:I

.field private final mTelephonyCallback:Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiState:I

.field private mWtcMode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCellularCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMobileDataLimited(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsMobileDataLimited:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSimCardReady(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsSimCardReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUserDataRoamingEnabled(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsUserDataRoamingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCarrierInfoManager(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCellularCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCellularSignalLevel(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMobileDataLimited(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsMobileDataLimited:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSimCardReady(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsSimCardReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsUserDataEnabled(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsUserDataEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsUserDataRoamingEnabled(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsUserDataRoamingEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkClass(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;Landroid/telephony/CellInfo;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->getCellId(Landroid/telephony/CellInfo;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetNetworkClass(Lcom/samsung/android/server/wifi/SemCellularStateManager;J)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->getNetworkClass(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyCellularStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->notifyCellularStateChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 51
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)V
    .registers 10

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 97
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    const/4 v1, 0x1

    .line 98
    iput v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWtcMode:I

    .line 99
    iput v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevWtcMode:I

    .line 100
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    const v2, 0x7fffffff

    .line 102
    iput v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    .line 103
    iput v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 104
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCapaState:I

    .line 105
    iput v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevNetworkClass:I

    .line 106
    iput v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCellId:I

    .line 107
    iput v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularSignalLevel:I

    .line 108
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsSimCardReady:Z

    const-string v0, "SemCellularStateManager"

    const-string v2, "SemCellularStateManager Constructor: Version = 1.1.0"

    .line 113
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mContext:Landroid/content/Context;

    .line 116
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 117
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 118
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 119
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemRilUtil;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsWifiOnlyModel:Z

    .line 120
    new-instance v2, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;-><init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyCallback:Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;

    .line 121
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 123
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    move-result p5

    if-nez p5, :cond_4e

    return-void

    :cond_4e
    if-nez v0, :cond_8b

    .line 128
    new-instance p5, Landroid/content/IntentFilter;

    invoke-direct {p5}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    .line 129
    invoke-virtual {p5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 130
    invoke-virtual {p5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;-><init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    invoke-virtual {p1, v0, p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p5, "data_roaming"

    .line 154
    invoke-static {p5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    new-instance v0, Lcom/samsung/android/server/wifi/SemCellularStateManager$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/server/wifi/SemCellularStateManager$2;-><init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;Landroid/os/Handler;)V

    invoke-virtual {p4, p1, p5, v1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    new-instance p1, Landroid/os/HandlerExecutor;

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2, p1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateAllCellularState()V

    goto :goto_8e

    .line 169
    :cond_8b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateCellularCapaState()V

    :goto_8e
    return-void
.end method

.method private convertCellularCapaToWifiToCellularState()I
    .registers 4

    .line 283
    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p0, v1, :cond_13

    if-eq p0, v2, :cond_12

    const-string p0, "SemCellularStateManager"

    const-string v1, "convertCellularCapaToWifiToCellularState - unknown mCellularCapaState."

    .line 291
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v0

    :cond_13
    return v2

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private getCellId(Landroid/telephony/CellInfo;)I
    .registers 2

    .line 375
    instance-of p0, p1, Landroid/telephony/CellInfoLte;

    if-eqz p0, :cond_f

    .line 376
    check-cast p1, Landroid/telephony/CellInfoLte;

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    return p0

    .line 377
    :cond_f
    instance-of p0, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz p0, :cond_1e

    .line 378
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p0

    return p0

    .line 379
    :cond_1e
    instance-of p0, p1, Landroid/telephony/CellInfoGsm;

    if-eqz p0, :cond_2d

    .line 380
    check-cast p1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    return p0

    .line 381
    :cond_2d
    instance-of p0, p1, Landroid/telephony/CellInfoCdma;

    if-eqz p0, :cond_3c

    .line 382
    check-cast p1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p0

    return p0

    .line 383
    :cond_3c
    instance-of p0, p1, Landroid/telephony/CellInfoNr;

    if-eqz p0, :cond_4b

    .line 384
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result p0

    return p0

    :cond_4b
    const-string p0, "SemCellularStateManager"

    const-string p1, "Invalid CellInfo type"

    .line 386
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7fffffff

    return p0
.end method

.method private getNetworkClass(J)I
    .registers 7

    const-wide/32 v0, 0x804b

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const-wide/32 v0, 0x16bb4

    and-long/2addr v0, p1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_16

    const/4 p0, 0x2

    return p0

    :cond_16
    const-wide/32 v0, 0x61000

    and-long/2addr v0, p1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_20

    const/4 p0, 0x3

    return p0

    :cond_20
    const-wide/32 v0, 0x80000

    and-long p0, p1, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2b

    const/4 p0, 0x4

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method private initCellInfoAndSignalStrengths()V
    .registers 2

    const v0, 0x7fffffff

    .line 392
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    return-void
.end method

.method private isCellularDataAvailable()Z
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 230
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsUserDataEnabled:Z

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsMobileDataLimited:Z

    if-nez v1, :cond_18

    if-eqz v0, :cond_16

    if-eqz v0, :cond_18

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsUserDataRoamingEnabled:Z

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private isCellularStatChanged()Z
    .registers 3

    .line 258
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevNetworkClass:I

    iget v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCapaState:I

    iget v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    iget v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCellId:I

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularSignalLevel:I

    if-eq v0, p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method private isNetworkClassValid()Z
    .registers 1

    .line 225
    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isWifiToCellularChanged()Z
    .registers 2

    .line 275
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevWtcMode:I

    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWtcMode:I

    if-eq v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private notifyCellularStateChanged()V
    .registers 3

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateCellularCapaState()V

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateWifiToCellular()V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiToCellularSupported()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->isWifiToCellularChanged()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->sendCommandSetWiFiToCellular()V

    .line 251
    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->isCellularStatChanged()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "SemCellularStateManager"

    const-string v1, "notifyCellularStateChanged : sendCommandUpdateCellularCapabilities called"

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->sendCommandUpdateCellularCapabilities()V

    :cond_27
    return-void
.end method

.method private notifyWifiStateChanged()V
    .registers 3

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateCellularCapaState()V

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateWifiToCellular()V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiToCellularSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 239
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->sendCommandSetWiFiToCellular()V

    .line 241
    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->sendCommandUpdateCellularCapabilities()V

    return-void
.end method

.method private sendCommandSetWiFiToCellular()V
    .registers 11

    .line 297
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2b

    .line 298
    :cond_8
    iget v4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWtcMode:I

    iput v4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevWtcMode:I

    if-nez v4, :cond_1f

    .line 300
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mInterfaceName:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, -0x50

    const/16 v7, -0x46

    const/16 v8, -0x46

    const/16 v9, -0x46

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiToCellular(Ljava/lang/String;IIIIII)Z

    goto :goto_2b

    .line 303
    :cond_1f
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mInterfaceName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiToCellular(Ljava/lang/String;IIIIII)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method private sendCommandUpdateCellularCapabilities()V
    .registers 8

    .line 263
    iget v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    iput v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCapaState:I

    .line 264
    iget v3, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    iput v3, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevNetworkClass:I

    .line 265
    iget v5, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    iput v5, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCellId:I

    .line 266
    iget v4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    iput v4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularSignalLevel:I

    .line 268
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsWifiOnlyModel:Z

    if-nez v0, :cond_19

    iget v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_20

    :cond_19
    if-eqz v0, :cond_27

    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 270
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->updateCellularCapabilities(Ljava/lang/String;IIII)Z

    :cond_27
    return-void
.end method

.method private updateAllCellularState()V
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsUserDataEnabled:Z

    .line 192
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mContext:Landroid/content/Context;

    const-string v2, "data_roaming"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    move v3, v1

    :cond_17
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsUserDataRoamingEnabled:Z

    .line 193
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->getNetworkClass(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    .line 194
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimCardReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsSimCardReady:Z

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateCellInfo()V

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateSignalStrengths()V

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateCellularCapaState()V

    return-void
.end method

.method private updateCellInfo()V
    .registers 5

    .line 408
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    const-string v1, "SemCellularStateManager"

    if-eqz v0, :cond_67

    .line 409
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_67

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCellInfo: cellInfoList Number of cell: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 412
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 413
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->getCellId(Landroid/telephony/CellInfo;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCellInfo: Registered = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCellularCellId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_67
    const-string v0, "updateCellInfo: cellInfoList is null or Size is zero and no registered cell"

    .line 419
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    .line 420
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    return-void
.end method

.method private updateCellularCapaState()V
    .registers 2

    const/4 v0, 0x2

    .line 202
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    .line 203
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsWifiOnlyModel:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    .line 204
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    return-void

    .line 208
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsSimCardReady:Z

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->initCellInfoAndSignalStrengths()V

    return-void

    .line 214
    :cond_16
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    if-nez v0, :cond_21

    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularSignalLevel:I

    if-eqz v0, :cond_21

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->initCellInfoAndSignalStrengths()V

    .line 219
    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->isCellularDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->isNetworkClassValid()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    .line 220
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    :cond_30
    return-void
.end method

.method private updateSignalStrengths()V
    .registers 4

    .line 397
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    const-string v1, "SemCellularStateManager"

    if-eqz v0, :cond_27

    .line 399
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSignalStrengths: mCellularSignalLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_27
    const-string v0, "updateSignalStrengths: signalStrength is null"

    .line 402
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    :goto_2f
    return-void
.end method

.method private updateWifiToCellular()V
    .registers 2

    .line 279
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->convertCellularCapaToWifiToCellularState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWtcMode:I

    return-void
.end method


# virtual methods
.method public handleWifiStateChanged(I)V
    .registers 4

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiStateChanged is called("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCellularStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iput p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_41

    const/4 v0, 0x2

    if-eq p1, v0, :cond_44

    const/4 v0, 0x3

    if-eq p1, v0, :cond_41

    const/4 v0, 0x4

    if-eq p1, v0, :cond_44

    const/4 v0, 0x5

    if-eq p1, v0, :cond_41

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleWifiStateChanged - Nothing to do for state = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 315
    :cond_41
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->notifyWifiStateChanged()V

    :cond_44
    :goto_44
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mInterfaceName:Ljava/lang/String;

    return-void
.end method
