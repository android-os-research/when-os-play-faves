.class public Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;
.super Ljava/lang/Object;
.source "SemEasySetupWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;,
        Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;
    }
.end annotation


# static fields
.field private static final BAND_24_GHZ_1_CH:I = 0x96c

.field public static final EVENT_CHECK_EASY_SETUP_NETWORK:I = 0x6

.field public static final EVENT_PACKAGE_REPLACED_AND_REMOVED:I = 0x4

.field public static final EVENT_SCREEN_OFF:I = 0x2

.field public static final EVENT_SCREEN_ON:I = 0x1

.field public static final EVENT_START_PARTIAL_SCAN:I = 0x5

.field public static final EVENT_USER_PRESENT:I = 0x3

.field private static final INVALID_TIME_STAMP:J = -0x8000000000000000L

.field private static final MINUTE_MS:J = 0xea60L

.field public static final PACKAGE_EASY_CONNECT:Ljava/lang/String; = "com.samsung.android.oneconnect"

.field private static final SECOND_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "SemWifiEasySetupManager"


# instance fields
.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mContext:Landroid/content/Context;

.field private final mEasySetupSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

.field private mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

.field private mIsEnabled:Z

.field mLastPartialScanTimeStamp:J

.field private final mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field final mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

.field private mScreenOn:Z

.field private mVerboseLoggingEnabled:Z

.field private mWifiEnabled:Z

.field private final mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;


# direct methods
.method public static synthetic $r8$lambda$L8L03yA5mj_J8F-urWy-p42sisY(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->lambda$new$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M95c2yC-z95xKlnmYh6kafp60vc(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->lambda$registerReceiver$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$W08Ja49wUKhVj1l1GPh2xvRQJMk(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->lambda$registerReceiver$1(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/util/SemClock;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEasySetupSettings(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScreenOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScreenOn(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScreenOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckEasySetupNetwork(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->checkEasySetupNetwork(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misEasySetupEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isEasySetupEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetPartialScanTimerWhenScreenOnOff(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->resetPartialScanTimerWhenScreenOnOff()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->startPartialScan()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;)V
    .registers 11

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    const/4 v1, 0x0

    .line 82
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 87
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    .line 96
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 98
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 99
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 100
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 101
    new-instance p1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;

    .line 102
    new-instance p1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    invoke-direct {p1, p0, p6}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    .line 103
    new-instance p1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    return-void
.end method

.method private checkEasySetupNetwork(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 196
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_b

    const-string v0, "SemWifiEasySetupManager"

    const-string v1, "checkEasySetupNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isEasySetupEnabled()Z

    move-result v0

    if-eqz v0, :cond_84

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiEnabled:Z

    if-eqz v0, :cond_84

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScreenOn:Z

    if-eqz v0, :cond_84

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isHomeActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 198
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 201
    iget-object v5, v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 202
    iget-object v7, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_50

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 203
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isValidSecurityType(Landroid/net/wifi/ScanResult;)Z

    move-result v6

    if-eqz v6, :cond_50

    iget v6, v4, Landroid/net/wifi/ScanResult;->level:I

    iget v7, v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->minRssi:I

    if-le v6, v7, :cond_50

    .line 205
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 210
    :cond_78
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    .line 211
    iget-object v1, v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->launchEasySetupService(Landroid/app/PendingIntent;Ljava/util/List;)V

    goto :goto_29

    :cond_84
    return-void
.end method

.method private getPartialScanTime()I
    .registers 1

    .line 430
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getEasySetupPartialScanIntervalMs()I

    move-result p0

    return p0
.end method

.method private isEasySetupEnabled()Z
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportEasySetup()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 418
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    return p0

    :cond_b
    const-string p0, "SemWifiEasySetupManager"

    const-string v0, "setEasySetupScanSettings disabled by SCPM"

    .line 420
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isValidSecurityType(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 218
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-nez p0, :cond_1a

    .line 219
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-nez p0, :cond_1a

    .line 220
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-nez p0, :cond_1a

    .line 221
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private synthetic lambda$new$0(Ljava/util/List;)V
    .registers 3

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    const/4 v0, 0x6

    .line 105
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic lambda$registerReceiver$1(Z)V
    .registers 2

    if-eqz p1, :cond_d

    .line 131
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_17

    .line 133
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_17
    return-void
.end method

.method private synthetic lambda$registerReceiver$2(II)V
    .registers 4

    const/4 p2, 0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 140
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->setWifiState(Z)V

    goto :goto_e

    :cond_8
    if-ne p1, p2, :cond_e

    const/4 p1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->setWifiState(Z)V

    :cond_e
    :goto_e
    return-void
.end method

.method private launchEasySetupService(Landroid/app/PendingIntent;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "scanResults"

    .line 228
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 230
    :try_start_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p0

    .line 232
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method private registerPackageChangedReceiver()V
    .registers 4

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$2;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerReceiver()V
    .registers 4

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->registerPackageChangedReceiver()V

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$1;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScreenOn:Z

    .line 129
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiEnabled:Z

    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/ScanPool;->registerScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->registerUserActivityReceiver()V

    return-void
.end method

.method private declared-synchronized registerUserActivityReceiver()V
    .registers 4

    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    if-nez v0, :cond_20

    .line 258
    new-instance v0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    .line 270
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 271
    new-instance v1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->addHomeVisibilityListener(Ljava/util/concurrent/Executor;Landroid/app/HomeVisibilityListener;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 273
    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetPartialScanTimerWhenScreenOnOff()Z
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportEasySetupResetAfterScreenOffOn()Z

    move-result p0

    return p0
.end method

.method private retrieveWifiScannerIfNecessary()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-eqz v0, :cond_5

    return-void

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiScanner;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    return-void
.end method

.method private setWifiState(Z)V
    .registers 2

    .line 192
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiEnabled:Z

    return-void
.end method

.method private startPartialScan()V
    .registers 6

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->retrieveWifiScannerIfNecessary()V

    .line 243
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/4 v1, 0x2

    .line 244
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    const/4 v1, 0x0

    .line 245
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 246
    iput-object v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 247
    iget-object v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v3, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v4, 0x96c

    invoke-direct {v3, v4}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v3, v2, v1

    const/4 v1, 0x3

    .line 248
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 251
    new-instance v1, Landroid/os/WorkSource;

    const/16 v2, 0x3e8

    const-string v3, "com.samsung.android.server.wifi"

    invoke-direct {v1, v2, v3}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;

    invoke-virtual {v2, v0, p0, v1}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    return-void
.end method


# virtual methods
.method public checkAndStart()V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->registerReceiver()V

    return-void
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 325
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getEasySetupScanSettings()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    return-object p0
.end method

.method isHomeActivityVisible()Z
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 279
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 280
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_43

    .line 283
    :cond_19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    return v1

    .line 287
    :cond_28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_3a

    return v1

    .line 291
    :cond_3a
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_43
    :goto_43
    return v1
.end method

.method isSufficientPartialScan()Z
    .registers 8

    .line 296
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const-string v2, "SemWifiEasySetupManager"

    if-eqz v0, :cond_63

    .line 297
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    sub-long/2addr v3, v5

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->getPartialScanTime()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    const-wide/16 v3, 0x3e8

    if-lez v0, :cond_3e

    .line 300
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_3d

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->getPartialScanTime()I

    move-result p0

    int-to-long v5, p0

    div-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " s passed. Start partial scan"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v1

    .line 306
    :cond_3e
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_61

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip partial scan because less than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->getPartialScanTime()I

    move-result p0

    int-to-long v5, p0

    div-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 307
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    const/4 p0, 0x0

    return p0

    .line 313
    :cond_63
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_6c

    const-string p0, "first partial scan after boot"

    .line 314
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    return v1
.end method

.method public setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    .registers 5

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 173
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    .line 174
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    .line 175
    iget-object v1, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v0, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    if-eqz v0, :cond_12

    const/4 p2, 0x1

    .line 177
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    .line 181
    :cond_2d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEasySetupScanSettings package : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mIsEnabled : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiEasySetupManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
