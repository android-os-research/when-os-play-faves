.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;
.super Ljava/lang/Object;
.source "SemWifiApAdvancedAutohotspotBleUtil.java"


# static fields
.field private static final ADV_HISTORY_DB_NAME:Ljava/lang/String; = "adv_autohotspot_client_history"

.field private static final MAX_HISTORY_SIZE:I = 0xa

.field private static final dbMHSMacString:Ljava/lang/String; = "adv_autohotspot_mhs_mac_history"


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private isAutoHotspotDiscoveryBleRunning:Z

.field private isAutoHotspotWakeupBleRunning:Z

.field private mAdvancedAutohotspotDiscoveryCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mAdvancedAutohotspotWakeupCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mAutoHotspotClientHis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutohotspotMhsMac:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private mContext:Landroid/content/Context;

.field private mHashBasedGuid:Ljava/lang/Long;

.field private mLastConnectedMHSMac:Ljava/lang/String;

.field private mLastConnectedWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mTempFailedAutohotspotMhsMac:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisAutoHotspotDiscoveryBleRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotDiscoveryBleRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAutoHotspotWakeupBleRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotWakeupBleRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;)V
    .registers 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "SemWifiApAdvancedAutohotspotBleUtil"

    .line 20
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    .line 21
    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1b

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result p2

    if-eqz p2, :cond_19

    goto :goto_1b

    :cond_19
    move p2, v0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p2, 0x1

    :goto_1c
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->DBG:Z

    .line 27
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    .line 28
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mTempFailedAutohotspotMhsMac:Ljava/util/ArrayList;

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutoHotspotClientHis:Ljava/util/ArrayList;

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotDiscoveryBleRunning:Z

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotWakeupBleRunning:Z

    .line 53
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAdvancedAutohotspotDiscoveryCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 302
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAdvancedAutohotspotWakeupCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "adv_autohotspot_mhs_mac_history"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6e

    const-string p2, ";"

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 45
    array-length p2, p1

    :goto_5a
    if-ge v0, p2, :cond_6e

    aget-object v1, p1, v0

    .line 46
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 47
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_6e
    return-void
.end method

.method private getclientAdvManufactureData()[B
    .registers 7

    const/16 p0, 0x18

    new-array v0, p0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, p0, :cond_d

    .line 76
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    const/4 p0, 0x1

    aput-byte p0, v0, v1

    const/16 v2, 0x12

    aput-byte v2, v0, p0

    .line 81
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3a

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object v2

    :goto_2e
    const/4 v3, 0x4

    if-ge v1, v3, :cond_3a

    add-int/lit8 v3, v1, 0x2

    .line 85
    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3a
    const/16 v1, 0xa

    aput-byte p0, v0, v1

    const/16 p0, 0xb

    .line 89
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->Check_MHS_AES_Key()Z

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method private getclientAdvWakeupManufactureData()[B
    .registers 14

    const/16 v0, 0x18

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_d

    .line 324
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x1

    aput-byte v0, v1, v2

    const/16 v3, 0x12

    aput-byte v3, v1, v0

    .line 329
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    const/4 v6, 0x4

    if-eqz v5, :cond_3b

    .line 331
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object v3

    move v4, v2

    :goto_30
    if-ge v4, v6, :cond_3b

    add-int/lit8 v5, v4, 0x2

    .line 333
    aget-byte v7, v3, v4

    aput-byte v7, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_3b
    const/4 v3, 0x5

    const/16 v4, 0xa

    aput-byte v3, v1, v4

    .line 338
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getClientMACbytes()[B

    move-result-object v3

    move v4, v2

    :goto_4d
    const/4 v5, 0x3

    if-ge v4, v5, :cond_5b

    add-int/lit8 v5, v4, 0xb

    add-int/lit8 v7, v4, 0x3

    .line 341
    aget-byte v7, v3, v7

    aput-byte v7, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_5b
    new-array v3, v5, [B

    .line 346
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mLastConnectedMHSMac:Ljava/lang/String;

    if-eqz p0, :cond_97

    const-string v4, ":"

    .line 347
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 348
    array-length v4, p0

    move v7, v2

    move v8, v7

    :goto_6a
    if-ge v7, v4, :cond_8b

    aget-object v9, p0, v7

    add-int/lit8 v10, v8, 0x1

    .line 349
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v11

    shl-int/2addr v11, v6

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_6a

    :cond_8b
    :goto_8b
    if-ge v2, v5, :cond_97

    add-int/lit8 p0, v2, 0xa

    add-int/2addr p0, v6

    .line 352
    aget-byte v0, v3, v2

    aput-byte v0, v1, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    :cond_97
    return-object v1
.end method

.method private hasPreviousAutohotspotGattConnetionHistory()Z
    .registers 4

    .line 431
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adv_autohotspot_client_history"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 432
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prev history :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-ne v0, p0, :cond_28

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method


# virtual methods
.method public clearAutohotspotMHSConnectionHistory()V
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "adv_autohotspot_mhs_mac_history"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public clearFailedMHSConnectionHistory()V
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mTempFailedAutohotspotMhsMac:Ljava/util/ArrayList;

    monitor-enter v0

    .line 251
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mTempFailedAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 252
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method getAutohotspotMHSConnectionHistory()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 165
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method getFailedMHSConnectionHistory()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mTempFailedAutohotspotMhsMac:Ljava/util/ArrayList;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mTempFailedAutohotspotMhsMac:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 233
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getLastConnectedAAHWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 1

    .line 299
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mLastConnectedWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public getLastConnectedMHSMac()Ljava/lang/String;
    .registers 1

    .line 295
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mLastConnectedMHSMac:Ljava/lang/String;

    return-object p0
.end method

.method getSmartMHSFromScanResults(Ljava/util/List;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;)",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;"
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->hasPreviousAutohotspotGattConnetionHistory()Z

    move-result v0

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->getFailedMHSConnectionHistory()Ljava/util/List;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-nez v0, :cond_31

    .line 260
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string p1, "No connection history"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 264
    :cond_31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 265
    iget v3, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_72

    .line 266
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res.mBattery:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",res.mWifiMac:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",res.mBLERssi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_72
    iget v3, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    const/16 v5, 0xf

    if-le v3, v5, :cond_35

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->hasPreviousAutohotspotGattConnetionHistory()Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 269
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 270
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_35

    iget v3, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    if-ne v3, v4, :cond_35

    if-nez v2, :cond_9d

    goto :goto_a3

    .line 276
    :cond_9d
    iget v3, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    iget v4, v2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    if-le v3, v4, :cond_35

    :goto_a3
    move-object v2, v0

    goto :goto_35

    :cond_a5
    return-object v2
.end method

.method public isAdvHotspotDiscoveryRunning()Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotDiscoveryBleRunning:Z

    return p0
.end method

.method public isAdvHotspotWakeupRunning()Z
    .registers 1

    .line 318
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotWakeupBleRunning:Z

    return p0
.end method

.method public removeMacFromAutohotspotMHSConnectionHistory(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_a

    .line 195
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string p1, "RemoveMacFromAutohotspotMHSConnectionHistory and mac is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    monitor-enter v0

    .line 199
    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 200
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->DBG:Z

    if-eqz v1, :cond_2f

    .line 201
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveMacFromAutohotspotMHSConnectionHistory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_2f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 209
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez p1, :cond_4b

    move-object p1, v2

    goto :goto_3b

    .line 213
    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3b

    .line 216
    :cond_60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "adv_autohotspot_mhs_mac_history"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    monitor-exit v0

    return-void

    .line 204
    :cond_6d
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->DBG:Z

    if-eqz v1, :cond_87

    .line 205
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found in AutohotspotMHSConnectionHistory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_87
    monitor-exit v0

    return-void

    :catchall_89
    move-exception p0

    .line 218
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_d .. :try_end_8b} :catchall_89

    throw p0
.end method

.method public setAutohotspotMHSConnectionHistory(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    monitor-enter v0

    .line 173
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 174
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_37

    .line 175
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maxlimit reached, removed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    const/4 p1, 0x0

    .line 181
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez p1, :cond_53

    move-object p1, v2

    goto :goto_43

    .line 185
    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    .line 188
    :cond_68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "adv_autohotspot_mhs_mac_history"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    monitor-exit v0

    return-void

    :catchall_75
    move-exception p0

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_6 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public setFailedMHSConnectionHistory(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mTempFailedAutohotspotMhsMac:Ljava/util/ArrayList;

    monitor-enter v0

    .line 241
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mTempFailedAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 242
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->DBG:Z

    if-eqz v1, :cond_28

    .line 243
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added to failed mac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mTempFailedAutohotspotMhsMac:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public setLastConnectedMHSMac(Ljava/lang/String;Landroid/net/wifi/WifiInfo;)V
    .registers 6

    .line 289
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedMHSMac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mLastConnectedMHSMac:Ljava/lang/String;

    .line 291
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mLastConnectedWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method public startAdvancedAutohotspotDiscovery()I
    .registers 8

    .line 94
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->checkPreConditions()I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 98
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotDiscoveryBleRunning:Z

    if-eqz v0, :cond_1d

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string v0, "already startAdvancedAutohotspotDiscovery"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x14

    return p0

    .line 102
    :cond_1d
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mHashBasedGuid:Ljava/lang/Long;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_43

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string v0, "mHashBasedGuid == -1"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x15

    return p0

    .line 107
    :cond_43
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_70

    .line 108
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    if-nez v0, :cond_70

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 109
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setIsAutoHotspotBleSet()V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->semSetStandAloneBleMode(Z)Z

    .line 112
    :cond_70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_7a

    .line 113
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 115
    :cond_7a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v0, :cond_88

    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string v0, "mBluetoothLeScanner == null, waiting for isStartAdvPending"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x16

    return p0

    .line 120
    :cond_88
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->getclientAdvManufactureData()[B

    move-result-object v0

    .line 122
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v3, 0x64

    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v2

    if-nez v2, :cond_9b

    const/16 v2, 0xa0

    goto :goto_9c

    :cond_9b
    move v2, v3

    .line 125
    :goto_9c
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ": Client startAdvancedAutohotspotDiscovery,mHashBasedGuid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mHashBasedGuid:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v4, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 127
    invoke-virtual {v4, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v3

    .line 128
    invoke-virtual {v3, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->semSetCustomAdvertiseInterval(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v1

    const/4 v3, 0x3

    .line 131
    invoke-virtual {v1, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v1

    .line 134
    new-instance v3, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    const/16 v4, 0x75

    .line 135
    invoke-virtual {v3, v4, v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    .line 137
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAdvancedAutohotspotDiscoveryCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v3, v1, v0, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    return v2
.end method

.method public startAdvancedAutohotspotWakeup()I
    .registers 8

    .line 359
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->checkPreConditions()I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 363
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotWakeupBleRunning:Z

    if-eqz v0, :cond_1d

    .line 364
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string v0, "already startAdvancedAutohotspotWakeup"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x14

    return p0

    .line 367
    :cond_1d
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_41

    .line 369
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string v0, "mHashBasedGuid == -1"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x15

    return p0

    .line 372
    :cond_41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mLastConnectedMHSMac:Ljava/lang/String;

    if-nez v1, :cond_4f

    .line 373
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string v0, "mLastConnectedMHSMac is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x17

    return p0

    .line 376
    :cond_4f
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    if-eqz v1, :cond_7c

    .line 377
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_7c

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 378
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setIsAutoHotspotBleSet()V

    .line 379
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->semSetStandAloneBleMode(Z)Z

    .line 381
    :cond_7c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_86

    .line 382
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 384
    :cond_86
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v1, :cond_94

    .line 385
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string v0, "mBluetoothLeScanner == null,  startAdvancedAutohotspotWakeup"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x16

    return p0

    .line 389
    :cond_94
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->getclientAdvWakeupManufactureData()[B

    move-result-object v1

    const/16 v3, 0x14

    .line 391
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_a6

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v4

    if-nez v4, :cond_a6

    const/16 v3, 0xa0

    .line 394
    :cond_a6
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ": Client startAdvancedAutohotspotWakeup,mHashBasedGuid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    const/16 v4, 0x64

    .line 396
    invoke-virtual {v0, v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    .line 397
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->semSetCustomAdvertiseInterval(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    .line 398
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 399
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    const/4 v3, 0x3

    .line 400
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v0

    .line 403
    new-instance v3, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    const/16 v4, 0x75

    .line 404
    invoke-virtual {v3, v4, v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v1

    .line 405
    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v1

    .line 406
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAdvancedAutohotspotWakeupCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v3, v0, v1, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    return v2
.end method

.method public stopAdvancedAutohotspotDiscovery()V
    .registers 5

    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotDiscoveryBleRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string v1, "stopAdvancedAutohotspotDiscovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotWakeupBleRunning:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "client_advanced_autohotspot_run"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_33

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAdvancedAutohotspotDiscoveryCallback:Landroid/bluetooth/le/AdvertiseCallback;

    if-eqz v2, :cond_33

    .line 152
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_27
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_27} :catch_28

    goto :goto_33

    :catch_28
    move-exception v0

    .line 155
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string v3, "Exception occurred"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 158
    :cond_33
    :goto_33
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotDiscoveryBleRunning:Z

    return-void
.end method

.method public stopAdvancedAutohotspotWakeup()V
    .registers 5

    .line 412
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotWakeupBleRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 414
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string v1, "stopAdvancedAutohotspotWakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotDiscoveryRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 417
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "client_advanced_autohotspot_run"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_35

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->mAdvancedAutohotspotWakeupCallback:Landroid/bluetooth/le/AdvertiseCallback;

    if-eqz v2, :cond_35

    .line 421
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_29
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_35

    :catch_2a
    move-exception v0

    .line 424
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->TAG:Ljava/lang/String;

    const-string v3, "Exception occurred"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 427
    :cond_35
    :goto_35
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAutoHotspotWakeupBleRunning:Z

    return-void
.end method
