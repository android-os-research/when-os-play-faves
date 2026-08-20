.class public Lcom/android/internal/telephony/DeviceStateMonitor;
.super Landroid/os/Handler;
.source "DeviceStateMonitor.java"


# static fields
.field static final blacklist CELL_INFO_INTERVAL_LONG_MS:I = 0x2710
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist CELL_INFO_INTERVAL_SHORT_MS:I = 0x7d0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final blacklist DBG:Z = false

.field static final blacklist EVENT_CHARGING_STATE_CHANGED:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist EVENT_SCREEN_STATE_CHANGED:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist EVENT_WIFI_CONNECTION_CHANGED:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final blacklist LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

.field private static final blacklist LINK_CAPACITY_UPLINK_THRESHOLDS:[I

.field protected static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCellInfoMinInterval:I

.field private final blacklist mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private blacklist mIsAlwaysSignalStrengthReportingEnabled:Z

.field private blacklist mIsAutomotiveProjectionActive:Z

.field private blacklist mIsCharging:Z

.field private blacklist mIsLowDataExpected:Z

.field private blacklist mIsPowerSaveOn:Z

.field private blacklist mIsRadioOn:Z

.field private blacklist mIsScreenOn:Z

.field private blacklist mIsTetheringOn:Z

.field private blacklist mIsWifiConnected:Z

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mUnsolicitedResponseFilter:I

.field private final blacklist mWifiNetworkRequest:Landroid/net/NetworkRequest;


# direct methods
.method public static synthetic blacklist $r8$lambda$H7FyOrCDkaZT9ooiVdD8LyLRZcc(Lcom/android/internal/telephony/DeviceStateMonitor;ILjava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->lambda$new$0(ILjava/util/Set;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misPowerSaveModeOn(Lcom/android/internal/telephony/DeviceStateMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isPowerSaveModeOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misScreenOn(Lcom/android/internal/telephony/DeviceStateMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    const-class v0, Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/DeviceStateMonitor;->TAG:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 837
    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 855
    fill-array-data v0, :array_3c

    sput-object v0, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    return-void

    nop

    :array_1c
    .array-data 4
        0x64
        0x1f4
        0x3e8
        0x1388
        0x2710
        0x4e20
        0xc350
        0x124f8
        0x186a0
        0x30d40
        0x7a120
        0xf4240
        0x16e360
        0x1e8480
    .end array-data

    :array_3c
    .array-data 4
        0x64
        0x1f4
        0x3e8
        0x1388
        0x2710
        0x4e20
        0xc350
        0x124f8
        0x186a0
        0x30d40
        0x7a120
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 10

    .line 271
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 95
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 99
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xc

    .line 102
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xd

    .line 103
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mWifiNetworkRequest:Landroid/net/NetworkRequest;

    .line 106
    new-instance v2, Lcom/android/internal/telephony/DeviceStateMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$1;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/16 v3, 0x7d0

    .line 199
    iput v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    const/4 v3, -0x1

    .line 205
    iput v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    .line 207
    new-instance v3, Lcom/android/internal/telephony/DeviceStateMonitor$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$2;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 227
    new-instance v4, Lcom/android/internal/telephony/DeviceStateMonitor$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$3;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 273
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    const/4 v6, 0x0

    .line 275
    invoke-virtual {v5, v3, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 277
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isPowerSaveModeOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    .line 278
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isDeviceCharging()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    .line 279
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isScreenOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isRadioOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    .line 281
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isAutomotiveProjectionActive()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    const/4 v3, 0x0

    .line 283
    iput-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    .line 284
    iput-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeviceStateMonitor mIsTetheringOn="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsScreenOn="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsCharging="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsPowerSaveOn="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsLowDataExpected="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsAutomotiveProjectionActive="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsWifiConnected="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsAlwaysSignalStrengthReportingEnabled="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAlwaysSignalStrengthReportingEnabled:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsRadioOn="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 297
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 298
    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.os.action.CHARGING"

    .line 299
    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.os.action.DISCHARGING"

    .line 300
    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    .line 301
    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4, v5, v6, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 304
    iget-object v4, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 305
    iget-object v3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    invoke-interface {v3, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    iget-object v3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x9

    invoke-interface {v3, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 307
    iget-object v3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xa

    invoke-interface {v3, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 309
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 311
    invoke-virtual {v3, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 313
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "uimode"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 316
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/DeviceStateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    .line 315
    invoke-virtual {v0, v1, p1, v2}, Landroid/app/UiModeManager;->addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V

    return-void
.end method

.method private blacklist deviceTypeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    if-eq p1, p0, :cond_e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_b

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_b
    const-string p0, "LOW_DATA_EXPECTED"

    return-object p0

    :cond_e
    const-string p0, "CHARGING_STATE"

    return-object p0

    :cond_11
    const-string p0, "POWER_SAVE_MODE"

    return-object p0
.end method

.method private blacklist isAutomotiveProjectionActive()Z
    .registers 5

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 761
    :cond_12
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getActiveProjectionTypes()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    move v1, v2

    .line 763
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutomotiveProjectionActive="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v1
.end method

.method private blacklist isDeviceCharging()Z
    .registers 4

    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 708
    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceCharging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method private blacklist isLowDataExpected()Z
    .registers 2

    .line 328
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-eqz v0, :cond_10

    :cond_c
    iget-boolean p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    if-nez p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private blacklist isPowerSaveModeOn()Z
    .registers 4

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 694
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPowerSaveModeOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method private blacklist isRadioOn()Z
    .registers 1

    .line 751
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result p0

    return p0
.end method

.method private blacklist isScreenOn()Z
    .registers 9

    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 723
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_45

    .line 726
    array-length v3, v0

    move v4, v1

    :goto_18
    if-ge v4, v3, :cond_3f

    aget-object v5, v0, v4

    .line 729
    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3c

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen on for display=Display id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v2

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_3f
    const-string v0, "Screens all off"

    .line 739
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v1

    :cond_45
    const-string v0, "No displays found"

    .line 743
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v1
.end method

.method private synthetic blacklist lambda$new$0(ILjava/util/Set;)V
    .registers 4

    const/4 p1, 0x1

    .line 318
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 319
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 320
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist log(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_7

    .line 796
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private blacklist onReset()V
    .registers 4

    const-string v0, "onReset."

    const/4 v1, 0x1

    .line 619
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 620
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 621
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 622
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 623
    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->setUnsolResponseFilter(IZ)V

    .line 624
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setLinkCapacityReportingCriteria()V

    .line 625
    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setCellInfoMinInterval(I)V

    return-void
.end method

.method private blacklist onUpdateDeviceState(IZ)V
    .registers 8

    .line 507
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableBarringInfoReports()Z

    move-result v0

    .line 508
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_e8

    :pswitch_d
    return-void

    .line 521
    :pswitch_e
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    if-ne p1, p2, :cond_13

    return-void

    .line 522
    :cond_13
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    goto :goto_53

    .line 538
    :pswitch_16
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAlwaysSignalStrengthReportingEnabled:Z

    if-ne p1, p2, :cond_1b

    return-void

    .line 539
    :cond_1b
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAlwaysSignalStrengthReportingEnabled:Z

    goto :goto_53

    .line 534
    :pswitch_1e
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    if-ne p1, p2, :cond_23

    return-void

    .line 535
    :cond_23
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    goto :goto_53

    .line 525
    :pswitch_26
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-ne p1, p2, :cond_2b

    return-void

    .line 526
    :cond_2b
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    goto :goto_53

    .line 515
    :pswitch_2e
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-ne p1, p2, :cond_33

    return-void

    .line 516
    :cond_33
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    .line 517
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    goto :goto_53

    .line 529
    :pswitch_39
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    if-ne p1, p2, :cond_3e

    return-void

    .line 530
    :cond_3e
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    .line 531
    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    goto :goto_53

    .line 511
    :pswitch_44
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-ne p1, p2, :cond_49

    return-void

    .line 512
    :cond_49
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    goto :goto_53

    .line 542
    :pswitch_4c
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    if-ne p1, p2, :cond_51

    return-void

    .line 543
    :cond_51
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    .line 549
    :goto_53
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result p1

    if-eq v1, p1, :cond_5f

    .line 551
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    xor-int/2addr p1, v3

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/Phone;->notifyDeviceIdleStateChanged(Z)V

    .line 554
    :cond_5f
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->computeCellInfoMinInterval()I

    move-result p1

    .line 555
    iget p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    if-eq p2, p1, :cond_80

    .line 556
    iput p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    .line 557
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->setCellInfoMinInterval(I)V

    .line 558
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellInfo Min Interval Updated to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 561
    :cond_80
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isLowDataExpected()Z

    move-result p2

    if-eq p1, p2, :cond_91

    .line 562
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    const/4 p2, 0x2

    .line 563
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    :cond_91
    const/16 p1, 0x20

    .line 569
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableSignalStrengthReports()Z

    move-result p2

    if-eqz p2, :cond_9b

    const/16 p1, 0x21

    .line 573
    :cond_9b
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableFullNetworkStateReports()Z

    move-result p2

    if-eqz p2, :cond_a3

    or-int/lit8 p1, p1, 0x2

    .line 577
    :cond_a3
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableDataCallDormancyChangedReports()Z

    move-result p2

    if-eqz p2, :cond_ab

    or-int/lit8 p1, p1, 0x4

    .line 581
    :cond_ab
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableLinkCapacityEstimateReports()Z

    move-result p2

    if-eqz p2, :cond_b3

    or-int/lit8 p1, p1, 0x8

    .line 585
    :cond_b3
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnablePhysicalChannelConfigReports()Z

    move-result p2

    if-eqz p2, :cond_bb

    or-int/lit8 p1, p1, 0x10

    .line 589
    :cond_bb
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableBarringInfoReports()Z

    move-result p2

    if-eqz p2, :cond_c3

    or-int/lit8 p1, p1, 0x40

    :cond_c3
    and-int/lit8 v1, p1, 0x10

    .line 595
    iget v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    and-int/lit8 v4, v4, 0x10

    if-eq v1, v4, :cond_d8

    .line 597
    iget-object v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_d0

    goto :goto_d1

    :cond_d0
    move v3, v2

    .line 598
    :goto_d1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 597
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 601
    :cond_d8
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->setUnsolResponseFilter(IZ)V

    if-eqz p2, :cond_e7

    if-nez v0, :cond_e7

    .line 607
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getBarringInfo(Landroid/os/Message;)V

    :cond_e7
    return-void

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_44
        :pswitch_39
        :pswitch_2e
        :pswitch_26
        :pswitch_d
        :pswitch_1e
        :pswitch_16
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private blacklist sendDeviceState(IZ)V
    .registers 5

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 651
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendDeviceState(IZLandroid/os/Message;)V

    return-void
.end method

.method private blacklist setCellInfoMinInterval(I)V
    .registers 2

    .line 684
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoMinInterval(I)V

    return-void
.end method

.method private blacklist setLinkCapacityReportingCriteria()V
    .registers 5

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    sget-object v2, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 678
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x6

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    :cond_30
    return-void
.end method

.method private blacklist setUnsolResponseFilter(IZ)V
    .registers 4

    if-nez p2, :cond_6

    .line 661
    iget p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    if-eq p1, p2, :cond_2f

    .line 662
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "old filter: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", new filter: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 663
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p2, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setUnsolResponseFilter(ILandroid/os/Message;)V

    .line 664
    iput p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    :cond_2f
    return-void
.end method

.method private blacklist shouldEnableBarringInfoReports()Z
    .registers 1

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnableDataCallDormancyChangedReports()Z
    .registers 1

    .line 381
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableNrTrackingIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnableFullNetworkStateReports()Z
    .registers 1

    .line 373
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableNrTrackingIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnableLinkCapacityEstimateReports()Z
    .registers 1

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnableNrTrackingIndications()Z
    .registers 4

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nr_nsa_tracking_screen_off_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result p0

    return p0

    :cond_1e
    return v1

    .line 442
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2d

    return v1

    .line 448
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnablePhysicalChannelConfigReports()Z
    .registers 1

    .line 397
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableNrTrackingIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnableSignalStrengthReports()Z
    .registers 2

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAlwaysSignalStrengthReportingEnabled:Z

    if-eqz v0, :cond_f

    iget-boolean p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    if-eqz p0, :cond_f

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


# virtual methods
.method public blacklist computeCellInfoMinInterval()I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 338
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    const/16 v1, 0x7d0

    if-eqz v0, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    if-nez v2, :cond_b

    return v1

    :cond_b
    if-eqz v0, :cond_12

    .line 341
    iget-boolean p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-eqz p0, :cond_12

    return v1

    :cond_12
    const/16 p0, 0x2710

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 808
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 810
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsTetheringOn="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsScreenOn="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsCharging="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsPowerSaveOn="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsLowDataExpected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAutomotiveProjectionActive="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUnsolicitedResponseFilter="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsWifiConnected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAlwaysSignalStrengthReportingEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAlwaysSignalStrengthReportingEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRadioOn="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Local logs:"

    .line 821
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 823
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 824
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 825
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 826
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 473
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_52

    .line 496
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message arrives. msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 482
    :pswitch_34
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->onUpdateDeviceState(IZ)V

    goto :goto_51

    .line 479
    :pswitch_38
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->onUpdateDeviceState(IZ)V

    goto :goto_51

    .line 493
    :pswitch_3c
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_41

    move v1, v2

    :cond_41
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->onUpdateDeviceState(IZ)V

    goto :goto_51

    .line 490
    :pswitch_45
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4a

    move v1, v2

    :cond_4a
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->onUpdateDeviceState(IZ)V

    goto :goto_51

    .line 476
    :pswitch_4e
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->onReset()V

    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_4e
        :pswitch_3c
        :pswitch_45
        :pswitch_38
        :pswitch_34
    .end packed-switch
.end method

.method public blacklist registerForPhysicalChannelConfigNotifChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 777
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 778
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist setAlwaysReportSignalStrength(Z)V
    .registers 3

    const/16 v0, 0x8

    .line 460
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 461
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 462
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist shouldEnableHighPowerConsumptionIndications()Z
    .registers 2

    .line 425
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    if-eqz v0, :cond_12

    :cond_c
    iget-boolean p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public blacklist unregisterForPhysicalChannelConfigNotifChanged(Landroid/os/Handler;)V
    .registers 2

    .line 786
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
