.class public Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;
.super Ljava/lang/Object;
.source "SemWifiApTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;
    }
.end annotation


# static fields
.field private static final CHECK_TO_DEALY_FIRST_TIME:I = 0x64

.field private static final CHECK_TO_DEALY_TIME:I = 0xbb8

.field private static final DefaultMode:I = 0x0

.field private static final INTERFACE_NAME_OF_DUAL:Ljava/lang/String; = "ap_br_swlan0"

.field private static final INTERFACE_NAME_OF_WLAN:Ljava/lang/String; = "wlan0"

.field private static final KDI_SET_ANTENNA:I = 0xb

.field private static final MAX_PACKET_RECORDS:I = 0x1f4

.field private static final PrimaryMode:I = 0x1

.field private static final SET_CHANGE_PCIE_CORE:I = 0x3

.field private static final SET_WIFIAP_L1SS_CTRL:I = 0x0

.field private static final START_PACKET_LOG:I = 0x4

.field private static final START_TRAFFIC_CHECK:I = 0x1

.field private static final STOP_PACKET_LOG:I = 0x5

.field private static final STOP_TRAFFIC_CHECK:I = 0x2

.field private static final SUPPORTDUALSOFTAP_SPF:Z = false

.field private static final SecondaryMode:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemWifiApTrafficPoller"

.field private static final mAffinityBoosterThreshod:I = 0x12c0000

.field private static final mHotspotL1ssDisableThreshold:I = 0x3c0000

.field private static final sPktLogsMhs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isSupportAffinityBootster:Z

.field private isSupportL1ssControl:Z

.field private mApInterfaceName:Ljava/lang/String;

.field private mConnectivityPacketLogForDualHotspot:Landroid/util/LocalLog;

.field private mConnectivityPacketLogForHotspot:Landroid/util/LocalLog;

.field private mConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

.field private mContext:Landroid/content/Context;

.field private mCurrenAffinityMode:I

.field private mCurrentL1ssModeValue:Z

.field private mHotspotEnabled:Z

.field private mIsSupportWifiSharing:Z

.field private mLpm:Lcom/samsung/android/os/SemDvfsManager;

.field private mMaxRxBytes:J

.field private mMaxTxBytes:J

.field private mNeedBooster:Z

.field private mPacketTrackerForDualHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

.field private mPacketTrackerForHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

.field private mPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

.field private mRxBytesInterface1:J

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mTxBytesInterface1:J

.field private mUsedDual:Z

.field private mWifiApTrafficPollerIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiApTrafficPollerReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

.field private mWifiApTrafficPollerWorkThread:Landroid/os/HandlerThread;

.field private preRxBytesInterface1:J

.field private preTxBytesInterface1:J


# direct methods
.method static bridge synthetic -$$Nest$fgetisSupportAffinityBootster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->isSupportAffinityBootster:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityPacketLogForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForDualHotspot:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForHotspot:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrenAffinityMode(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mCurrenAffinityMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSupportWifiSharing(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mIsSupportWifiSharing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedBooster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mNeedBooster:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketTrackerForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForDualHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/wifi/SemWifiManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsedDual(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mUsedDual:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/util/LocalLog;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForHotspot:Landroid/util/LocalLog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/util/LocalLog;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrenAffinityMode(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mCurrenAffinityMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentL1ssModeValue(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mCurrentL1ssModeValue:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHotspotEnabled(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mHotspotEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedBooster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mNeedBooster:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPacketTrackerForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForDualHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSemWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/wifi/SemWifiManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsedDual(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mUsedDual:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreTxBytesInterface1(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preTxBytesInterface1:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreatePacketTracker(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->createPacketTracker(Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetPcieIrqAffinity(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->setPcieIrqAffinity(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsPktLogsMhs()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->sPktLogsMhs:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->sPktLogsMhs:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .registers 7

    const-string p2, "SemWifiApTrafficPoller"

    const-string v0, "0"

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 51
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preTxBytesInterface1:J

    .line 52
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preRxBytesInterface1:J

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 57
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    .line 69
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mCurrenAffinityMode:I

    .line 70
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mCurrentL1ssModeValue:Z

    .line 76
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mHotspotEnabled:Z

    .line 90
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    .line 91
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mNeedBooster:Z

    .line 101
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mContext:Landroid/content/Context;

    .line 102
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 103
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    :try_start_34
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_3d

    move v1, v3

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->isSupportAffinityBootster:Z

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_47

    move v2, v3

    :cond_47
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->isSupportL1ssControl:Z
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_49} :catch_4a

    goto :goto_4f

    :catch_4a
    const-string v0, "NumberFormatException occurs"

    .line 177
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportAffinityBootster : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->isSupportAffinityBootster:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSupportL1ssControl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->isSupportL1ssControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->isSupportL1ssControl:Z

    if-eqz p2, :cond_7d

    const/16 p2, 0x1a

    const-string v0, "MHS_L1SS"

    .line 182
    invoke-static {p1, v0, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    .line 184
    :cond_7d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_88

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_88
    return-void
.end method

.method private createPacketTracker(Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
    .registers 4

    .line 424
    :try_start_0
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;-><init>(Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception p0

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get ConnectivityPacketTracker object: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApTrafficPoller"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getWifiApInterfaceName()Ljava/lang/String;
    .registers 1

    .line 394
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getSoftApInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setPcieIrqAffinity(I)V
    .registers 3

    .line 387
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->isSupportAffinityBootster:Z

    if-eqz p0, :cond_25

    .line 388
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPcieIrqAffinity "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiApTrafficPoller"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotPcieIrqAffinity(I)V

    :cond_25
    return-void
.end method


# virtual methods
.method public determineMaximumTpHotspot()V
    .registers 9

    .line 330
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mHotspotEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 332
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 334
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mTxBytesInterface1:J

    .line 335
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mRxBytesInterface1:J

    .line 338
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mTxBytesInterface1:J

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preTxBytesInterface1:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mMaxTxBytes:J

    .line 339
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preRxBytesInterface1:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mMaxRxBytes:J

    .line 342
    :cond_29
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preTxBytesInterface1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_76

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mMaxTxBytes:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_76

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mMaxRxBytes:J

    cmp-long v0, v6, v2

    if-lez v0, :cond_76

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->isSupportL1ssControl:Z

    if-eqz v0, :cond_76

    add-long/2addr v4, v6

    const-wide/32 v2, 0x3c0000

    cmp-long v0, v4, v2

    const-string v2, "SemWifiApTrafficPoller"

    if-lez v0, :cond_61

    .line 344
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mCurrentL1ssModeValue:Z

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_76

    const-string v0, "Over mHotspotL1ssDisableThreshold3932160Mbps"

    .line 345
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 347
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mCurrentL1ssModeValue:Z

    goto :goto_76

    .line 350
    :cond_61
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mCurrentL1ssModeValue:Z

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_76

    const-string v0, "Less mHotspotL1ssDisableThreshold 3932160Mbps"

    .line 351
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/4 v0, 0x0

    .line 353
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mCurrentL1ssModeValue:Z

    .line 381
    :cond_76
    :goto_76
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mTxBytesInterface1:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preTxBytesInterface1:J

    .line 382
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mRxBytesInterface1:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preRxBytesInterface1:J

    .line 383
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public getPacketDumpLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 406
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForHotspot:Landroid/util/LocalLog;

    if-eqz v2, :cond_23

    const-string v2, "SemWifiApTrafficPoller connectivity packet log: swlan0"

    .line 407
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForHotspot:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v2, "SemWifiApTrafficPoller connectivity packet log: wlan0"

    .line 409
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mIsSupportWifiSharing:Z

    if-eqz v2, :cond_28

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

    if-eqz p0, :cond_28

    .line 411
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_28

    :cond_23
    const-string p0, "SemWifiApTrafficPollermConnectivityPacketLogForHotspot is null"

    .line 414
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_2c

    .line 417
    :cond_28
    :goto_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    throw p0
.end method

.method public handleBootCompleted()V
    .registers 6

    const-string v0, "SemWifiApTrafficPoller"

    const-string v1, "first on mWifiApTrafficPollerWorkThread start"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkThread:Landroid/os/HandlerThread;

    .line 306
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 307
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->getWifiApInterfaceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v1

    if-nez v1, :cond_43

    .line 310
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharingLite()Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_43

    :cond_41
    const/4 v1, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v1, 0x1

    :goto_44
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mIsSupportWifiSharing:Z

    .line 311
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    if-eqz v1, :cond_64

    .line 312
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->sPktLogsMhs:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Landroid/util/LocalLog;

    const/16 v4, 0x1f4

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mIsSupportWifiSharing:Z

    if-eqz v1, :cond_64

    .line 314
    new-instance v1, Landroid/util/LocalLog;

    invoke-direct {v1, v4}, Landroid/util/LocalLog;-><init>(I)V

    const-string v3, "wlan0"

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mApInterfaceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mIsSupportWifiSharing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mIsSupportWifiSharing:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPowerSavingTime(I)V
    .registers 3

    .line 324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dump funtion setPowerSavingTime = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApTrafficPoller"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
