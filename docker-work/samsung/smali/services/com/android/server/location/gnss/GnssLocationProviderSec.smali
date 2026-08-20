.class public Lcom/android/server/location/gnss/GnssLocationProviderSec;
.super Lcom/android/server/location/gnss/GnssLocationProvider;
.source "GnssLocationProviderSec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;,
        Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;,
        Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;
    }
.end annotation


# static fields
.field public static final ACTION_CARRIER_CHANGED:Ljava/lang/String; = "com.samsung.carrier.action.CARRIER_CHANGED"

.field public static final DEBUG:Z = true

.field public static final EXTRA_CARRIER_PHONE_ID:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_PHONE_ID"

.field public static final EXTRA_CARRIER_STATE:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_STATE"

.field public static final KEY_MULTISIM_SIMSLOTCOUNT:Ljava/lang/String; = "ro.multisim.simslotcount"

.field public static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field public static final SEC_SERVER_TYPE_AUTO_CONFIG:I = 0x0

.field public static final TAG:Ljava/lang/String; = "GnssLocationProvider_ex"

.field public static isWlanApConnected:Z


# instance fields
.field public isIssueTrackerIntentReceived:Z

.field public ktPositionMode:I

.field public final mBroadcastReceiverSec:Landroid/content/BroadcastReceiver;

.field public mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

.field public mCellInfoCb:Landroid/telephony/TelephonyManager$CellInfoCallback;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mConstellationString:[Ljava/lang/String;

.field public mCtsRestrictModeFileObserver:Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;

.field public mFocusToneGenerator:Landroid/media/ToneGenerator;

.field public mIsKtGps:Z

.field public mIsSKApplicationFramework:Z

.field public mIsSetAutoSuplServer:Z

.field public mKTSuplServerHost:Ljava/lang/String;

.field public mKTSuplServerPort:I

.field public mLidState:I

.field public mLppeFusedLocationHelper:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

.field public mPropertiesNsFlp:Ljava/util/Properties;

.field public mPropertiesSecgps:Ljava/util/Properties;

.field public mServerTypeI:I

.field public mSimInformationHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;",
            ">;"
        }
    .end annotation
.end field

.field public mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public prevLppMask:I

.field public prevNrLppMask:I


# direct methods
.method public static synthetic $r8$lambda$-NO1U3105-Hgu9I3nOYaMPzGg5k(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->lambda$updatePsdsEnabled$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$F2qAGs0vbC1iicGUxy3oWpgdN1A(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->lambda$updateSuplServerConfiguration$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a1AWg3MBTzwKmnfU1KOacV6aLI4(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->lambda$sendLidState$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hPv1n7En0EzLlzw_pj6Dg23smFA(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->lambda$deleteSecGpsConfigAtHal$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$mT8-ERFUlA91JbnU6bbPXdpl-1g(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/io/StringWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->lambda$sendSecGpsConfigToHal$1(Ljava/io/StringWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pqikITcRsSHceuEW0v5KoBD1bsI(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->lambda$handleEmergencySmsOverIms$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCarrierConfig(Lcom/android/server/location/gnss/GnssLocationProviderSec;)Lcom/android/server/location/gnss/sec/CarrierConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLidState(Lcom/android/server/location/gnss/GnssLocationProviderSec;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuplInitHandler(Lcom/android/server/location/gnss/GnssLocationProviderSec;)Lcom/android/server/location/gnss/sec/SuplInitHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLidState(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetTypeFromNetworkType(Lcom/android/server/location/gnss/GnssLocationProviderSec;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getTypeFromNetworkType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleCarrierStateChanged(Lcom/android/server/location/gnss/GnssLocationProviderSec;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->handleCarrierStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleEmergencySmsOverIms(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->handleEmergencySmsOverIms()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleIssueTrackerOnOff(Lcom/android/server/location/gnss/GnssLocationProviderSec;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->handleIssueTrackerOnOff(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNetworkStateChanged(Lcom/android/server/location/gnss/GnssLocationProviderSec;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->handleNetworkStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSimStateChanged(Lcom/android/server/location/gnss/GnssLocationProviderSec;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->handleSimStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendLidState(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendLidState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetReferenceLocation(Lcom/android/server/location/gnss/GnssLocationProviderSec;ILandroid/telephony/CellInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setReferenceLocation(ILandroid/telephony/CellInfo;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    .line 153
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 197
    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 392
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V

    const/4 p2, 0x0

    .line 172
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    .line 174
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    const/4 p3, 0x1

    .line 177
    iput p3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    .line 179
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSetAutoSuplServer:Z

    const/4 p2, -0x1

    .line 180
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mServerTypeI:I

    .line 182
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLppMask:I

    .line 183
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevNrLppMask:I

    const-string v0, "Unknown"

    const-string v1, "GPS"

    const-string v2, "SBAS"

    const-string v3, "GLONASS"

    const-string v4, "QZSS"

    const-string v5, "BEIDOU"

    const-string v6, "GALILEO"

    const-string v7, "NAVIC"

    .line 185
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConstellationString:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 189
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 200
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCtsRestrictModeFileObserver:Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;

    .line 205
    new-instance p2, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;

    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Landroid/content/BroadcastReceiver;

    .line 1439
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    const-string p2, "connectivity"

    .line 394
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string/jumbo p2, "phone"

    .line 396
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V
    .registers 13

    .line 401
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V

    const/4 p2, 0x0

    .line 172
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    .line 174
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    const/4 p4, 0x1

    .line 177
    iput p4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    .line 179
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSetAutoSuplServer:Z

    const/4 p2, -0x1

    .line 180
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mServerTypeI:I

    .line 182
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLppMask:I

    .line 183
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevNrLppMask:I

    const-string v0, "Unknown"

    const-string v1, "GPS"

    const-string v2, "SBAS"

    const-string v3, "GLONASS"

    const-string v4, "QZSS"

    const-string v5, "BEIDOU"

    const-string v6, "GALILEO"

    const-string v7, "NAVIC"

    .line 185
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConstellationString:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 189
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 200
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCtsRestrictModeFileObserver:Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;

    .line 205
    new-instance p2, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;

    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Landroid/content/BroadcastReceiver;

    .line 1439
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    const-string p2, "GnssLocationProvider_ex"

    const-string p4, "Constructor"

    .line 402
    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->initGnssLocationProviderSec()V

    .line 405
    new-instance p2, Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/server/location/gnss/sec/SuplInitHandler;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssLocationProviderSec;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 406
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->initBroadcastReceiver()V

    return-void
.end method

.method private synthetic lambda$deleteSecGpsConfigAtHal$2()V
    .registers 2

    const-string v0, "USE_SECGPS_CONF=0"

    .line 2024
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleEmergencySmsOverIms$0()V
    .registers 2

    const-string v0, "EMERGENCY_SMS=1"

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$sendLidState$5(I)V
    .registers 4

    .line 2602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LID_STATE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$sendSecGpsConfigToHal$1(Ljava/io/StringWriter;)V
    .registers 2

    .line 1990
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updatePsdsEnabled$4(I)V
    .registers 4

    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XTRA_ENABLE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateSuplServerConfiguration$3(Ljava/lang/String;)V
    .registers 2

    .line 2235
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method public static shouldSupportNfwLocPolicy()Z
    .registers 3

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 889
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1c

    if-le v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method


# virtual methods
.method public final appendNsFlpConfigString(Ljava/lang/StringBuilder;)V
    .registers 4

    .line 1871
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesNsFlp:Ljava/util/Properties;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_26

    .line 1872
    :cond_b
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1874
    :try_start_10
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesNsFlp:Ljava/util/Properties;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1875
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1876
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    const-string p0, "GnssLocationProvider_ex"

    const-string p1, "could not store to writer"

    .line 1878
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void
.end method

.method public final buildSingleSvInfoMessage(Landroid/location/GnssStatus;Ljava/lang/StringBuilder;I)V
    .registers 7

    .line 1483
    invoke-virtual {p1, p3}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v0

    const-string v1, "("

    .line 1484
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    invoke-virtual {p1, p3}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 1486
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getConstellationTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 1489
    invoke-virtual {p1, p3}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const-string v0, "%.1f"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    invoke-virtual {p1, p3}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") "

    .line 1492
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public changeNlpAccuracyInForce(Landroid/location/Location;)V
    .registers 3

    .line 1096
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1097
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result p0

    if-eqz p0, :cond_23

    .line 1098
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_23

    .line 1099
    invoke-virtual {p1, v0}, Landroid/location/Location;->setAccuracy(F)V

    :cond_23
    const-string p0, "GnssLocationProvider_ex"

    const-string p1, "changeNlpAccuracyInForce."

    .line 1101
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public final checkAllowedPackage(Ljava/lang/String;)Z
    .registers 7

    .line 2515
    sget-object v0, Lcom/android/server/location/gnss/sec/GnssConstants;->EXTRA_COMMAND_APPROVED_APPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 2516
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 p1, 0x1

    .line 2517
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    return p1

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_16
    return v2
.end method

.method public final checkAutoConfigEnabled()V
    .registers 4

    const-string v0, "/data/system/gps/secgps.conf"

    .line 470
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getPropertiesFromFile(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    const-string v1, "SERVER_TYPE"

    .line 471
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    if-eqz v0, :cond_2d

    .line 473
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mServerTypeI:I

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto Config in AngryGPS : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mServerTypeI:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_2d
    const-string p0, "No params for SERVER_TYPE in AngryGPS."

    .line 476
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method public final checkIfFileExists(Ljava/io/File;)Z
    .registers 2

    .line 1567
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_8

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :catch_8
    move-exception p0

    .line 1571
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final convertHashMapToStringBuilder(Ljava/util/HashMap;)Ljava/lang/StringBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 1860
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1861
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1862
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1863
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GnssLocationProvider_ex"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_4d
    return-object p0
.end method

.method public final createDirectories(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1942
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1944
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_2c

    .line 1946
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Directory "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " creation failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssLocationProvider_ex"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method public final createFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1952
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1954
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 1955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " file doesn\'t exist. create result = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GnssLocationProvider_ex"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-object p0
.end method

.method public final deleteSecGpsConf()V
    .registers 5

    const-string v0, "GnssLocationProvider_ex"

    .line 2003
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    const-string v2, "USE_SECGPS_CONF"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2005
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/gps/secgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2007
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2008
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string/jumbo v1, "secgps.conf deleted."

    .line 2010
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_24} :catch_25

    goto :goto_2a

    :catch_25
    const-string v1, " could not access secgps.conf file : /data/system/gps/secgps.conf"

    .line 2014
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->deleteSecGpsConfigAtHal()V

    return-void
.end method

.method public final deleteSecGpsConfigAtHal()V
    .registers 2

    .line 2021
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2022
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const-string v0, "USE_SECGPS_CONF=0"

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    goto :goto_18

    .line 2024
    :cond_10
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    :goto_18
    return-void
.end method

.method public dumpSec(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 2396
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string p1, "============ GPS Carrier Feature State ============"

    .line 2397
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2398
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getCarrierFeatureString()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    new-instance p1, Ljava/io/File;

    const-string v0, "/data/system/gps/secgps.conf"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "============ GPS SECGPS CONFIGURATION State ============"

    .line 2400
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 2402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getSecgpsConfiguration()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_54

    :cond_4f
    const-string p0, " There is no secgps.conf file !!!!!"

    .line 2404
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2406
    :goto_54
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final generateBeep()V
    .registers 6

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "generateBeep Method call"

    .line 817
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x1

    .line 826
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateBeep: Volume Level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x64

    if-ltz v1, :cond_4c

    const/4 v4, 0x7

    if-gt v1, v4, :cond_4c

    if-ne v1, v4, :cond_34

    goto :goto_37

    :cond_34
    mul-int/lit8 v1, v1, 0xe

    move v3, v1

    .line 835
    :goto_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateBeep: valid Volume:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :cond_4c
    const-string v1, "Error getting current volume: Setting volume as max volume"

    .line 838
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_51
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_5b

    .line 842
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    .line 843
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 845
    :cond_5b
    new-instance v0, Landroid/media/ToneGenerator;

    invoke-direct {v0, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    const/16 p0, 0x1c

    const/16 v1, 0x1f4

    .line 846
    invoke-virtual {v0, p0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    return-void
.end method

.method public getAutoSuplUrl()Ljava/lang/String;
    .registers 5

    .line 720
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 724
    :try_start_c
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_14} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception v3

    .line 726
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v3, v2

    .line 730
    :goto_1a
    :try_start_1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_22} :catch_23
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v0

    .line 732
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 735
    :goto_27
    invoke-virtual {p0, v3, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getUrlStringBuilder(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCarrierFeatureString()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "ro.multisim.simslotcount"

    const/4 v2, 0x1

    .line 2346
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_ab

    .line 2348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n Sim slot ID  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n AGPS Setting  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CarrierFeature_GPS_ConfigAgpsSetting"

    .line 2349
    invoke-virtual {p0, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getStrCarrierFeature(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n SUPL Address  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CarrierFeature_GPS_ConfigSuplHost"

    .line 2351
    invoke-virtual {p0, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getStrCarrierFeature(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n SUPL version  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CarrierFeature_GPS_ConfigSuplVersion"

    .line 2353
    invoke-virtual {p0, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n AGPS Mode  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CarrierFeature_GPS_ConfigAgpsMode"

    .line 2355
    invoke-virtual {p0, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n AGNSS Protocol  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CarrierFeature_GPS_ConfigAgnssProtocol"

    .line 2357
    invoke-virtual {p0, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n LPPeCP  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CarrierFeature_GPS_ConfigLppeCp"

    .line 2359
    invoke-virtual {p0, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n LPPeUP  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CarrierFeature_GPS_ConfigLppeUp"

    .line 2361
    invoke-virtual {p0, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n ES Extension Sec  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CarrierFeature_GPS_ConfigEsExtensionSec"

    .line 2363
    invoke-virtual {p0, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n Exception mask for Agnss  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CarrierFeature_GPS_ConfigExceptionMaskForAGNSS"

    .line 2365
    invoke-virtual {p0, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2368
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    :cond_ab
    return-object v0
.end method

.method public getCmccPsdsEnabled()Z
    .registers 6

    .line 991
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaMobile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 995
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "agps_function_switch"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCmccPsdsEnabled, isAgpsSwitchMode : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GnssLocationProvider_ex"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v3, :cond_3e

    const/4 p0, 0x2

    if-eq v0, p0, :cond_38

    const-string p0, "getCmccPsdsEnabled, AGPS setting : AGPS OFF"

    .line 1022
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_38
    const-string p0, "getCmccPsdsEnabled, AGPS setting : All Network"

    .line 1019
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1001
    :cond_3e
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_5a

    .line 1002
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_54

    .line 1003
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p0

    if-eqz p0, :cond_54

    const-string p0, "getCmccPsdsEnabled : AGPS setting : Home network, info.isRoaming() == true"

    .line 1004
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_54
    const-string p0, "getCmccPsdsEnabled : AGPS setting : Home network, info.isRoaming() == false"

    .line 1009
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5a
    const-string p0, "getCmccPsdsEnabled : AGPS setting : Home network, PS error"

    .line 1015
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public getConfigMapFromSimInformation(I)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1442
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    if-eqz p0, :cond_11

    .line 1443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mConfigMap:Ljava/util/HashMap;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getConfigValuesFromLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string p0, "?"

    .line 1137
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "\n"

    const-string v1, ""

    if-eqz p0, :cond_42

    const/4 p0, 0x0

    .line 1139
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1140
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?_"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_43

    :cond_42
    move-object p0, v1

    .line 1144
    :goto_43
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6d
    return-object p0
.end method

.method public final getConstellationTypeString(I)Ljava/lang/String;
    .registers 3

    .line 1496
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConstellationString:[Ljava/lang/String;

    array-length v0, p0

    if-ge p1, v0, :cond_b

    if-gez p1, :cond_8

    goto :goto_b

    .line 1498
    :cond_8
    aget-object p0, p0, p1

    goto :goto_e

    :cond_b
    :goto_b
    const/4 p1, 0x0

    .line 1497
    aget-object p0, p0, p1

    :goto_e
    return-object p0
.end method

.method public final getCpAgpsProfile()I
    .registers 2

    .line 1889
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_GPS_SupportEnableAgps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const-string p0, "GnssLocationProvider_ex"

    const-string v0, "getGpsCurrentApn"

    .line 1035
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_4d

    const-string v0, "This model uses multisim."

    .line 1038
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "gsm.sim.state"

    const-string v3, "0,0"

    .line 1039
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1040
    aget-object v0, v0, v2

    .line 1041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot1 Card Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ABSENT"

    .line 1043
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p1, "Slot1 is empty. No need to check apn. return APN null."

    .line 1045
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1050
    :cond_4d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1054
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 1055
    array-length v0, p1

    if-lez v0, :cond_5d

    .line 1056
    aget p1, p1, v2

    goto :goto_67

    .line 1058
    :cond_5d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    const-string/jumbo v0, "subID is null or 0 length, so get DefaultSubId!!"

    .line 1059
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :goto_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSubId from simSlot1, SubId = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/location/gnss/GnssLocationProviderSec;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    .line 1063
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string p1, "apn"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1062
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_ed

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCurrentApn] cursor.count() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :try_start_bc
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1071
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 1072
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1075
    :cond_d0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentApn] get apn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_bc .. :try_end_e4} :catchall_e8

    .line 1077
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_e8
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1078
    throw p0

    :cond_ed
    return-object v1
.end method

.method public final getHardwareFactors()Ljava/lang/String;
    .registers 7

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "getHardwareFactors"

    .line 1113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v1, Ljava/io/File;

    const-string v2, "/vendor/etc/gnss/hardware_factors.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->checkIfFileExists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string p0, ""

    return-object p0

    .line 1118
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1120
    :try_start_1c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_26} :catch_59

    .line 1122
    :try_start_26
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "model = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :goto_3d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 1125
    invoke-virtual {p0, v4, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getConfigValuesFromLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_4f

    goto :goto_3d

    .line 1127
    :cond_4b
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_59

    goto :goto_5d

    :catchall_4f
    move-exception p0

    .line 1120
    :try_start_50
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v1

    :try_start_55
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_58
    throw p0
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_59} :catch_59

    :catch_59
    move-exception p0

    .line 1128
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1131
    :goto_5d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HW_FEATURES:\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getIntCarrierFeature(ILjava/lang/String;)I
    .registers 5

    .line 2484
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public getLppBitmask()I
    .registers 5

    .line 1221
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_GPS_ConfigLppBitmask"

    .line 1222
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 1224
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v1

    const-string v2, "GnssLocationProvider_ex"

    if-nez v1, :cond_ca

    .line 1225
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    if-nez v1, :cond_1e

    .line 1226
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 1228
    :cond_1e
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_5d

    .line 1230
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isOTDOASupportMarket()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v3, 0x7

    .line 1233
    :cond_30
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isLppeSupportMarket()Z

    move-result v0

    if-eqz v0, :cond_3a

    or-int/lit8 v3, v3, 0x10

    .line 1236
    :cond_3a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    move-result v0

    if-eqz v0, :cond_44

    or-int/lit8 v3, v3, 0x40

    .line 1239
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(US market) LPPe Capability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getLppCapabilityString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1241
    :cond_5d
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaMarket()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Canada Market) LPPe Capability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getLppCapabilityString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1243
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1246
    :cond_7e
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaSktSim()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_c4

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaLguSim()Z

    move-result v1

    if-eqz v1, :cond_90

    goto :goto_c4

    .line 1249
    :cond_90
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaKttSim()Z

    move-result v1

    if-eqz v1, :cond_b3

    const/16 v0, 0x57

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(KOR KTT) LPPe Capability = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getLppCapabilityString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1257
    :cond_b3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isNoOperator()Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ca

    const-string p0, "(No Operator) LPPe Capability = []"

    .line 1258
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_c4
    :goto_c4
    const-string p0, "(KOR SKT,LGU) LPPe Capability = []"

    .line 1247
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1262
    :cond_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSC value LPPe Capability = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getLppCapabilityString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getLppCapabilityString(I)Ljava/lang/String;
    .registers 4

    .line 1267
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const-string v0, "AGNSS"

    .line 1269
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    const-string v0, "OTDOA"

    .line 1272
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_23

    const-string v0, "ECID"

    .line 1275
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2e

    const-string v0, "CONVENTIONAL_GPS"

    .line 1278
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_39

    const-string v0, "LPP_EXTENSION_CP"

    .line 1281
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_44

    const-string v0, "INTER_FREQ_OTDOA"

    .line 1284
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    const/16 v0, 0x40

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_4e

    const-string p1, "LPP_EXTENSION_UP"

    .line 1287
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    :cond_4e
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_59

    const-string p1, "NONE"

    .line 1290
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    :cond_59
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNrLppBitmask()I
    .registers 4

    .line 1331
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    return v1

    .line 1334
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    move-result v0

    const-string v2, "GnssLocationProvider_ex"

    if-eqz v0, :cond_33

    .line 1335
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_GPS_ConfigNrLppBitmask"

    .line 1336
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 1338
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "US market operator: NR LPP Profile = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 1339
    :cond_33
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isNoOperator()Z

    move-result p0

    if-eqz p0, :cond_40

    const-string p0, "No Operator LPP Disable"

    .line 1340
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_40
    return v1
.end method

.method public getPositionModeForCTC()I
    .registers 9

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "extCTCSelectPositionMode()"

    .line 900
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "locationModeState :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 909
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const-string/jumbo v5, "gsm.network.type"

    const-string v6, ""

    .line 912
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    .line 913
    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 914
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network Type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 917
    aget-object v5, v5, v3

    const-string v7, "LTE"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    const-string v5, "CTWAP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    const-string v5, "CTLTE"

    .line 918
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    const-string v5, "CTNET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    goto :goto_87

    :cond_85
    move v5, v3

    goto :goto_88

    :cond_87
    :goto_87
    move v5, v4

    :goto_88
    if-eqz v1, :cond_96

    .line 920
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_96

    const-string p0, "Roaming, Start Standalone GPS"

    .line 921
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    :cond_96
    if-eqz v2, :cond_aa

    .line 923
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v4, :cond_aa

    .line 924
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_aa

    const-string p0, "This is WIFI, Start Standalone GPS"

    .line 925
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    :cond_aa
    if-eqz v5, :cond_c5

    .line 928
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMsb()Z

    move-result p0

    if-eqz p0, :cond_bf

    const-string p0, "Start Tracking Mode : MS-Based"

    .line 929
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_d9

    :cond_bf
    const-string p0, "No MS-A, Ms-B capabilities"

    .line 932
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 936
    :cond_c5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s not CTC AGPS APN : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d9
    return v3
.end method

.method public getPositionModeForChn()I
    .registers 7

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "extChnSelectPositionMode() start"

    .line 949
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    if-nez v1, :cond_11

    .line 953
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 955
    :cond_11
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaMobile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    .line 956
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getCmccPsdsEnabled()Z

    move-result v1

    .line 958
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    const/4 v5, 0x1

    if-eq v3, v4, :cond_36

    if-eqz v1, :cond_2c

    goto :goto_36

    :cond_2c
    const-string v1, "extChnSelectPositionMode() postionMode == MS_BASED"

    .line 964
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-virtual {p0, v5}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updatePsdsEnabled(I)V

    move v2, v5

    goto :goto_5c

    :cond_36
    :goto_36
    const-string v1, "extChnSelectPositionMode() postionMode == STANDALONE"

    .line 960
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updatePsdsEnabled(I)V

    goto :goto_5c

    .line 968
    :cond_3f
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaOpen()Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 969
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaUnicom()Z

    move-result v1

    if-nez v1, :cond_57

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 970
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaTdOpen()Z

    move-result p0

    if-eqz p0, :cond_5c

    :cond_57
    const-string p0, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    .line 972
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return v2
.end method

.method public getPositionModeSec(ILandroid/location/provider/ProviderRequest;)I
    .registers 7

    .line 2058
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result p2

    const-string v0, "GnssLocationProvider_ex"

    if-eqz p2, :cond_18

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->isSupported()Z

    move-result p2

    if-nez p2, :cond_18

    const-string p2, "HIDL service may have been died. reset it."

    .line 2059
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/hal/GnssNative;->init()Z

    .line 2064
    :cond_18
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_37

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssConfiguration;->isWifiOnlyModel()Z

    move-result p2

    if-eqz p2, :cond_37

    if-ne p1, v1, :cond_36

    .line 2065
    sget-boolean p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    if-nez p0, :cond_36

    const-string p0, "Data status WIFI disconneted"

    .line 2066
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :cond_36
    return p1

    .line 2073
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->networkStateNeedsModeStandalone()Z

    move-result p2

    if-eqz p2, :cond_3e

    return v2

    .line 2079
    :cond_3e
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaCdmaMarket()Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 2080
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_57

    const-string p1, "LTE. mPositionMode is set to MSBASED"

    .line 2082
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_5e

    :cond_57
    const-string/jumbo p1, "not LTE. mPositionMode is changed to STANDALONE"

    .line 2085
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 2090
    :cond_5e
    :goto_5e
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    move-result p2

    if-eqz p2, :cond_7e

    .line 2091
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getPositionModeForChn()I

    move-result p1

    .line 2092
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHN startNavigating mPositionMode: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    :cond_7e
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssConfiguration;->isWifiOnlyModel()Z

    move-result p2

    if-eqz p2, :cond_8d

    const-string/jumbo p1, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    .line 2096
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 2102
    :cond_8d
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaTelecom()Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 2103
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getPositionModeForCTC()I

    move-result p1

    .line 2104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHN_CTC startNavigating mPositionMode: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :cond_ad
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanDocomo()Z

    move-result p2

    if-eqz p2, :cond_df

    .line 2110
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v3, "gps_noti_sound_enabled"

    invoke-static {p2, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_c5

    goto :goto_c6

    :cond_c5
    move v1, v2

    .line 2112
    :goto_c6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS noti sound enabled : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_df

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->generateBeep()V

    .line 2118
    :cond_df
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanJcom()Z

    move-result p2

    if-nez p2, :cond_ef

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanUQMobile()Z

    move-result p2

    if-eqz p2, :cond_104

    .line 2120
    :cond_ef
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KDDI MVNO JCOM/UQM setPositionmode on StartNavigating"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 2126
    :cond_104
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_12e

    .line 2127
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    move-result p2

    if-eqz p2, :cond_128

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    move-result p2

    if-eqz p2, :cond_12e

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 2128
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->shouldSupportSuplUseApnLatinMarket()Z

    move-result p0

    if-eqz p0, :cond_12e

    :cond_128
    const-string p0, "SIM card absent. force set position_mode to standalone"

    .line 2130
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12f

    :cond_12e
    move v2, p1

    :goto_12f
    return v2
.end method

.method public final getPropertiesFromFile(Ljava/lang/String;)Ljava/util/Properties;
    .registers 5

    const-string p0, "GnssLocationProvider_ex"

    .line 481
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 482
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    :try_start_c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_56
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_11} :catch_41
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_11} :catch_22

    .line 484
    :try_start_11
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18

    .line 485
    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_17} :catch_56
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_17} :catch_41
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_17} :catch_22

    goto :goto_6a

    :catchall_18
    move-exception v1

    .line 483
    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v1
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_22} :catch_56
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_22} :catch_41
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_22} :catch_22

    .line 492
    :catch_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load configuration file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "due to IllegalArgumentException"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :catch_3c
    move-exception p0

    .line 490
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6a

    .line 488
    :catch_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not access configuration file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 486
    :catch_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open configuration file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    return-object v0
.end method

.method public final getSecgpsConfiguration()Ljava/lang/String;
    .registers 3

    const-string v0, "/data/system/gps/secgps.conf"

    .line 2374
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getPropertiesFromFile(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p0

    .line 2375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n Time out  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TIMEOUT"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n AGPS Mode :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AGPS_MODE"

    .line 2376
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n LPPe CP  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LPPE_CP_TECHNOLOGY"

    .line 2377
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n LPPe UP  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LPPE_UP_TECHNOLOGY"

    .line 2378
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n XTRA Enable  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ENABLE_XTRA"

    .line 2379
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n SSL Enable :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SSL"

    .line 2380
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Opeartion Mode  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OPERATION_MODE"

    .line 2381
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Start Mode :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "START_MODE"

    .line 2382
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Agnss Protocol  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AGNSS_PROTOCOL"

    .line 2383
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n SUPL Port :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SUPL_PORT"

    .line 2384
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n SUPL Host  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SUPL_HOST"

    .line 2385
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n SUPL Version   :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SUPL_VERSION"

    .line 2386
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n LPP Profile :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LPP_PROFILE"

    .line 2387
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Enable L5  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ENABLE_L5"

    .line 2388
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Enable L5 TIS  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ENABLE_L5_TIS"

    .line 2389
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Spirent  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SPIRENT"

    .line 2390
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStrCarrierFeature(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2488
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTypeForIWLanNetwork()I
    .registers 5

    .line 539
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    const-string v1, "GnssLocationProvider_ex"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_49

    const/16 v2, 0x8

    if-eq v0, v2, :cond_49

    const/16 v2, 0x9

    if-eq v0, v2, :cond_49

    const/16 v2, 0xa

    if-eq v0, v2, :cond_49

    const/16 v2, 0xf

    if-ne v0, v2, :cond_1c

    goto :goto_49

    :cond_1c
    const/16 v2, 0xd

    if-ne v0, v2, :cond_28

    const/4 p0, 0x4

    const-string/jumbo v0, "networkType = IWLAN, VoiceNetworkType = LTE"

    .line 549
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 552
    :cond_28
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 p0, 0x0

    return p0

    :cond_32
    const/4 p0, 0x1

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkType = IWLAN, VoiceNetworkType is not LTE & HSDPA, type =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_49
    :goto_49
    const/4 p0, 0x2

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkType = IWLAN, VoiceNetworkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return p0
.end method

.method public final getTypeFromNetworkType()I
    .registers 4

    .line 513
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x3

    if-eq v0, v2, :cond_47

    if-eq v0, v1, :cond_47

    const/16 v2, 0x9

    if-eq v0, v2, :cond_47

    const/16 v2, 0xa

    if-eq v0, v2, :cond_47

    const/16 v2, 0xf

    if-ne v0, v2, :cond_1a

    goto :goto_47

    :cond_1a
    const/16 v2, 0xd

    if-ne v0, v2, :cond_20

    const/4 v1, 0x4

    goto :goto_48

    :cond_20
    const/16 v2, 0x14

    if-ne v0, v2, :cond_25

    goto :goto_48

    :cond_25
    const/16 v1, 0x12

    if-ne v0, v1, :cond_2e

    .line 528
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getTypeForIWLanNetwork()I

    move-result v1

    goto :goto_48

    :cond_2e
    const/4 v1, 0x1

    .line 531
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "networkType is not IWLAN and type = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GnssLocationProvider_ex"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_47
    :goto_47
    const/4 v1, 0x2

    :goto_48
    return v1
.end method

.method public final getUrlStringBuilder(II)Ljava/lang/StringBuilder;
    .registers 7

    .line 739
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "h-slp.mnc"

    .line 740
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "%03d"

    invoke-static {v0, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mcc"

    .line 742
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pub.3gppnetwork.org"

    .line 744
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "makeAutoSuplUrl :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GnssLocationProvider_ex"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public gnssConfigurationUpdateSec(Ljava/lang/String;)V
    .registers 4

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "gnssConfigurationUpdateSec"

    .line 2412
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method public final handleCarrierStateChanged(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "com.samsung.carrier.extra.CARRIER_STATE"

    .line 381
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPDATED"

    .line 382
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v0, -0x1

    const-string v1, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    .line 383
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_2e

    .line 385
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CARRIER_STATE_CHANGED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public final handleEachLineForConfigString(Ljava/lang/String;)V
    .registers 4

    const-string v0, "="

    .line 1809
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1810
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isPropertyArrayValid([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesNsFlp:Ljava/util/Properties;

    if-eqz p0, :cond_19

    const/4 v0, 0x0

    .line 1811
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_19
    return-void
.end method

.method public final handleEmergencySmsOverIms()V
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 351
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    goto :goto_18

    .line 353
    :cond_11
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const-string v0, "EMERGENCY_STATE=SMS"

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public handleEnableSec()V
    .registers 1

    .line 707
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendExtraConfigurationString()V

    return-void
.end method

.method public final handleIssueTrackerCommand(Landroid/os/Bundle;)V
    .registers 3

    const-string p0, "ONOFF"

    const/4 v0, 0x0

    .line 1821
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 1822
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extraCommand - com.sec.android.ISSUE_TRACKER_ONOFF, enabled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GnssLocationProvider_ex"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "dev.gnss.silentloggingIssueTracker"

    if-eqz p0, :cond_27

    const-string p0, "ON"

    .line 1824
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_27
    const-string p0, "OFF"

    .line 1826
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public final handleIssueTrackerOnOff(Landroid/content/Intent;)V
    .registers 3

    .line 329
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 330
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isIssueTrackerIntentReceived:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setIssueTrackerEnabled(Landroid/os/Bundle;)V

    goto :goto_15

    :cond_e
    const-string p0, "GnssLocationProvider_ex"

    const-string p1, "INTENT_ISSUE_TRACKER_ONOFF intent has been ignored because it\'s processed only once after booting."

    .line 333
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public final handleKtSuplServerCommand(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "host"

    .line 1797
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "port"

    .line 1798
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    .line 1799
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKTSuplServerEnabled(Z)V

    .line 1800
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerHost:Ljava/lang/String;

    .line 1801
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerPort:I

    .line 1802
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1803
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    .line 1805
    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "host :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " port ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerPort:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssLocationProvider_ex"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleNetworkStateChanged(Landroid/content/Intent;)V
    .registers 4

    const-string/jumbo p0, "networkInfo"

    .line 359
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo;

    .line 360
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const-string v1, "GnssLocationProvider_ex"

    if-ne p1, v0, :cond_2f

    .line 361
    sget-boolean p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    if-nez p1, :cond_3b

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WIFI NetworkInfo: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 363
    sput-boolean p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    goto :goto_3b

    .line 366
    :cond_2f
    sget-boolean p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    if-eqz p0, :cond_3b

    const-string p0, "WIFI is DISCONNECTED."

    .line 367
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 368
    sput-boolean p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    :cond_3b
    :goto_3b
    return-void
.end method

.method public handleReportSvStatusSec(Landroid/location/GnssStatus;)V
    .registers 2

    .line 1456
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->printSvStatus(Landroid/location/GnssStatus;)V

    return-void
.end method

.method public final handleSimStateChanged(Landroid/content/Intent;)V
    .registers 4

    const-string/jumbo v0, "ss"

    .line 251
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM_STATE_CHANGED received : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOADED"

    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 254
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->handleSimStateIccLoaded()V

    goto :goto_2c

    .line 256
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->handleSimStateIccNotLoaded()V

    :goto_2c
    return-void
.end method

.method public final handleSimStateIccLoaded()V
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 262
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSimOperatorToCarrierConfig()V

    .line 264
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 265
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setLppBitMask()V

    goto :goto_1d

    .line 267
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSuplServerSec()V

    .line 268
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendInitialLidState()V

    :goto_1d
    return-void
.end method

.method public final handleSimStateIccNotLoaded()V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 274
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSimOperatorToCarrierConfig()V

    .line 276
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_2e

    .line 277
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendExtraConfigurationString()V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getLppBitmask()I

    move-result v0

    .line 279
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLppMask:I

    if-eq v0, v1, :cond_2e

    if-ltz v0, :cond_2e

    .line 280
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLppMask:I

    .line 281
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setLppSupport(I)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final handleSktAgpsCommand(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "opType"

    .line 1780
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmdType"

    .line 1781
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "on"

    .line 1783
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string/jumbo p1, "msAssisted"

    .line 1784
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string/jumbo p1, "msBased"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    :cond_28
    const/4 p1, 0x1

    .line 1785
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSKApplicationFrameworkEnabled(Z)V

    goto :goto_42

    :cond_2d
    const-string/jumbo v0, "off"

    .line 1787
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    const/4 p1, 0x0

    .line 1788
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSKApplicationFrameworkEnabled(Z)V

    const-string/jumbo p1, "sys.sktgps"

    const-string v0, "0"

    .line 1789
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    :cond_42
    :goto_42
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 1792
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    :cond_4d
    return-void
.end method

.method public final hasLppeDbhCapability(Ljava/lang/String;)Z
    .registers 4

    .line 2479
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_13

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 2480
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getIntCarrierFeature(ILjava/lang/String;)I

    move-result p0

    and-int/2addr p0, v1

    if-lez p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public final initBroadcastReceiver()V
    .registers 5

    .line 662
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    .line 663
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "sms"

    .line 664
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v1, "localhost"

    const-string v2, "7275"

    .line 665
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 668
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 669
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_29
    const-string v1, "application/vnd.omaloc-supl-init"

    .line 671
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_36

    :catch_2f
    const-string v1, "GnssLocationProvider_ex"

    const-string v2, "Malformed SUPL init mime type"

    .line 673
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_36
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 677
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 678
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 679
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.ISSUE_TRACKER_ONOFF"

    .line 680
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 681
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 684
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_7b

    .line 686
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 687
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v2, "com.samsung.ims.action.IMS_REGISTRATION"

    .line 688
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 693
    :cond_7b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 694
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_SMS_OVER_IMS"

    .line 695
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mBroadcastReceiverSec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public initGnssLocationProviderSec()V
    .registers 5

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "init_GnssLocationProviderSec()"

    .line 410
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    .line 413
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesNsFlp:Ljava/util/Properties;

    .line 415
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 417
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 419
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSalesCodeToCarrierConfig()V

    .line 421
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 422
    new-instance v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 423
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLppeFusedLocationHelper:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 426
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->checkAutoConfigEnabled()V

    .line 428
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 429
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/io/File;I)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCtsRestrictModeFileObserver:Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;

    .line 431
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 433
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->registerLidStateChangedListener()V

    .line 436
    :cond_6b
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCellInfoCb:Landroid/telephony/TelephonyManager$CellInfoCallback;

    return-void
.end method

.method public final isAutoConfigNeeded()Z
    .registers 2

    .line 1529
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isArgentinaTelefonica()Z

    move-result v0

    if-nez v0, :cond_f

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mServerTypeI:I

    if-nez p0, :cond_d

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

.method public isDeviceBasedHybridSupported()Z
    .registers 2

    const-string v0, "CarrierFeature_GPS_ConfigLppeCp"

    .line 2474
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->hasLppeDbhCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "CarrierFeature_GPS_ConfigLppeUp"

    .line 2475
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->hasLppeDbhCapability(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isExtraCommandAllowed(I)Z
    .registers 7

    .line 2500
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    const-string v1, "ALLOW_EXTRA_COMMAND"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    const-string v2, "1"

    .line 2501
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 2505
    :cond_14
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2506
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_22

    return v0

    .line 2508
    :cond_22
    array-length v2, p1

    move v3, v0

    :goto_24
    if-ge v3, v2, :cond_32

    aget-object v4, p1, v3

    .line 2509
    invoke-virtual {p0, v4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->checkAllowedPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    return v1

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_32
    return v0
.end method

.method public isInEmergencySessionSEC()Z
    .registers 3

    .line 1386
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency(J)Z

    move-result p0

    return p0
.end method

.method public isKOREmergency(Z)Z
    .registers 2

    if-eqz p1, :cond_12

    .line 2612
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 2613
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isDeviceBasedHybridSupported()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final isKTSuplServerEnabled()Z
    .registers 3

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsKtGps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    return p0
.end method

.method public final isPropertyArrayValid([Ljava/lang/String;)Z
    .registers 4

    .line 1816
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p0, v1, :cond_1a

    aget-object p0, p1, v0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1a

    aget-object p0, p1, v1

    if-eqz p0, :cond_1a

    .line 1817
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1a

    move v0, v1

    :cond_1a
    return v0
.end method

.method public final isSKApplicationFrameworkEnabled()Z
    .registers 3

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSKAFEnable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    return p0
.end method

.method public isSpirentTestSim()Z
    .registers 3

    .line 2533
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 2535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSimOperatorName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SPIRENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportGnssBatching()Z
    .registers 2

    const-string/jumbo p0, "ro.location.hwflp"

    .line 2549
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const-string p0, "GnssLocationProvider_ex"

    const-string v0, "GNSS batching is disabled."

    .line 2552
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final networkStateNeedsModeStandalone()Z
    .registers 6

    .line 2180
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "GnssLocationProvider_ex"

    if-eqz v0, :cond_2d

    const-string v0, "Data status WIFI connected"

    .line 2181
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanDocomo()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 2183
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->shouldSupportSuplUseApnLatinMarket()Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_27

    :cond_26
    return v2

    :cond_27
    :goto_27
    const-string p0, "The vendor Not set to Standalone"

    .line 2184
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2191
    :cond_2d
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 2192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data network status "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 2193
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2192
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_76

    .line 2195
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 2196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Roaming status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_76
    return v1

    :cond_77
    return v2
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    .line 1675
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssLocationProvider;->onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo p1, "set_csc_parameters"

    .line 1677
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1678
    invoke-virtual {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setCscParameters(Landroid/os/Bundle;)V

    goto/16 :goto_266

    :cond_11
    const-string p1, "com.skt.intent.action.AGPS"

    .line 1679
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1680
    invoke-virtual {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->handleSktAgpsCommand(Landroid/os/Bundle;)V

    goto/16 :goto_266

    :cond_1e
    const-string/jumbo p1, "setOllehServer"

    .line 1681
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 1682
    invoke-virtual {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->handleKtSuplServerCommand(Landroid/os/Bundle;)V

    goto/16 :goto_266

    :cond_2c
    const-string/jumbo p1, "setNativeServer"

    .line 1683
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "GnssLocationProvider_ex"

    if-eqz p2, :cond_4b

    .line 1684
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKTSuplServerEnabled(Z)V

    .line 1686
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_266

    .line 1687
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    goto/16 :goto_266

    :cond_4b
    const-string p1, "activateGPS"

    .line 1689
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p0, "activateGPS is not supported"

    .line 1690
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_266

    :cond_5a
    const-string p1, "deactivateGPS"

    .line 1691
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    const-string p0, "deactivateGPS is not supported"

    .line 1692
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_266

    :cond_69
    const-string p1, "activateNLP"

    .line 1693
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    const-string p0, "activateNLP is not supported"

    .line 1694
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_266

    :cond_78
    const-string p1, "deactivateNLP"

    .line 1695
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_87

    const-string p0, "deactivateNLP is not supported"

    .line 1696
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_266

    :cond_87
    const-string p1, "activateAGPS"

    .line 1697
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x1

    const-string v3, "assisted_gps_enabled"

    if-eqz p2, :cond_a0

    .line 1698
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_266

    :cond_a0
    const-string p1, "deactivateAGPS"

    .line 1701
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    .line 1702
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_266

    :cond_b6
    const-string/jumbo p1, "setMode"

    .line 1705
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo p2, "mode"

    if-eqz p1, :cond_e1

    .line 1706
    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    .line 1707
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setMode ktPositionMode :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_266

    :cond_e1
    const-string p1, "getMode"

    .line 1708
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_106

    .line 1709
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getMode ktPositionMode :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->ktPositionMode:I

    invoke-virtual {p4, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_266

    :cond_106
    const-string/jumbo p1, "set_use_udp"

    .line 1711
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_116

    .line 1712
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-virtual {p0, p4}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->handleUseUdpCommand(Landroid/os/Bundle;)V

    goto/16 :goto_266

    :cond_116
    const-string/jumbo p1, "set_dcm_iot"

    .line 1713
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_143

    .line 1714
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "set_dcm_iot : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "dcm_iot"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setDcmSuplIot(Z)V

    goto/16 :goto_266

    :cond_143
    const-string/jumbo p1, "set_lpp_support"

    .line 1718
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_158

    const-string/jumbo p1, "set_lpp"

    .line 1719
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setLppSupport(I)V

    goto/16 :goto_266

    :cond_158
    const-string/jumbo p1, "setSecGpsConf"

    .line 1720
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_169

    .line 1721
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-virtual {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSecGpsConf(Landroid/os/Bundle;)V

    goto/16 :goto_266

    :cond_169
    const-string p1, "deleteSecGpsConf"

    .line 1723
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_179

    .line 1724
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->deleteSecGpsConf()V

    goto/16 :goto_266

    :cond_179
    const-string/jumbo p1, "gnss_configuration"

    .line 1726
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "config_string"

    const-string v3, ""

    if-eqz p1, :cond_1af

    .line 1727
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    const-string p3, "USE_SECGPS_CONF"

    invoke-virtual {p1, p3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1728
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p3}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p3

    if-nez p3, :cond_266

    const-string p3, "1"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_266

    .line 1729
    invoke-virtual {p4, p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1730
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_266

    .line 1731
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    goto/16 :goto_266

    :cond_1af
    const-string/jumbo p1, "update_last_location"

    .line 1736
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1df

    const-string/jumbo p1, "last_location"

    .line 1737
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    if-nez p1, :cond_1c9

    const-string p0, "Invalid last location info"

    .line 1739
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c9
    const-string p2, "Update last location directly to LMS !!!!!!!!!!!!, "

    .line 1742
    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-array p2, v2, [Landroid/location/Location;

    aput-object p1, p2, v0

    .line 1743
    invoke-static {p2}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    goto/16 :goto_266

    :cond_1df
    const-string/jumbo p1, "gnss_configuration_from_nsflp"

    .line 1744
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_221

    .line 1745
    invoke-virtual {p4, p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1746
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f3

    return-void

    .line 1748
    :cond_1f3
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p2, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 1751
    new-instance p2, Ljava/util/Scanner;

    invoke-direct {p2, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 1752
    :cond_1fd
    :goto_1fd
    :try_start_1fd
    invoke-virtual {p2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result p1

    if-eqz p1, :cond_213

    .line 1753
    invoke-virtual {p2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1fd

    .line 1754
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1fd

    .line 1755
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->handleEachLineForConfigString(Ljava/lang/String;)V
    :try_end_212
    .catchall {:try_start_1fd .. :try_end_212} :catchall_217

    goto :goto_1fd

    .line 1758
    :cond_213
    invoke-virtual {p2}, Ljava/util/Scanner;->close()V

    goto :goto_266

    :catchall_217
    move-exception p0

    .line 1751
    :try_start_218
    invoke-virtual {p2}, Ljava/util/Scanner;->close()V
    :try_end_21b
    .catchall {:try_start_218 .. :try_end_21b} :catchall_21c

    goto :goto_220

    :catchall_21c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_220
    throw p0

    :cond_221
    const-string p1, "com.sec.android.ISSUE_TRACKER_ONOFF"

    .line 1761
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_230

    if-nez p4, :cond_22c

    return-void

    .line 1763
    :cond_22c
    invoke-virtual {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->handleIssueTrackerCommand(Landroid/os/Bundle;)V

    goto :goto_266

    :cond_230
    const-string/jumbo p1, "set_emergency_state"

    .line 1766
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_251

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 1767
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-nez p1, :cond_251

    .line 1768
    invoke-virtual {p4, p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1769
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_266

    .line 1770
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    goto :goto_266

    .line 1775
    :cond_251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onExtraCommand: unknown command "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_266
    :goto_266
    return-void
.end method

.method public onRequestRefLocation()V
    .registers 1

    .line 2283
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->requestRefLocation()V

    return-void
.end method

.method public onRequestSetID(I)V
    .registers 7

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "onRequestSetId"

    .line 2311
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 2313
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2319
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->getNiSessionStarted()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2320
    invoke-static {}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->getSubIdForSuplNi()I

    move-result v1

    goto :goto_26

    .line 2322
    :cond_22
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 2324
    :goto_26
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2325
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    :cond_30
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3f

    .line 2329
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4a

    move v2, v3

    goto :goto_4b

    :cond_3f
    and-int/2addr p1, v2

    if-ne p1, v2, :cond_49

    .line 2335
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4a

    goto :goto_4b

    :cond_49
    const/4 p1, 0x0

    :cond_4a
    move v2, v4

    .line 2341
    :goto_4b
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    if-nez p1, :cond_51

    const-string p1, ""

    :cond_51
    invoke-virtual {p0, v2, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsSetId(ILjava/lang/String;)V

    return-void
.end method

.method public final printSvStatus(Landroid/location/GnssStatus;)V
    .registers 8

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 1464
    :goto_8
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v4

    if-ge v1, v4, :cond_32

    .line 1465
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_18

    goto :goto_2f

    .line 1466
    :cond_18
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->buildSingleSvInfoMessage(Landroid/location/GnssStatus;Ljava/lang/StringBuilder;I)V

    .line 1467
    rem-int/lit8 v4, v3, 0x6

    const/4 v5, 0x5

    if-ne v4, v5, :cond_25

    const-string v4, "\n"

    .line 1468
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    add-int/lit8 v3, v3, 0x1

    .line 1471
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    add-int/lit8 v2, v2, 0x1

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1475
    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SV Count : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "      (PRN, Constellation, SNR, Used)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssLocationProvider_ex"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5e

    .line 1478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return-void
.end method

.method public final registerLidStateChangedListener()V
    .registers 4

    .line 499
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_26

    .line 501
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result v1

    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_26

    const-string v1, "GnssLocationProvider_ex"

    const-string v2, "Foldable phone"

    .line 503
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    .line 506
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    :cond_26
    return-void
.end method

.method public reloadAutoSuplUrl()V
    .registers 2

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isAutoConfigNeeded()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_d

    .line 1524
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAutoConfigSuplServer()V

    :cond_d
    return-void
.end method

.method public requestRefLocation()V
    .registers 3

    .line 2287
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->getNiSessionStarted()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2288
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    .line 2289
    invoke-static {}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->getSubIdForSuplNi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2288
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;

    if-eqz v0, :cond_54

    .line 2291
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->getPhoneFromSimInfo()Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 2292
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->getPhoneFromSimInfo()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCellInfoCb:Landroid/telephony/TelephonyManager$CellInfoCallback;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    goto :goto_54

    .line 2297
    :cond_30
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2299
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 2302
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCellInfoCb:Landroid/telephony/TelephonyManager$CellInfoCallback;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    goto :goto_54

    :cond_4d
    const-string p0, "GnssLocationProvider_ex"

    const-string v0, "Error getting cell location info."

    .line 2304
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    return-void
.end method

.method public sendExtraConfigurationString()V
    .registers 4

    .line 1837
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getConfigMap()Ljava/util/HashMap;

    move-result-object v0

    .line 1840
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->isWifiOnlyModel()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "SUPL_USE_APN"

    const-string v2, "FALSE"

    .line 1841
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    :cond_1d
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaMarket()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1846
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getCpAgpsProfile()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CP_AGPS_ENABLE_PROFILE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    :cond_3a
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->convertHashMapToStringBuilder(Ljava/util/HashMap;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1852
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getHardwareFactors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->appendNsFlpConfigString(Ljava/lang/StringBuilder;)V

    .line 1855
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method public final sendInitialLidState()V
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    if-nez v0, :cond_d

    return-void

    .line 320
    :cond_d
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_33

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Folderable phone - simstate change. lidstate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendLidState(I)V

    :cond_33
    return-void
.end method

.method public final sendLidState(I)V
    .registers 4

    .line 2589
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_GPS_CONFIG_FOLD_CALIBRATED"

    .line 2590
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_d

    return-void

    :cond_d
    const/4 v1, 0x1

    if-nez p1, :cond_12

    move p1, v1

    goto :goto_15

    :cond_12
    if-ne p1, v1, :cond_15

    move p1, v0

    .line 2600
    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendLidState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final sendSecGpsConfigToHal()V
    .registers 4

    .line 1981
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1983
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    const-string v2, "SECGPS Configuration"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_14

    :catch_d
    const-string v1, "GnssLocationProvider_ex"

    const-string v2, "could not store to writer"

    .line 1985
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :goto_14
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1988
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    goto :goto_2e

    .line 1990
    :cond_26
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/io/StringWriter;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    :goto_2e
    return-void
.end method

.method public final setAgpsReferenceLocationCellId(IIIIIIIJ)V
    .registers 23

    move-object v0, p0

    .line 645
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->isSehGnssAidlHal()Z

    move-result v1

    const-string v2, "GnssLocationProvider_ex"

    if-eqz v1, :cond_22

    const-string v1, "SehGnss Hal Using AIDL"

    .line 646
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p8

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsReferenceLocationCellId(IIIIJII)V

    goto :goto_6a

    :cond_22
    const v1, 0x40066666    # 2.1f

    .line 649
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/hal/GnssNative;->getSehGnssHalVersion()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    const-wide v5, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v1, v3, v5

    if-gez v1, :cond_51

    const-string v1, "SehGnss Hal version 2.1"

    .line 651
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p8

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsReferenceLocationCellId(IIIIJII)V

    goto :goto_6a

    :cond_51
    const-string/jumbo v1, "setRefLocation through IAGnss"

    .line 655
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    move/from16 v0, p7

    int-to-long v8, v0

    const/4 v10, 0x0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsReferenceLocationCellId(IIIIJIII)V

    :goto_6a
    return-void
.end method

.method public final setAutoConfigSuplServer()V
    .registers 8

    .line 1534
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v1, 0x2

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    .line 1536
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    const/4 v0, 0x1

    .line 1538
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSetAutoSuplServer:Z

    :cond_14
    return-void
.end method

.method public final setCdmaReferenceLocation(ILandroid/telephony/CellInfoCdma;II)V
    .registers 15

    .line 634
    invoke-virtual {p2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    const/4 p2, 0x0

    int-to-long v8, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    .line 639
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIIIIJ)V

    return-void
.end method

.method public final setChcSuplServer()V
    .registers 8

    const/4 v1, 0x1

    const-string v2, "221.176.0.55"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    .line 1651
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    return-void
.end method

.method public final setCscParameters(Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "setCscParameters"

    .line 1157
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_b

    return-void

    .line 1163
    :cond_b
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/gps/cscgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1165
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isDeleted :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_30} :catch_31

    goto :goto_36

    :catch_31
    const-string v1, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    .line 1169
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    const/4 v1, 0x0

    const-string/jumbo v3, "is_empty"

    const-string v4, "TRUE"

    .line 1173
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const-string p1, "extras data is empty. do not update SUPL config."

    .line 1174
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 1176
    :cond_4c
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string/jumbo v3, "operation_mode"

    const-string v4, ""

    .line 1177
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MSBASED"

    .line 1179
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 1180
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setPropertiesMsBased(Landroid/os/Bundle;Ljava/util/Properties;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_66
    if-eqz v1, :cond_6b

    const-string p1, "1"

    goto :goto_6d

    :cond_6b
    const-string p1, "0"

    :goto_6d
    const-string v1, "CSC_SUPL_SUPLSERVERFROMCSC"

    .line 1183
    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "/data/system/gps"

    const-string v1, "Saved CSC GPS Information"

    .line 1187
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->storePropertiesToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)V

    .line 1190
    :goto_79
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSuplServerSec()V

    return-void
.end method

.method public final setDcmSuplIot(Z)V
    .registers 10

    const-string v0, "GnssLocationProvider_ex"

    if-eqz p1, :cond_17

    const-string p1, "Docomo SUPL IOT test = true server = dcm-supl.com"

    .line 802
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    const/16 v4, 0x1c6b

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v7, 0xf

    const-string v3, "dcm-supl.com"

    move-object v1, p0

    .line 803
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    goto :goto_1c

    :cond_17
    const-string p0, "Docomo SUPL IOT test = false"

    .line 806
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    return-void
.end method

.method public final setDcmSuplServer()V
    .registers 16

    const-string v0, "dcm_supl_iot"

    const-string v1, "false"

    .line 1635
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set supl server for JPN_DCM, iot value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "true"

    .line 1637
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v2, 0x3

    const/16 v4, 0x1c6b

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "dcm-supl.com"

    move-object v1, p0

    .line 1638
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    goto :goto_42

    :cond_34
    const/4 v9, 0x3

    const/16 v11, 0x1c6b

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0xf

    const-string/jumbo v10, "supl.google.com"

    move-object v8, p0

    .line 1641
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    :goto_42
    return-void
.end method

.method public final setFilePermissions(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 1961
    invoke-virtual {p1, p0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    const-string v2, "GnssLocationProvider_ex"

    if-nez v1, :cond_f

    const-string v1, "file.setReadable() failed."

    .line 1963
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_f
    invoke-virtual {p1, p0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "file.setWritable() failed."

    .line 1967
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method public final setGsmReferenceLocation(ILandroid/telephony/CellInfoGsm;II)V
    .registers 15

    .line 578
    invoke-virtual {p2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p2

    .line 579
    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v4

    .line 580
    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v7

    int-to-long v8, v7

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    .line 583
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIIIIJ)V

    return-void
.end method

.method public final setIssueTrackerEnabled(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "ONOFF"

    const/4 v1, 0x0

    .line 339
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTENT_ISSUE_TRACKER_ONOFF enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dev.gnss.silentloggingIssueTracker"

    if-eqz p1, :cond_27

    const-string p1, "ON"

    .line 342
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_27
    const-string p1, "OFF"

    .line 344
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    const/4 p1, 0x1

    .line 346
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isIssueTrackerIntentReceived:Z

    return-void
.end method

.method public final setLppBitMask()V
    .registers 6

    .line 286
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getLppBitmask()I

    move-result v0

    .line 287
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getNrLppBitmask()I

    move-result v1

    .line 290
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 291
    invoke-virtual {v2}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaMarket()Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 292
    invoke-virtual {v2}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isArgentinaTelefonica()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_24

    :cond_22
    const/4 v2, 0x0

    goto :goto_28

    .line 293
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSuplServerSec()V

    move v2, v3

    .line 296
    :goto_28
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v4}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 297
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSimOperatorToCarrierConfig()V

    .line 298
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSuplServerSec()V

    .line 300
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getLppBitmask()I

    move-result v0

    goto :goto_3c

    :cond_3b
    move v3, v2

    :goto_3c
    if-eqz v3, :cond_41

    .line 304
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendExtraConfigurationString()V

    .line 306
    :cond_41
    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLppMask:I

    if-eq v0, v2, :cond_4c

    if-ltz v0, :cond_4c

    .line 307
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevLppMask:I

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setLppSupport(I)V

    .line 310
    :cond_4c
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevNrLppMask:I

    if-eq v1, v0, :cond_57

    if-ltz v1, :cond_57

    .line 311
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->prevNrLppMask:I

    .line 312
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setNrLppSupport(I)V

    :cond_57
    return-void
.end method

.method public final setLppSupport(I)V
    .registers 5

    .line 1302
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1305
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLppSupport("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    if-nez v0, :cond_35

    .line 1308
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->init()Z

    move-result v0

    const-string/jumbo v2, "native_init"

    .line 1309
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    if-eqz v0, :cond_3a

    .line 1312
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateLppSupportConfiguration(I)V

    .line 1315
    :cond_3a
    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    if-nez p1, :cond_4e

    .line 1316
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanup()V

    const-string/jumbo p1, "native_cleanup"

    .line 1317
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->initLocationOff()Z

    :cond_4e
    return-void
.end method

.method public final setLteReferenceLocation(ILandroid/telephony/CellInfoLte;II)V
    .registers 15

    .line 598
    invoke-virtual {p2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p2

    .line 599
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v4

    .line 600
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v7

    int-to-long v8, v7

    .line 602
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3c

    .line 604
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 605
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 606
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "correct network type to 4 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GnssLocationProvider_ex"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    goto :goto_3d

    :cond_3c
    move v1, p1

    :goto_3d
    const/4 v6, 0x0

    move-object v0, p0

    move v2, p3

    move v3, p4

    .line 611
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIIIIJ)V

    return-void
.end method

.method public final setNrLppSupport(I)V
    .registers 5

    .line 1352
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1353
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNrLppSupport("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    if-nez v0, :cond_35

    .line 1364
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->init()Z

    move-result v0

    const-string/jumbo v2, "native_init"

    .line 1365
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    if-eqz v0, :cond_3a

    .line 1368
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateNrLppSupportConfiguration(I)V

    .line 1371
    :cond_3a
    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    if-nez p1, :cond_4e

    .line 1372
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanup()V

    const-string/jumbo p1, "native_cleanup "

    .line 1373
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->initLocationOff()Z

    :cond_4e
    return-void
.end method

.method public final setNrReferenceLocation(ILandroid/telephony/CellInfo;II)V
    .registers 15

    .line 616
    invoke-virtual {p2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 617
    check-cast p2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v4

    .line 618
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v8

    .line 619
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result v5

    .line 620
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result v6

    const/16 p2, 0x8

    if-eq p1, p2, :cond_42

    .line 622
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 623
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 624
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_42

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "correct network type to 8 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GnssLocationProvider_ex"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    goto :goto_43

    :cond_42
    move v1, p1

    :goto_43
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p3

    move v3, p4

    .line 629
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIIIIJ)V

    return-void
.end method

.method public final setPropertiesForSecGps(Landroid/os/Bundle;)V
    .registers 8

    .line 1918
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1919
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 1921
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_20

    .line 1922
    aget-object v3, v2, v0

    if-eqz v3, :cond_1d

    .line 1924
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_20
    return-void
.end method

.method public final setPropertiesMsBased(Landroid/os/Bundle;Ljava/util/Properties;Ljava/lang/String;)V
    .registers 9

    const-string/jumbo p0, "hslp_addr"

    const-string/jumbo v0, "supl.google.com"

    .line 1194
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "hslp_port"

    const/16 v1, 0x1c6b

    .line 1195
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "ssl"

    const/4 v2, 0x1

    .line 1196
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "ssl_cert"

    const/16 v3, 0xf

    .line 1197
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "supl_ver"

    const/4 v4, 0x2

    .line 1198
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 1200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SUPL CSC] suplAddress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " suplVersion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " suplPort "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " suplSslMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GnssLocationProvider_ex"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CSC_SUPL_OPMODE"

    .line 1206
    invoke-virtual {p2, v3, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "CSC_SUPL_HOST"

    .line 1207
    invoke-virtual {p2, p3, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1208
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CSC_SUPL_VER"

    invoke-virtual {p2, p1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1209
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CSC_SUPL_PORT"

    invoke-virtual {p2, p1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1210
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CSC_SUPL_SSL"

    invoke-virtual {p2, p1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1211
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CSC_SUPL_CERT"

    invoke-virtual {p2, p1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public final setReferenceLocation(ILandroid/telephony/CellInfo;)V
    .registers 6

    .line 562
    invoke-virtual {p2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 563
    invoke-virtual {p2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 564
    instance-of v2, p2, Landroid/telephony/CellInfoGsm;

    if-eqz v2, :cond_22

    .line 565
    check-cast p2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setGsmReferenceLocation(ILandroid/telephony/CellInfoGsm;II)V

    goto :goto_47

    .line 566
    :cond_22
    instance-of v2, p2, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_2c

    .line 567
    check-cast p2, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setWcdmaReferenceLocation(ILandroid/telephony/CellInfoWcdma;II)V

    goto :goto_47

    .line 568
    :cond_2c
    instance-of v2, p2, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_36

    .line 569
    check-cast p2, Landroid/telephony/CellInfoLte;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setLteReferenceLocation(ILandroid/telephony/CellInfoLte;II)V

    goto :goto_47

    .line 570
    :cond_36
    instance-of v2, p2, Landroid/telephony/CellInfoNr;

    if-eqz v2, :cond_3e

    .line 571
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setNrReferenceLocation(ILandroid/telephony/CellInfo;II)V

    goto :goto_47

    .line 572
    :cond_3e
    instance-of v2, p2, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_47

    .line 573
    check-cast p2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setCdmaReferenceLocation(ILandroid/telephony/CellInfoCdma;II)V

    :cond_47
    :goto_47
    return-void
.end method

.method public final setSalesCodeToCarrierConfig()V
    .registers 3

    .line 458
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    const-string v1, "CarrierFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getStrCarrierFeature(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 461
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_17

    :cond_10
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 462
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    :cond_17
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 466
    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setSalesCode(Ljava/lang/String;)V

    return-void
.end method

.method public final setSecGpsConf(Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1908
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    const-string v1, "USE_SECGPS_CONF"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1909
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setPropertiesForSecGps(Landroid/os/Bundle;)V

    .line 1910
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mPropertiesSecgps:Ljava/util/Properties;

    const-string v0, "/data/system/gps"

    const-string v1, "/data/system/gps/secgps.conf"

    const-string v2, "SECGPS Configuration"

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->storePropertiesToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)V

    .line 1914
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendSecGpsConfigToHal()V

    return-void
.end method

.method public final setSimOperatorToCarrierConfig()V
    .registers 9

    .line 1396
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 1397
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1399
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 1401
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1402
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 1403
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1405
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    .line 1406
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v4, v3}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setSimOperator(Ljava/lang/String;)V

    .line 1407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubscriptionId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", SimOperatorName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", SimOperator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GnssLocationProvider_ex"

    .line 1407
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 1412
    invoke-virtual {v7}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getConfigMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-direct {v6, v1, v3, v7, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;-><init>(ILjava/lang/String;Ljava/util/HashMap;Landroid/telephony/TelephonyManager;)V

    .line 1411
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_73
    return-void
.end method

.method public setSktSuplVer()V
    .registers 10

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSktSuplVer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AGPS_SUPL_VER_2_0_1_AGNSS,  server = wpde.nate.com"

    .line 779
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    const-string/jumbo v4, "wpde.nate.com"

    const/16 v5, 0x1c6b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    .line 780
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    return-void
.end method

.method public final setSuplServerForUnisocWifiOnly()V
    .registers 8

    const/4 v1, 0x3

    const-string/jumbo v2, "supl.google.com"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    .line 1662
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    return-void
.end method

.method public setSuplServerSec()V
    .registers 10

    .line 1597
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerFromCSC()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1598
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 1602
    :cond_10
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isUnisocGnss()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->isWifiOnlyModel()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1603
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSuplServerForUnisocWifiOnly()V

    return-void

    .line 1607
    :cond_24
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isTmbSuplServerRequired()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v2, 0x8

    const/16 v4, 0x1c6b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xf

    const-string/jumbo v3, "supl.geo.t-mobile.com"

    move-object v1, p0

    .line 1608
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    goto/16 :goto_d6

    .line 1610
    :cond_3d
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isGoogleServerAgpsOnlyRequired()Z

    move-result v0

    if-eqz v0, :cond_56

    const/16 v2, 0x8

    const/16 v4, 0x1c6b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xf

    const-string/jumbo v3, "supl.google.com"

    move-object v1, p0

    .line 1611
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    goto/16 :goto_d6

    .line 1613
    :cond_56
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v0, v1, :cond_65

    .line 1614
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setDcmSuplServer()V

    goto/16 :goto_d6

    .line 1615
    :cond_65
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v0, v1, :cond_7e

    const/4 v3, 0x2

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    const-string/jumbo v4, "location2.kddi.ne.jp"

    move-object v2, p0

    .line 1616
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    goto :goto_d6

    .line 1618
    :cond_7e
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v0, v1, :cond_97

    const/4 v3, 0x3

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    const-string/jumbo v4, "supl.rm-n.jp"

    move-object v2, p0

    .line 1619
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    goto :goto_d6

    .line 1621
    :cond_97
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChcSuplRequired()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1622
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setChcSuplServer()V

    goto :goto_d6

    .line 1623
    :cond_a3
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUneSuplRequired()Z

    move-result v0

    if-eqz v0, :cond_ba

    const/4 v2, 0x2

    const/16 v4, 0x1c6b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xf

    const-string/jumbo v3, "supl.attmex.mx"

    move-object v1, p0

    .line 1624
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    goto :goto_d6

    .line 1626
    :cond_ba
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v0, v1, :cond_c8

    .line 1627
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAutoConfigSuplServer()V

    goto :goto_d6

    :cond_c8
    const/4 v3, 0x3

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    const-string/jumbo v4, "supl.google.com"

    move-object v2, p0

    .line 1629
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    :goto_d6
    return-void
.end method

.method public final setSuplServerWithProperties(Ljava/util/Properties;)Z
    .registers 10

    const-string v0, "CSC_SUPL_HOST"

    .line 1577
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "CSC_SUPL_VER"

    const-string v1, "1"

    .line 1578
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSC_SUPL_PORT"

    const-string v2, "7276"

    .line 1579
    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSC_SUPL_SSL"

    const-string v4, "0"

    .line 1580
    invoke-virtual {p1, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CSC_SUPL_CERT"

    .line 1581
    invoke-virtual {p1, v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1583
    :try_start_24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1584
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1585
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1586
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v0

    .line 1587
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_3a} :catch_3c

    const/4 p0, 0x1

    return p0

    :catch_3c
    move-exception p0

    .line 1589
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final setWcdmaReferenceLocation(ILandroid/telephony/CellInfoWcdma;II)V
    .registers 15

    .line 588
    invoke-virtual {p2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p2

    .line 589
    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v4

    .line 590
    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v7

    int-to-long v8, v7

    .line 592
    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    .line 593
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIIIIJ)V

    return-void
.end method

.method public setXtraDownloadedTime()V
    .registers 3

    const-string p0, "GnssLocationProvider_ex"

    const-string/jumbo v0, "setXtraDownloadedTime()"

    .line 1509
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1511
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.sys.xtra_time"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopNavigatingSec()V
    .registers 5

    .line 2144
    sget-object v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$3;->$SwitchMap$com$android$server$location$gnss$sec$CarrierConfig$Carrier:[I

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "GnssLocationProvider_ex"

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    goto :goto_6e

    .line 2163
    :cond_1b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_20

    return-void

    :cond_20
    const-string/jumbo v0, "release ToneGenerator"

    .line 2164
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    .line 2166
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_6e

    .line 2155
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isKTSuplServerEnabled()Z

    move-result v0

    if-nez v0, :cond_36

    return-void

    .line 2156
    :cond_36
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKTSuplServerEnabled(Z)V

    const-string/jumbo v0, "mIsKtGps is changed"

    .line 2157
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2159
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    goto :goto_6e

    .line 2146
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isSKApplicationFrameworkEnabled()Z

    move-result v0

    if-nez v0, :cond_52

    return-void

    .line 2147
    :cond_52
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSKApplicationFrameworkEnabled(Z)V

    const-string/jumbo v0, "stopNavigating : isSKAF changed"

    .line 2148
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "0"

    .line 2149
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2151
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public final storeFile(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    .line 1972
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2c
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_5} :catch_2c

    .line 1973
    :try_start_5
    invoke-virtual {p2, p0, p3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p2, "GnssLocationProvider_ex"

    .line 1974
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Saved: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_22

    .line 1975
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2c
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_21} :catch_2c

    goto :goto_30

    :catchall_22
    move-exception p1

    .line 1972
    :try_start_23
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p0

    :try_start_28
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw p1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/ClassCastException; {:try_start_28 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception p0

    .line 1976
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_30
    return-void
.end method

.method public final storePropertiesToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5

    .line 1932
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->createDirectories(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1934
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setFilePermissions(Ljava/io/File;)V

    .line 1935
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->storeFile(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 1937
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public final updateKTSuplServerEnabled(Z)V
    .registers 3

    .line 785
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    .line 786
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mIsKtGps : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsKtGps:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssLocationProvider_ex"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateKoreanOperatorsSuplSetting()V
    .registers 10

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "setKoreanOperatorsSuplSetting()"

    .line 856
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isSKApplicationFrameworkEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, " SKT GPS mode : SUPL 2.0.1 AGNSS"

    .line 859
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSktSuplVer()V

    const-string/jumbo p0, "sys.sktgps"

    const-string v0, "1"

    .line 861
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 862
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isKTSuplServerEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, " KT GPS mode : SUPL2.0 AGNSS"

    .line 863
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    .line 864
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerHost:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mKTSuplServerPort:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    goto :goto_62

    :cond_38
    const-string/jumbo v1, "setKoreanOperatorsSuplSetting() : Google SUPL 2.0 AGNSS"

    .line 867
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_54

    .line 869
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const-string v1, "ENABLE_SUPL_AGNSS_BEIDOU=FALSE"

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const-string v1, "ENABLE_SUPL_AGNSS_GALILEO=FALSE"

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    :cond_54
    const/4 v3, 0x3

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    const-string/jumbo v4, "supl.google.com"

    move-object v2, p0

    .line 877
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    :goto_62
    return-void
.end method

.method public final updateLppSupportConfiguration(I)V
    .registers 4

    .line 2264
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2265
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configurationUpdate_setLppSupport, LPP_PROFILE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LPP_PROFILE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method public final updateNrLppSupportConfiguration(I)V
    .registers 4

    .line 2276
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2277
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configurationUpdate_setNrLppSupport, NR_LPP_PROFILE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NR_LPP_PROFILE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method public final updatePsdsEnabled(I)V
    .registers 4

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configurationUpdate_xtraEnable, XTRA_ENABLE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_35

    .line 2250
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XTRA_ENABLE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    goto :goto_3d

    .line 2252
    :cond_35
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    :goto_3d
    return-void
.end method

.method public final updateSKApplicationFrameworkEnabled(Z)V
    .registers 3

    .line 756
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    .line 757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSKAFEnable : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mIsSKApplicationFramework:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssLocationProvider_ex"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSuplServerConfiguration(ILjava/lang/String;IIII)V
    .registers 10

    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGPS_TYPE=3\nSUPL_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSUPL_HOST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSUPL_PORT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSUPL_SSL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSSL_VER="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSSL_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update SUPL Configuration["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "GnssLocationProvider_ex"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-nez p1, :cond_83

    .line 2233
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    goto :goto_8b

    .line 2235
    :cond_83
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 2238
    :goto_8b
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateSuplAddress(Ljava/lang/String;)V

    return-void
.end method

.method public updateSuplServerForNewSISession()V
    .registers 4

    .line 2031
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->getNiSessionStarted()Z

    move-result v0

    const-string v1, "GnssLocationProvider_ex"

    if-eqz v0, :cond_15

    const-string v0, "NISession flag set to false"

    .line 2032
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->setNiSessionStarted(Z)V

    .line 2037
    :cond_15
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 2038
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "Set SubIdForSuplNi to DD subID"

    .line 2039
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->setSubIdForSuplNi(I)V

    .line 2043
    :cond_29
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2045
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateKoreanOperatorsSuplSetting()V

    :cond_3c
    return-void
.end method

.method public final updateSuplServerFromCSC()Z
    .registers 5

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "updateSuplServerFromCSC"

    .line 1543
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/gps/cscgps.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->checkIfFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_17

    return v2

    .line 1549
    :cond_17
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->getPropertiesFromFile(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    const-string v1, "CSC_SUPL_SUPLSERVERFROMCSC"

    .line 1550
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 1551
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_35

    .line 1553
    :try_start_29
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2d} :catch_31

    const/4 v3, 0x1

    if-ne v1, v3, :cond_35

    goto :goto_36

    :catch_31
    move-exception v1

    .line 1555
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_35
    move v3, v2

    :goto_36
    if-nez v3, :cond_39

    return v2

    .line 1561
    :cond_39
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSuplServerWithProperties(Ljava/util/Properties;)Z

    move-result p0

    return p0
.end method
