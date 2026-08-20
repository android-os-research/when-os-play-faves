.class public Lcom/samsung/android/server/battery/DeviceBatteryInfoService;
.super Ljava/lang/Object;
.source "DeviceBatteryInfoService.java"

# interfaces
.implements Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;


# static fields
.field public static final PHONE_ADDRESS:Ljava/lang/String; = "00:00:00:00:00:00"

.field public static final SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

.field public static final TAG:Ljava/lang/String; = "DeviceBatteryInfoService"


# instance fields
.field public mBatteryInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mBatteryInfosLock:Ljava/lang/Object;

.field public mBluetoothDeviceBatteryManager:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

.field public mContext:Landroid/content/Context;

.field public mDeviceNameObserver:Landroid/database/ContentObserver;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mIsSpenSupport:Ljava/lang/Boolean;

.field public mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

.field public mRegisteredPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRequirePermissions:[Ljava/lang/String;

.field public mSpenBatteryManager:Lcom/samsung/android/server/battery/SpenBatteryManager;

.field public mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;


# direct methods
.method public static synthetic $r8$lambda$HnycSb1G3R0RKnNnEdiX1qYxwMc(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->lambda$dump$2(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UeUF7aDQ97kW4JKUwNvbFJM1BDk(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->lambda$systemServicesReady$0(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cXj0pu6JMLf1t__LEg1amvQOc0g(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->lambda$getDeviceBatteryInfos$1(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSpenSupport(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mIsSpenSupport:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpenBatteryManager(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Lcom/samsung/android/server/battery/SpenBatteryManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mSpenBatteryManager:Lcom/samsung/android/server/battery/SpenBatteryManager;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBluetoothDeviceBatteryManager:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mSpenBatteryManager:Lcom/samsung/android/server/battery/SpenBatteryManager;

    .line 75
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mIsSpenSupport:Ljava/lang/Boolean;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    const-string v2, "com.samsung.android.permission.BATTERY_INFO"

    .line 76
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRequirePermissions:[Ljava/lang/String;

    .line 79
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    .line 81
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mDeviceNameObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic lambda$dump$2(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .registers 5

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    [ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelLeft()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelRight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelCradle()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getDeviceBatteryInfos$1(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .registers 2

    .line 220
    invoke-static {p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->printBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    return-void
.end method

.method public static synthetic lambda$systemServicesReady$0(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    const-string p0, "DeviceBatteryInfoService"

    const-string v0, "Exception occurred in Battery Manager thread"

    .line 123
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static printBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .registers 3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / BatteryLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / Status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceBatteryInfoService"

    .line 285
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .registers 5

    if-nez p1, :cond_a

    const-string p0, "DeviceBatteryInfoService"

    const-string p1, "addBatteryInfo : address is null"

    .line 347
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_19

    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_ADDED"

    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    return-void

    :catchall_19
    move-exception p0

    .line 352
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public addPhoneBatteryInfo()V
    .registers 6

    const-string v0, "DeviceBatteryInfoService"

    const-string v1, "addPhoneBatteryInfo"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "level"

    const/4 v3, -0x1

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "status"

    .line 95
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 97
    new-instance v3, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-direct {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>()V

    const-string v4, "00:00:00:00:00:00"

    .line 98
    invoke-virtual {v3, v4}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setAddress(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 100
    invoke-virtual {v3, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceType(I)V

    .line 101
    invoke-virtual {v3, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 102
    invoke-virtual {v3, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    .line 104
    iput-object v3, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4b} :catch_57

    .line 107
    :try_start_4b
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v0

    goto :goto_6e

    :catchall_54
    move-exception p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_54

    :try_start_56
    throw p0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_57} :catch_57

    :catch_57
    move-exception p0

    const-string v0, "DeviceBatteryInfoService"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception occurred : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    return-void
.end method

.method public containsBatteryInfo(Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_b

    const-string p0, "DeviceBatteryInfoService"

    const-string p1, "containsBatteryInfo : address is null"

    .line 314
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 318
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_e
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    .line 320
    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 363
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Companion Device Baterry Infos: "

    .line 364
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1f

    .line 367
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 375
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_24

    .line 376
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_24
    move-exception p0

    .line 375
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->requirePermissions()V

    if-nez p1, :cond_e

    const-string p0, "DeviceBatteryInfoService"

    const-string p1, "getDeviceBatteryInfo : address is null"

    .line 234
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_e
    const-string v0, "DeviceBatteryInfoService"

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetBatteryInfo() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_2c
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 241
    monitor-exit v0

    return-object p0

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_36

    throw p0
.end method

.method public getDeviceBatteryInfos()[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->requirePermissions()V

    const-string v0, "DeviceBatteryInfoService"

    const-string/jumbo v1, "semGetBatteryInfos()"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    if-eqz v1, :cond_2f

    .line 219
    new-instance v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 222
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 223
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    new-array p0, p0, [Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    .line 225
    :goto_30
    monitor-exit v0

    return-object p0

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_32

    throw p0
.end method

.method public registerDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->requirePermissions()V

    const-string v0, "DeviceBatteryInfoService"

    if-nez p1, :cond_e

    const-string/jumbo p0, "registerDeviceBatteryInfoChanged : packageName is null"

    .line 250
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v1, 0x0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRegisteredPackage size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_33

    move v1, v3

    .line 258
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerDeviceBatteryInfoChanged() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    if-eqz v1, :cond_5c

    .line 263
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/battery/WatchBatteryManager;->notifyPackageRegistered(Z)V

    :cond_5c
    return-void
.end method

.method public registerDeviceNameContentObserver()V
    .registers 4

    .line 194
    new-instance v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$2;

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$2;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mDeviceNameObserver:Landroid/database/ContentObserver;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    .line 208
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mDeviceNameObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 207
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public removeBatteryInfo(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_b

    const-string p0, "DeviceBatteryInfoService"

    const-string/jumbo p1, "removeBatteryInfo : address is null"

    .line 327
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 332
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 334
    iget-object v3, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 335
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 338
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2e

    if-eqz v0, :cond_2d

    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_REMOVED"

    .line 340
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    :cond_2d
    return-void

    :catchall_2e
    move-exception p0

    .line 338
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public requirePermissions()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    const-string v2, "Permission Require"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.BATTERY_INFO"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .registers 10

    const-string v0, "DeviceBatteryInfoService"

    .line 291
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    :try_start_14
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.samsung.battery.EXTRA_BATTERY_INFO"

    .line 295
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v4, 0x1000000

    .line 296
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 297
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    iget-object v4, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRequirePermissions:[Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcast : action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->printBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_54} :catch_55

    goto :goto_8

    :catch_55
    move-exception v2

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_6b
    return-void
.end method

.method public systemServicesReady(Landroid/content/Context;)V
    .registers 6

    .line 116
    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    const-string p1, "DeviceBatteryInfoService"

    const-string/jumbo v0, "systemServicesReady()"

    .line 118
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "sembatteryservice-handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 122
    new-instance v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda1;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1, v0}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 131
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_46

    const-string v0, "This device does support S pen."

    .line 132
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mIsSpenSupport:Ljava/lang/Boolean;

    .line 136
    :cond_46
    new-instance p1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBluetoothDeviceBatteryManager:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 137
    new-instance p1, Lcom/samsung/android/server/battery/WatchBatteryManager;

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/server/battery/WatchBatteryManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 139
    iget-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mIsSpenSupport:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 140
    new-instance p1, Lcom/samsung/android/server/battery/SpenBatteryManager;

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/server/battery/SpenBatteryManager;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mSpenBatteryManager:Lcom/samsung/android/server/battery/SpenBatteryManager;

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->systemServicesReady()V

    .line 144
    :cond_72
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 187
    iget-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBluetoothDeviceBatteryManager:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->systemServicesReady()V

    .line 188
    iget-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->systemServicesReady()V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->registerDeviceNameContentObserver()V

    return-void
.end method

.method public unRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->requirePermissions()V

    const-string v0, "DeviceBatteryInfoService"

    if-nez p1, :cond_e

    const-string/jumbo p0, "unRegisterDeviceBatteryInfoChanged : packageName is null"

    .line 271
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 274
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterDeviceBatteryInfoChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 276
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 278
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRegisteredPackage size :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_58

    .line 280
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->notifyPackageRegistered(Z)V

    :cond_58
    return-void
.end method
