.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;
.super Ljava/lang/Object;
.source "SemWifiApSmartMHS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_NEARBY_SCANNING:Ljava/lang/String; = "com.samsung.android.nearbyscanning"

.field public static final START_ADVERTISE:I = 0xa

.field public static final STOP_ADVERTISE:I = 0xb

.field public static final STOP_MHS_ADVERTISE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SemWifiApSmartMHS"

.field private static final mWifiApSmartMHSIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private DBG:Z

.field private autohotspot_mhs_check_message:Lcom/android/internal/util/WakeupMessage;

.field private autohotspot_mhs_check_message_TAG:Ljava/lang/String;

.field private autohotspot_mhs_check_scheduled:Z

.field private isAdvStoppedbecauseOfSIMRemoval:Z

.field private isAdveretizing:Z

.field private isJDMDevice:Z

.field private islowBattery:Z

.field private mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mBatteryPct:B

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private mContext:Landroid/content/Context;

.field private mLimitTimesOfStopMhsAdv:I

.field private mLocalLog:Landroid/util/LocalLog;

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApSmartMHSBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;

.field private mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;


# direct methods
.method static bridge synthetic -$$Nest$fgetautohotspot_mhs_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/android/internal/util/WakeupMessage;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message:Lcom/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_scheduled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAdvStoppedbecauseOfSIMRemoval(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdvStoppedbecauseOfSIMRemoval:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretizing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetislowBattery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->islowBattery:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryPct(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)B
    .registers 1

    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLimitTimesOfStopMhsAdv(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLimitTimesOfStopMhsAdv:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_scheduled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAdvStoppedbecauseOfSIMRemoval(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdvStoppedbecauseOfSIMRemoval:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretizing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputislowBattery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->islowBattery:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBatteryPct(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;B)V
    .registers 2

    iput-byte p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLimitTimesOfStopMhsAdv(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLimitTimesOfStopMhsAdv:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAdvertizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->startAdvertizing()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAdvertizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->stopAdvertizing()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartMHSIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.ssid_changed"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.settings.DEVICE_NAME_CHANGED"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.nearbyscanning"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V
    .registers 8

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->DBG:Z

    const/16 v0, 0x4b

    .line 83
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 84
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->islowBattery:Z

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message:Lcom/android/internal/util/WakeupMessage;

    const-string v3, "SemWifiApSmartMHS autohotspot mhs message Timeout"

    .line 86
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message_TAG:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_scheduled:Z

    .line 89
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 91
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 93
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdvStoppedbecauseOfSIMRemoval:Z

    .line 96
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isJDMDevice:Z

    .line 155
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 606
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 99
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 101
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartMHSBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;

    .line 102
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 103
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartMHSIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private acquireWakeLock()V
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SemWifiApSmartMHS"

    if-nez v0, :cond_19

    .line 412
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    .line 413
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 415
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "acquireWakeLock"

    .line 416
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2d
    return-void
.end method

.method private getMHSAdvManufactureData()[B
    .registers 14

    const/16 v0, 0x18

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_d

    .line 622
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x1

    aput-byte v3, v1, v2

    const/16 v4, 0x12

    aput-byte v4, v1, v3

    .line 627
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 628
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 630
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_ap_smart_tethering_settings_with_family"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 632
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    const/4 v8, 0x4

    if-eqz v7, :cond_4f

    .line 633
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object v4

    move v7, v2

    :goto_44
    if-ge v7, v8, :cond_4f

    add-int/lit8 v11, v7, 0x2

    .line 635
    aget-byte v12, v4, v7

    aput-byte v12, v1, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 638
    :cond_4f
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-eqz v4, :cond_6a

    if-ne v6, v3, :cond_6a

    .line 639
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object v4

    move v5, v2

    :goto_5e
    if-ge v5, v8, :cond_6a

    add-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v8

    .line 641
    aget-byte v7, v4, v5

    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    :cond_6a
    const/16 v4, 0xa

    const/4 v5, 0x2

    aput-byte v5, v1, v4

    .line 645
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getNetworkType()B

    move-result v4

    const/16 v6, 0xb

    const/4 v7, 0x3

    if-ne v4, v3, :cond_82

    aget-byte v4, v1, v6

    or-int/lit8 v4, v4, 0x40

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    goto :goto_95

    :cond_82
    if-ne v4, v5, :cond_8c

    aget-byte v4, v1, v6

    or-int/lit8 v4, v4, -0x40

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    goto :goto_95

    :cond_8c
    if-ne v4, v7, :cond_95

    aget-byte v4, v1, v6

    or-int/lit8 v4, v4, -0x40

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    .line 654
    :cond_95
    :goto_95
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getlegacyPassword()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a3

    aget-byte v4, v1, v6

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    .line 658
    :cond_a3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getlegacySSIDHidden()Z

    move-result v4

    if-eqz v4, :cond_b1

    aget-byte v4, v1, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    .line 662
    :cond_b1
    iget-byte v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    const/4 v9, 0x6

    const/16 v10, 0xf

    const/16 v11, 0x10

    if-lt v4, v9, :cond_c4

    if-gt v4, v10, :cond_c4

    aget-byte v0, v1, v6

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    goto :goto_11f

    :cond_c4
    if-lt v4, v11, :cond_d1

    const/16 v9, 0x1e

    if-gt v4, v9, :cond_d1

    aget-byte v0, v1, v6

    or-int/2addr v0, v11

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    goto :goto_11f

    :cond_d1
    const/16 v9, 0x1f

    if-lt v4, v9, :cond_e0

    const/16 v9, 0x2d

    if-gt v4, v9, :cond_e0

    aget-byte v4, v1, v6

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    goto :goto_11f

    :cond_e0
    const/16 v0, 0x2e

    if-lt v4, v0, :cond_f0

    const/16 v0, 0x3c

    if-gt v4, v0, :cond_f0

    aget-byte v0, v1, v6

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    goto :goto_11f

    :cond_f0
    const/16 v0, 0x3d

    if-lt v4, v0, :cond_100

    const/16 v0, 0x4b

    if-gt v4, v0, :cond_100

    aget-byte v0, v1, v6

    or-int/lit8 v0, v0, 0x28

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    goto :goto_11f

    :cond_100
    const/16 v0, 0x4c

    if-lt v4, v0, :cond_110

    const/16 v0, 0x5a

    if-gt v4, v0, :cond_110

    aget-byte v0, v1, v6

    or-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    goto :goto_11f

    :cond_110
    const/16 v0, 0x5b

    if-lt v4, v0, :cond_11f

    const/16 v0, 0x64

    if-gt v4, v0, :cond_11f

    aget-byte v0, v1, v6

    or-int/lit8 v0, v0, 0x38

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    .line 683
    :cond_11f
    :goto_11f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getClientMACbytes()[B

    move-result-object v0

    move v4, v2

    :goto_126
    if-ge v4, v7, :cond_134

    add-int/lit8 v6, v4, 0xb

    add-int/2addr v6, v3

    add-int/lit8 v9, v4, 0x3

    .line 685
    aget-byte v9, v0, v9

    aput-byte v9, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_126

    .line 689
    :cond_134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->Check_MHS_AES_Key()Z

    move-result v0

    aput-byte v0, v1, v10

    .line 690
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    aput-byte v3, v1, v11

    .line 691
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isDataSaverModeEnabled()Z

    move-result v0

    if-nez v0, :cond_14e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_155

    :cond_14e
    aget-byte v0, v1, v11

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v1, v11

    .line 694
    :cond_155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getWifi6ENetwork()Z

    move-result v0

    if-eqz v0, :cond_164

    aget-byte v0, v1, v11

    or-int/2addr v0, v8

    int-to-byte v0, v0

    aput-byte v0, v1, v11

    goto :goto_172

    .line 696
    :cond_164
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getWifi6Network()Z

    move-result v0

    if-eqz v0, :cond_172

    aget-byte v0, v1, v11

    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v1, v11

    .line 699
    :cond_172
    :goto_172
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiProfileShareAHSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "SemWifiApSmartMHS"

    if-eqz v0, :cond_18f

    const-string v0, "wifiProfileShare is supported"

    .line 700
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v0, v1, v11

    or-int/2addr v0, v11

    int-to-byte v0, v0

    aput-byte v0, v1, v11

    .line 703
    :cond_18f
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_1bc

    const-string v0, "Datausage is supported"

    .line 704
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isNeededToShowWifiApDatalimitReachedDialog()Z

    move-result v0

    if-eqz v0, :cond_1bc

    const-string v0, "Mobile Datalimit is reached"

    .line 706
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v0, v1, v11

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, v1, v11

    .line 710
    :cond_1bc
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHostNameFromSettingDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 711
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 712
    array-length v4, v0

    :goto_1c9
    if-ge v2, v4, :cond_1d7

    const/4 v5, 0x7

    if-ge v2, v5, :cond_1d7

    add-int/lit8 v5, v2, 0x11

    .line 714
    aget-byte v6, v0, v2

    aput-byte v6, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c9

    .line 716
    :cond_1d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBatteryPct:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advData:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartMHS:\t SmartMHS startAdvertizing mBatteryPct : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",advData:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method private getScanResponseData()[B
    .registers 9

    const/16 v0, 0x1b

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_d

    .line 724
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-byte v4, v1, v2

    const/16 v2, 0x12

    aput-byte v2, v1, v4

    .line 729
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHostNameFromSettingDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 730
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 731
    array-length v4, v2

    int-to-byte v4, v4

    const/4 v5, 0x7

    :goto_24
    if-ge v3, v0, :cond_33

    if-ge v5, v4, :cond_33

    add-int/lit8 v6, v3, 0x1

    .line 735
    aget-byte v7, v2, v5

    aput-byte v7, v1, v3

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    move v3, v6

    goto :goto_24

    .line 738
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respData:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWifiApSmartMHS"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartMHS:\tSmartMHS getScanResponseData respData:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method private isDataSaverModeEnabled()Z
    .registers 1

    .line 503
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private releaseWakeLock()V
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "SemWifiApSmartMHS"

    const-string v1, "releaseWakeLock"

    .line 422
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_16
    return-void
.end method

.method private simCheck()Z
    .registers 12

    .line 472
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->DBG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    const-string v0, "vendor.wifiap.simcheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 475
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 477
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const-string v3, "SemWifiApSmartMHS"

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-le v2, v1, :cond_8b

    .line 478
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 479
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    .line 480
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "simState1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",simState2:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",telephonyManager.getPhoneCount():"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SemWifiApSmartMHS:\tsimState1:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",telephonyManager.getPhoneCount()"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eq v2, v6, :cond_c0

    if-eq v2, v4, :cond_c0

    if-eq v7, v4, :cond_c0

    if-ne v7, v6, :cond_be

    goto :goto_c0

    .line 489
    :cond_8b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simState:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartMHS:\tsimState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eq v0, v6, :cond_c0

    if-ne v0, v4, :cond_be

    goto :goto_c0

    :cond_be
    move p0, v5

    goto :goto_c1

    :cond_c0
    :goto_c0
    move p0, v6

    :goto_c1
    if-ne p0, v6, :cond_c4

    goto :goto_c5

    :cond_c4
    move v1, v5

    :goto_c5
    return v1
.end method

.method private startAdvertizing()V
    .registers 8

    .line 743
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretizing:Z

    if-eqz v0, :cond_5

    return-void

    .line 745
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->checkPreConditions()I

    move-result v0

    const-string v1, "SemWifiApSmartMHS"

    const/4 v2, 0x0

    if-gez v0, :cond_44

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preconditions failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_smart_tethering_settings"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 749
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartMHS:\tSmartMHS startAdvertizing failed checkprecond: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 752
    :cond_44
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isRegsteredAutoHotspotServer()Z

    move-result v0

    if-nez v0, :cond_53

    return-void

    .line 754
    :cond_53
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 755
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 756
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setIsAutoHotspotBleSet()V

    .line 757
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->semSetStandAloneBleMode(Z)Z

    .line 760
    :cond_7c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v4, 0x64

    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0xa0

    goto :goto_8c

    :cond_8b
    move v0, v4

    .line 764
    :goto_8c
    new-instance v5, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 765
    invoke-virtual {v5, v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v4

    .line 766
    invoke-virtual {v4, v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->semSetCustomAdvertiseInterval(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    .line 767
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    .line 768
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    const/4 v3, 0x3

    .line 769
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v0

    .line 772
    new-instance v3, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 773
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->getMHSAdvManufactureData()[B

    move-result-object v4

    const/16 v5, 0x75

    invoke-virtual {v3, v5, v4}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v3

    .line 774
    invoke-virtual {v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v3

    .line 775
    new-instance v4, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 776
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->getScanResponseData()[B

    move-result-object v6

    .line 775
    invoke-virtual {v4, v5, v6}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v4

    .line 777
    invoke-virtual {v4, v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v2

    const-string v4, "Starting MHS BLE advertising"

    .line 778
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v5, "SemWifiApSmartMHS:\tStarting MHS BLE advertising "

    invoke-virtual {v4, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 780
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_ec

    .line 781
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 783
    :cond_ec
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v4, :cond_fd

    const-string v0, "mBluetoothLeAdvertiser is null"

    .line 784
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartMHS:\tmBluetoothLeAdvertiser is null "

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 788
    :cond_fd
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v4, v0, v3, v2, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    return-void
.end method

.method private stopAdvertizing()V
    .registers 6

    .line 792
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretizing:Z

    const-string v1, "SemWifiApSmartMHS"

    if-eqz v0, :cond_28

    const-string v0, "stopAdvertizing"

    .line 793
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :try_start_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_1e

    .line 796
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_14} :catch_15

    goto :goto_1e

    :catch_15
    move-exception v0

    const-string v2, "Exception occurred"

    .line 798
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    .line 801
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretizing:Z

    .line 802
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v2, "SemWifiApSmartMHS:\tstopped advertizing"

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_28
    const-string v0, "vendor.wifiap.autohotspot.btadapterenable.smartmhs"

    const-string v2, "0"

    .line 804
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 805
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_51

    const-string v0, "disabling BT which was enabled through autohotspot"

    .line 807
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_51
    return-void
.end method


# virtual methods
.method public canAutoHotspotBeEnabled()Z
    .registers 12

    .line 171
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isAutoHotspotSupported(Landroid/content/Context;)Z

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v1

    .line 173
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isTetheringRestricted(Landroid/content/Context;)Z

    move-result v2

    .line 174
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    .line 175
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSimEnabled(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 176
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    move-result v6

    xor-int/2addr v6, v5

    .line 177
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    move-result v7

    .line 178
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isNearByDeviceScanningEnabled(Landroid/content/Context;)Z

    move-result v8

    xor-int/2addr v8, v5

    .line 180
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can AutoHotspot switch be made Enabled - , isAutoHotspotSupported : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isAutoHotspotEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isTetheringRestricted : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isAirplaneModeOn : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isSimDisabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isNetworkDisconnected : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isSamsungAccountLoggedOut : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isNearByDeviceScanningDisabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SemWifiApSmartMHS"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    if-nez v0, :cond_86

    return v9

    :cond_86
    if-eqz v1, :cond_89

    return v9

    :cond_89
    if-eqz v2, :cond_8c

    return v9

    :cond_8c
    if-eqz v3, :cond_8f

    return v9

    :cond_8f
    if-eqz v4, :cond_92

    return v9

    :cond_92
    if-eqz v6, :cond_95

    return v9

    :cond_95
    if-eqz v7, :cond_98

    return v9

    .line 211
    :cond_98
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isCarrierTMO()Z

    move-result v0

    if-nez v0, :cond_a4

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isCarrierNEWCO()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 212
    :cond_a4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isDefaultPassphraseSet(Landroid/content/Context;)Z

    move-result p0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", isDefaultPassphraseSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_c1

    return v9

    :cond_c1
    if-eqz v8, :cond_c8

    const-string p0, "Need to enable NearBy Device Scanning."

    .line 219
    invoke-static {v10, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    const-string p0, "AutoHotspot can be Enabled."

    .line 222
    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public canFamilySharingBeEnabled()Z
    .registers 14

    .line 227
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isTetheringRestricted(Landroid/content/Context;)Z

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 229
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSimEnabled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 230
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 231
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    move-result v5

    .line 232
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isNearByDeviceScanningEnabled(Landroid/content/Context;)Z

    move-result v6

    xor-int/2addr v6, v3

    .line 233
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isGroupSharingAppDisabled(Landroid/content/Context;)Z

    move-result v7

    .line 234
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isFamilySharingServiceRegisteredOn(Landroid/content/Context;)Z

    move-result v8

    xor-int/2addr v8, v3

    .line 235
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    .line 236
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v10

    xor-int/2addr v10, v3

    .line 237
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result p0

    .line 238
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating Family Sharing Switch state - isTetheringRestricted : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isAirplaneModeOn : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSimDisabled : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isNetworkDisconnected : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSamsungAccountLoggedOut : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isNearByDeviceScanningDisabled : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isGroupSharingAppDisabled : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFamilySharingServiceNotRegistered : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFamilyGroupIdEmpty : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isAutoHotspotOff : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFamilySharingEnabled : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApSmartMHS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz v10, :cond_b6

    return v0

    :cond_b6
    if-eqz p0, :cond_b9

    return v0

    :cond_b9
    if-eqz v7, :cond_bc

    return v0

    :cond_bc
    if-eqz v8, :cond_bf

    return v0

    :cond_bf
    if-eqz v9, :cond_c2

    return v0

    :cond_c2
    return v3
.end method

.method checkPreConditions()I
    .registers 6

    .line 511
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "SemWifiApSmartMHS"

    if-nez v0, :cond_19

    const-string v0, "mBluetoothAdapter == null"

    .line 513
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartMHS:\t mBluetoothAdapter == null"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/16 p0, -0xa

    return p0

    .line 517
    :cond_19
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isJDMDevice:Z

    if-eqz v0, :cond_36

    .line 518
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_36

    const-string v0, "JDM MAC address is null"

    .line 519
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartMHS:\t JDM MAC address is null"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/16 p0, -0x9

    return p0

    .line 524
    :cond_36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    const-string v2, "sem_wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 525
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    const-string v3, "com.sec.mhs.smarttethering"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isPackageExists(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "wifi_ap_smart_tethering_settings"

    const/4 v4, 0x0

    if-nez v2, :cond_64

    const-string v0, "isPackageExists smarttethering null"

    .line 526
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "SemWifiApSmartMHS:\tisPackageExists smarttethering null"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 528
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, -0x1

    return p0

    .line 531
    :cond_64
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->simCheck()Z

    move-result v2

    if-nez v2, :cond_82

    const-string v0, "Simcard not present"

    .line 532
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "SemWifiApSmartMHS:\tSimcard not present"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 534
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    sget p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SIM_CARD_ERROR:I

    return p0

    .line 543
    :cond_82
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string v3, "no_config_tethering"

    .line 544
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_9c

    goto/16 :goto_19c

    .line 549
    :cond_9c
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDevicePolicyManager()Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isAllowToUseHotspot()Z

    move-result v2

    if-nez v2, :cond_b8

    const-string v0, "Do not setWifiApSmartMHS in Hotspot not allowed mode"

    .line 550
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartMHS:\tDo not setWifiApSmartMHS in Hotspot not allowed mode"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x6

    return p0

    .line 555
    :cond_b8
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    if-nez v0, :cond_e2

    .line 556
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDevicePolicyManager()Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isOpenWifiApAllowed(I)Z

    move-result v0

    if-nez v0, :cond_e2

    const-string v0, "Do not setWifiApSmartMHS  in Open N/W"

    .line 557
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartMHS:\tDo not setWifiApSmartMHS  in Open N/W"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x7

    return p0

    .line 562
    :cond_e2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v0

    if-nez v0, :cond_f9

    const-string v0, "not isNearByAutohotspotEnabled"

    .line 563
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartMHS:\t not isNearByAutohotspotEnabled"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/16 p0, -0xb

    return p0

    .line 570
    :cond_f9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v3, "isWifiTetheringEnabled"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_114

    const-string v0, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_MDM not allowed"

    .line 573
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartMHS:\t SEC_PRODUCT_FEATURE_KNOX_SUPPORT_MDM not allowed"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/16 p0, -0xc

    return p0

    .line 579
    :cond_114
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isDataSaverModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_129

    const-string v0, "DataSaverModeEnabled not allowed"

    .line 580
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartMHS:\t DataSaverModeEnabled not allowed"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/16 p0, -0xd

    return p0

    .line 584
    :cond_129
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_140

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    if-eqz v0, :cond_140

    const-string v0, "Preconditions BLE is ON"

    .line 585
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartMHS:\t  Preconditions BLE is ON"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v4

    .line 590
    :cond_140
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_150

    const/4 v0, 0x1

    goto :goto_151

    :cond_150
    move v0, v4

    :goto_151
    if-eqz v0, :cond_17f

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAirplaneMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartMHS:\tgetAirplaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x4

    return p0

    .line 597
    :cond_17f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_19b

    .line 598
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_19b

    const-string v0, "Do not setWifiApSmartMHS in EmergencyMode"

    .line 599
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartMHS:\tDo not setWifiApSmartMHS in EmergencyMode"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x5

    return p0

    :cond_19b
    return v4

    :cond_19c
    :goto_19c
    const-string v0, "Do not setWifiApSmartMHS in DISALLOW_CONFIG_TETHERING"

    .line 545
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartMHS:\tDo not setWifiApSmartMHS in DISALLOW_CONFIG_TETHERING"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x8

    return p0
.end method

.method public handleBootCompleted()V
    .registers 6

    const-string v0, "SemWifiApSmartMHS"

    const-string v1, "handleBootCompleted"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiApSmartMHSBleHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 146
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    const-string v1, "netpolicy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz v0, :cond_33

    .line 150
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 152
    :cond_33
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message_TAG:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method public hasLowBatteryMessages()Z
    .registers 1

    .line 468
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_scheduled:Z

    return p0
.end method

.method public isMHSAdvertizing()Z
    .registers 1

    .line 408
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretizing:Z

    return p0
.end method

.method public restartAdvBecauseOfDataLimitChanged()V
    .registers 7

    .line 832
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_smart_tethering_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 833
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretizing:Z

    if-eqz v0, :cond_49

    const-string v0, "SemWifiApSmartMHS"

    const-string v2, "restartAdvBecauseOfDataLimitChanged - DataUsage"

    .line 834
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v2, "SemWifiApSmartMHS:\t restartAdvBecauseOfDataLimitChanged - DataUsage"

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    if-eqz v0, :cond_2b

    const/16 v2, 0xb

    .line 837
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 839
    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    if-eqz v0, :cond_49

    const/16 v2, 0xa

    const-wide/16 v3, 0x3e8

    .line 840
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 841
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_scheduled:Z

    if-nez v0, :cond_49

    .line 842
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message:Lcom/android/internal/util/WakeupMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x9c40

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 843
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_scheduled:Z

    :cond_49
    return-void
.end method

.method public restartAdvBecauseOfUpstreamChanged()V
    .registers 7

    .line 814
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_smart_tethering_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 815
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretizing:Z

    if-eqz v0, :cond_49

    const-string v0, "SemWifiApSmartMHS"

    const-string v2, "restartAdvBecauseOfUpstreamChanged - DataUsage"

    .line 816
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    const-string v2, "SemWifiApSmartMHS:\t restartAdvBecauseOfUpstreamChanged - DataUsage"

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    if-eqz v0, :cond_2b

    const/16 v2, 0xb

    .line 819
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 821
    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    if-eqz v0, :cond_49

    const/16 v2, 0xa

    const-wide/16 v3, 0x3e8

    .line 822
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 823
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_scheduled:Z

    if-nez v0, :cond_49

    .line 824
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message:Lcom/android/internal/util/WakeupMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x9c40

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 825
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_scheduled:Z

    :cond_49
    return-void
.end method

.method sendEmptyMessage(I)V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    if-eqz v0, :cond_17

    const/16 v1, 0xa

    if-eq p1, v1, :cond_c

    .line 125
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    goto :goto_17

    :cond_c
    if-ne p1, v1, :cond_17

    .line 126
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretizing:Z

    if-nez p0, :cond_17

    const-wide/16 p0, 0xa

    .line 127
    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_17
    :goto_17
    return-void
.end method

.method public setWifiApSmartMHS(Z)Z
    .registers 6

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiApSmartMHS is ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApSmartMHS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_smart_tethering_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartMHS:\tSmartMHS WIFI_AP_SMART_TETHERING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "enable :"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-nez p1, :cond_59

    .line 135
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretizing:Z

    if-eqz p1, :cond_59

    .line 136
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    if-eqz p1, :cond_54

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_54
    const/16 p1, 0xb

    .line 138
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    :cond_59
    const/4 p0, 0x1

    return p0
.end method
