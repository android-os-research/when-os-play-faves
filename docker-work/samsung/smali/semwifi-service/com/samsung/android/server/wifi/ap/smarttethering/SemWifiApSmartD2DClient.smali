.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;
.super Ljava/lang/Object;
.source "SemWifiApSmartD2DClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_LOGIN_ACCOUNTS_COMPLETE:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field private static final SMARTTETHERING_D2D_FAMILYID:Ljava/lang/String; = "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

.field public static final START_ADVERTISE:I = 0x1

.field public static final STOP_ADVERTISE:I = 0x2

.field private static TAG:Ljava/lang/String; = "SemWifiApSmartD2DClient"

.field private static mWifiApSmartD2DClientIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private isAdvRunning:Z

.field private isJDMDevice:Z

.field private isStartAdvPending:Z

.field private mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private mContext:Landroid/content/Context;

.field private mLocalLog:Landroid/util/LocalLog;

.field private mNeedAdvertisement:Z

.field private mWifiApSmartD2DClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;

.field private mWifiApSmartDeviceNameObserver:Landroid/database/ContentObserver;

.field private mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;


# direct methods
.method static bridge synthetic -$$Nest$fgetisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisStartAdvPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isStartAdvPending:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisStartAdvPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isStartAdvPending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartD2DClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartD2DClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartD2DClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartD2DClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartD2DClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkThread:Landroid/os/HandlerThread;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isJDMDevice:Z

    .line 230
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 401
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartDeviceNameObserver:Landroid/database/ContentObserver;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 53
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    .line 55
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartD2DClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;

    .line 56
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartD2DClientIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "device_name"

    .line 58
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartDeviceNameObserver:Landroid/database/ContentObserver;

    const/4 p3, 0x0

    .line 57
    invoke-virtual {p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private getClientD2DManufactureData()[B
    .registers 17

    move-object/from16 v0, p0

    const/16 v1, 0x18

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, v1, :cond_f

    .line 252
    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x1

    aput-byte v1, v2, v3

    const/16 v4, 0x12

    aput-byte v4, v2, v1

    .line 255
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getmappedClientMACbytes()[B

    move-result-object v4

    const/4 v6, 0x2

    :goto_1d
    const/16 v7, 0x8

    if-ge v6, v7, :cond_2a

    add-int/lit8 v7, v6, -0x2

    .line 257
    aget-byte v7, v4, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_2a
    const/16 v4, 0xa

    const/4 v6, 0x4

    aput-byte v6, v2, v4

    const/16 v4, 0xb

    .line 261
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    .line 262
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 263
    array-length v10, v9

    const/16 v11, 0x22

    if-le v10, v11, :cond_89

    .line 266
    sget-object v12, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v13, "client name is more than 34 characters"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":\tclient name is more than 34 characters"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    move v13, v3

    move v14, v13

    :goto_67
    if-ge v13, v12, :cond_89

    add-int/lit8 v15, v13, 0x1

    .line 271
    invoke-virtual {v8, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v14, v5

    if-le v14, v11, :cond_85

    .line 274
    invoke-virtual {v8, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 275
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 276
    array-length v10, v9

    goto :goto_89

    :cond_85
    move v13, v15

    const/16 v7, 0x8

    goto :goto_67

    .line 281
    :cond_89
    :goto_89
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isTablet()Z

    move-result v5

    const/16 v7, 0x9

    if-eqz v5, :cond_97

    aget-byte v5, v2, v7

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v2, v7

    :cond_97
    move v5, v3

    :goto_98
    if-ge v5, v7, :cond_a6

    if-ge v5, v10, :cond_a6

    add-int v8, v4, v5

    add-int/2addr v8, v6

    .line 285
    aget-byte v11, v9, v5

    aput-byte v11, v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_98

    .line 287
    :cond_a6
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_d6

    const/16 v0, 0x8

    aput-byte v1, v2, v0

    .line 290
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object v0

    .line 291
    aget-byte v1, v0, v3

    aput-byte v1, v2, v4

    const/16 v1, 0xc

    const/4 v3, 0x2

    .line 292
    aget-byte v3, v0, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xd

    .line 293
    aget-byte v3, v0, v6

    aput-byte v3, v2, v1

    const/16 v1, 0xe

    const/4 v3, 0x6

    .line 294
    aget-byte v0, v0, v3

    aput-byte v0, v2, v1

    :cond_d6
    return-object v2
.end method

.method private getClientD2DScanResponseData()[B
    .registers 13

    const/16 v0, 0x1b

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_d

    .line 302
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x1

    aput-byte v3, v1, v2

    const/16 v4, 0x12

    aput-byte v4, v1, v3

    .line 306
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    .line 307
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 308
    array-length v4, v3

    const/16 v5, 0x22

    if-le v4, v5, :cond_4b

    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v7, v2

    move v8, v7

    :goto_2b
    if-ge v7, v6, :cond_4b

    add-int/lit8 v9, v7, 0x1

    .line 314
    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v8, v10

    if-le v8, v5, :cond_49

    .line 317
    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 318
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 319
    array-length v4, v3

    goto :goto_4b

    :cond_49
    move v7, v9

    goto :goto_2b

    :cond_4b
    :goto_4b
    const/16 p0, 0x9

    const/4 v2, 0x2

    :goto_4e
    if-ge v2, v0, :cond_5c

    if-ge p0, v4, :cond_5c

    add-int/lit8 v5, p0, 0x1

    .line 326
    aget-byte p0, v3, p0

    aput-byte p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    move p0, v5

    goto :goto_4e

    :cond_5c
    return-object v1
.end method


# virtual methods
.method checkPreConditions()I
    .registers 4

    .line 136
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_29

    .line 138
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v1, "mBluetoothAdapter==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\t mBluetoothAdapter==null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x6

    return p0

    .line 142
    :cond_29
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isJDMDevice:Z

    if-eqz v0, :cond_58

    .line 143
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    .line 144
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v1, "JDM MAC address is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\t JDM MAC address is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x5

    return p0

    .line 149
    :cond_58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    const-string v1, "com.sec.mhs.smarttethering"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 151
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v0, "isPackageExists smarttethering == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 154
    :cond_6b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v0

    if-eqz v0, :cond_7c

    .line 155
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v0, "Samsung account is loggedin, so can\'t start advertizsement"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    .line 158
    :cond_7c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a5

    .line 159
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v2, "Preconditions StandAloneBleMode is ON"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\t  Preconditions StandAloneBleMode is ON"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v1

    .line 163
    :cond_a5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 164
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 165
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v0, "Do not setWifiApSmartClient in EmergencyMode"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 168
    :cond_bc
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_cc

    const/4 v0, 0x1

    goto :goto_cd

    :cond_cc
    move v0, v1

    :goto_cd
    if-eqz v0, :cond_e7

    .line 170
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAirplaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    return p0

    .line 173
    :cond_e7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v0

    if-nez v0, :cond_110

    .line 174
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v1, "not isNearByAutohotspotEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\t not isNearByAutohotspotEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x7

    return p0

    :cond_110
    return v1
.end method

.method public handleBootCompleted()V
    .registers 4

    .line 70
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v1, "handleBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\t handleBootCompleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiApSmartD2DClientBleHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 73
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    .line 75
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mNeedAdvertisement:Z

    if-eqz v0, :cond_47

    .line 76
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v1, "need to advertise client packets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    :cond_47
    const-string p0, "vendor.wifiap.autohotspot.btadapterenable.smartd2dclient"

    const-string v0, "0"

    .line 79
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method isAdvertising()Z
    .registers 1

    .line 228
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    return p0
.end method

.method public sendEmptyMessage(I)V
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    if-eqz v0, :cond_a

    const-wide/16 v1, 0x1388

    .line 218
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_28

    :cond_a
    if-nez v0, :cond_19

    const/4 v1, 0x1

    if-ne p1, v1, :cond_19

    .line 220
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v0, "START_ADVERTISE with null bleworker"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mNeedAdvertisement:Z

    goto :goto_28

    :cond_19
    if-nez v0, :cond_28

    const/4 v0, 0x2

    if-ne p1, v0, :cond_28

    .line 223
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v0, "STOP_ADVERTISE with null bleworker"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 224
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mNeedAdvertisement:Z

    :cond_28
    :goto_28
    return-void
.end method

.method public startWifiApSmartD2DclientAdvertize()V
    .registers 9

    .line 331
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 332
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v0, "This devices\'s binary is a factory binary"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 335
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->checkPreConditions()I

    move-result v0

    .line 336
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startWifiApSmartD2DClientAdvertize : status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isAdvRunning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    if-nez v1, :cond_158

    if-eqz v0, :cond_42

    goto/16 :goto_158

    .line 339
    :cond_42
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_69

    .line 340
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 341
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setIsAutoHotspotBleSet()V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->semSetStandAloneBleMode(Z)Z

    .line 344
    :cond_69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_73

    .line 345
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 346
    :cond_73
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v0, :cond_81

    .line 347
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isStartAdvPending:Z

    .line 348
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v0, "mBluetoothLeAdvertiser == null, waiting for isStartAdvPending"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 353
    :cond_81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x64

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    if-nez v0, :cond_90

    const/16 v0, 0xa0

    goto :goto_91

    :cond_90
    move v0, v2

    .line 356
    :goto_91
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->getClientD2DManufactureData()[B

    move-result-object v3

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->getClientD2DScanResponseData()[B

    move-result-object v4

    .line 358
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->startBleScanning()V

    .line 359
    new-instance v5, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 360
    invoke-virtual {v5, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v2

    .line 361
    invoke-virtual {v2, v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->semSetCustomAdvertiseInterval(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 363
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 364
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v0

    .line 367
    new-instance v1, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    const/16 v2, 0x75

    .line 368
    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v1

    .line 370
    new-instance v5, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 371
    invoke-virtual {v5, v2, v4}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v2

    .line 373
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":\tstartWifiApSmartClientMHSAdvertize"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 374
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Started startWifiApSmartD2DClientAdvertize with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\tgetClientD2DScanResponseData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 376
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClientD2DScanResponseData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v3, v0, v1, v2, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    :cond_158
    :goto_158
    return-void
.end method

.method stopWifiApSmartD2DclientAdvertize()V
    .registers 5

    .line 381
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 383
    :cond_5
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v1, "stopWifiApSmartD2DClientAdvertize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :try_start_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    if-eqz v1, :cond_23

    .line 386
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_23

    :catch_18
    move-exception v0

    .line 388
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v2, "Exception occurred"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_23
    :goto_23
    const/4 v0, 0x0

    .line 391
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvRunning:Z

    const-string v0, "vendor.wifiap.autohotspot.btadapterenable.smartd2dclient"

    const-string v1, "0"

    .line 392
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 393
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_51

    .line 395
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    const-string v1, "disabling BT which was enabled through autohotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 399
    :cond_51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":stopWifiApSmartD2DClientAdvertize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public wifiApBleD2DClientRole(Z)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 209
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    goto :goto_d

    :cond_7
    if-nez p1, :cond_d

    const/4 p1, 0x2

    .line 211
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    :cond_d
    :goto_d
    return v0
.end method
