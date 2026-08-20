.class public Lcom/android/server/smartclip/BleSpenManager;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# static fields
.field public static final BLE_SPEN_ADDR_FILE_NAME:Ljava/lang/String; = "blespen_addr"

.field public static final BLE_SPEN_BASE_DIR:Ljava/lang/String; = "/efs/spen"

.field public static final BLE_SPEN_CMF_FILE_NAME:Ljava/lang/String; = "blespen_cmf"

.field public static final BLE_SPEN_LOG_DIR_NAME:Ljava/lang/String; = "/log/spen"

.field public static final BLE_SPEN_LOG_FILE_NAME:Ljava/lang/String; = "Spen_dumpState.log"

.field public static final PKG_NAME_AIR_COMNAND:Ljava/lang/String; = "com.samsung.android.service.aircommand"

.field public static final SETTING_KEY_AIR_ACTION:Ljava/lang/String; = "spen_air_action"

.field public static final SVC_NAME_BLIND_CHARGE:Ljava/lang/String; = "com.samsung.android.service.aircommand.remotespen.RemoteSpenBlindChargeService"

.field public static final SVC_NAME_REMOTE_SPEN:Ljava/lang/String; = "com.samsung.android.service.aircommand.remotespen.RemoteSpenService"

.field public static final TAG:Ljava/lang/String; = "BleSpenManager"


# instance fields
.field public mBundledRemoteSpenSupport:Z

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mUnbundledRemoteSpenSupport:Z


# direct methods
.method public static bridge synthetic -$$Nest$monAirActionSettingChanged(Lcom/android/server/smartclip/BleSpenManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->onAirActionSettingChanged()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 2380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2358
    iput-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mBundledRemoteSpenSupport:Z

    .line 2359
    iput-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mUnbundledRemoteSpenSupport:Z

    .line 2381
    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    .line 2382
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mBundledRemoteSpenSupport:Z

    .line 2383
    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/smartclip/SpenGarageSpecManager;->isUnbundledRemoteSpenSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mUnbundledRemoteSpenSupport:Z

    .line 2384
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mHandler:Landroid/os/Handler;

    .line 2385
    iget-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    const-string v0, "SemInputDeviceManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 2386
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->registerAirActionSettingObserver()V

    :cond_3c
    return-void
.end method


# virtual methods
.method public declared-synchronized disableCharging()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "0"

    .line 2490
    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/BleSpenManager;->writeBleSpenCommand(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2491
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBleSpenAddress()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 2392
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2393
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string v1, "getBleSpenAddress : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_19

    const/4 v0, 0x0

    .line 2394
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_addr"

    .line 2396
    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBleSpenCmfCode()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 2408
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2409
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string v1, "getBleSpenCmfCode : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_19

    const/4 v0, 0x0

    .line 2410
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_cmf"

    .line 2412
    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAirActionSettingEnabled()Z
    .registers 4

    .line 2565
    iget-object p0, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "spen_air_action"

    const/4 v1, 0x1

    const/4 v2, -0x2

    .line 2566
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public declared-synchronized isSupportBleSpen()Z
    .registers 2

    monitor-enter p0

    .line 2425
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mBundledRemoteSpenSupport:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mUnbundledRemoteSpenSupport:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final makeFilePublic(Ljava/io/File;)V
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 2478
    invoke-virtual {p1, p0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2479
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveBleSpenLogFile : failed to set readable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    :cond_10
    invoke-virtual {p1, p0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2482
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveBleSpenLogFile : failed to set writable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :cond_1e
    invoke-virtual {p1, p0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 2485
    sget-object p0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "saveBleSpenLogFile : failed to set executable"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method public final onAirActionSettingChanged()V
    .registers 5

    .line 2585
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    move-result v0

    .line 2586
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAirActionSettingChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 2589
    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_2e

    .line 2591
    :cond_29
    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final readStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 p0, 0x0

    .line 2600
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_10} :catch_3c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_1f

    .line 2601
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_14} :catch_3c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_1c

    .line 2602
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_17} :catch_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_54

    :catch_18
    move-exception v1

    goto :goto_22

    :catch_1a
    move-exception v0

    goto :goto_3e

    :catch_1c
    move-exception v1

    move-object p1, p0

    goto :goto_22

    :catch_1f
    move-exception v1

    move-object p1, p0

    move-object v0, p1

    .line 2606
    :goto_22
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBleSpenAddress : e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    :try_start_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_54

    goto :goto_54

    :catch_3c
    move-exception v0

    move-object p1, p0

    .line 2604
    :goto_3e
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBleSpenAddress : file not exist. e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    :catch_54
    :goto_54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2614
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "readStringFromFile : empty file"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_63
    move-object p0, p1

    :goto_64
    return-object p0
.end method

.method public final registerAirActionSettingObserver()V
    .registers 5

    .line 2571
    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "spen_air_action"

    .line 2573
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/smartclip/BleSpenManager$1;

    iget-object v3, p0, Lcom/android/server/smartclip/BleSpenManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/smartclip/BleSpenManager$1;-><init>(Lcom/android/server/smartclip/BleSpenManager;Landroid/os/Handler;)V

    const/4 p0, 0x0

    const/4 v3, -0x1

    .line 2572
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public declared-synchronized saveBleSpenLogFile([B)V
    .registers 6

    monitor-enter p0

    if-eqz p1, :cond_b1

    .line 2452
    :try_start_3
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveBleSpenLogFile : length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/log/spen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2459
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_47

    .line 2460
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_47

    const-string/jumbo v2, "saveBleSpenLogFile : failed to make dirs"

    .line 2461
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    :cond_47
    invoke-virtual {p0, v1}, Lcom/android/server/smartclip/BleSpenManager;->makeFilePublic(Ljava/io/File;)V

    .line 2466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Spen_dumpState.log"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2467
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_bb

    .line 2468
    :try_start_65
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_93

    .line 2469
    :try_start_6a
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2470
    invoke-virtual {p0, v2}, Lcom/android/server/smartclip/BleSpenManager;->makeFilePublic(Ljava/io/File;)V

    .line 2471
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveBleSpenLogFile : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_6a .. :try_end_85} :catchall_89

    .line 2472
    :try_start_85
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_93

    goto :goto_af

    :catchall_89
    move-exception p1

    .line 2468
    :try_start_8a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v0

    :try_start_8f
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_92
    throw p1
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_93

    :catchall_93
    move-exception p1

    .line 2473
    :try_start_94
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveBleSpenLogFile fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_94 .. :try_end_af} :catchall_bb

    .line 2475
    :goto_af
    monitor-exit p0

    return-void

    .line 2454
    :cond_b1
    :try_start_b1
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "saveBleSpenLogFile : no buffer"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_b1 .. :try_end_b9} :catchall_bb

    .line 2455
    monitor-exit p0

    return-void

    :catchall_bb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBleSpenAddress(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 2400
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2401
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setBleSpenAddress : BLE Spen is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    .line 2402
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_addr"

    .line 2404
    invoke-virtual {p0, v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    .line 2405
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBleSpenCmfCode(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 2416
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2417
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setBleSpenCmfCode : BLE Spen is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    .line 2418
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_cmf"

    .line 2420
    invoke-virtual {p0, v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    .line 2421
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSpenPdctLowSensitivityEnable()V
    .registers 5

    monitor-enter p0

    .line 2444
    :try_start_1
    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPdctLowSensitivityEnable(I)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_a
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_21

    :catchall_8
    move-exception v0

    goto :goto_23

    :catch_a
    move-exception v0

    .line 2446
    :try_start_b
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSemInputDeviceManager.setSpenPdctLowSensitivityEnable: Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_8

    .line 2448
    :goto_21
    monitor-exit p0

    return-void

    :goto_23
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startBlindChargeService(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    monitor-enter p0

    .line 2535
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2536
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startBlindChargeService : BLE Spen is not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_5d

    .line 2537
    monitor-exit p0

    return-void

    .line 2540
    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2541
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startBlindChargeService : BLE Spen is disabled on knox container enabled mode"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_5d

    .line 2542
    monitor-exit p0

    return-void

    .line 2546
    :cond_21
    :try_start_21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.service.aircommand"

    const-string v2, "com.samsung.android.service.aircommand.remotespen.RemoteSpenBlindChargeService"

    .line 2547
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_32

    .line 2549
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2551
    :cond_32
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_5b

    .line 2553
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startBlindChargeService : failed to launch the service"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_42} :catch_43
    .catchall {:try_start_21 .. :try_end_42} :catchall_5d

    goto :goto_5b

    :catch_43
    move-exception p1

    .line 2556
    :try_start_44
    sget-object p2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBlindChargeService : Failed to start service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_5d

    .line 2558
    :cond_5b
    :goto_5b
    monitor-exit p0

    return-void

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startRemoteSpenService(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    monitor-enter p0

    .line 2494
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2495
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startRemoteSpenService : BLE Spen is not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_5d

    .line 2496
    monitor-exit p0

    return-void

    .line 2499
    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2500
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startRemoteSpenService : BLE Spen is disabled on knox container enabled mode"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_5d

    .line 2501
    monitor-exit p0

    return-void

    .line 2511
    :cond_21
    :try_start_21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.service.aircommand"

    const-string v2, "com.samsung.android.service.aircommand.remotespen.RemoteSpenService"

    .line 2512
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_32

    .line 2514
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2516
    :cond_32
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_5b

    .line 2518
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startRemoteSpenService : failed to launch the service"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_42} :catch_43
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_42} :catch_43
    .catchall {:try_start_21 .. :try_end_42} :catchall_5d

    goto :goto_5b

    :catch_43
    move-exception p1

    .line 2530
    :try_start_44
    sget-object p2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRemoteSpenService : Failed to start BLE SPen service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_5d

    .line 2532
    :cond_5b
    :goto_5b
    monitor-exit p0

    return-void

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeBleSpenCommand(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 2429
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2430
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "writeBleSpenCommand : BLE Spen is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_34

    .line 2431
    monitor-exit p0

    return-void

    .line 2435
    :cond_11
    :try_start_11
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2436
    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenBleChargeMode(I)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b
    .catchall {:try_start_11 .. :try_end_1a} :catchall_34

    goto :goto_32

    :catch_1b
    move-exception p1

    .line 2438
    :try_start_1c
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSemInputDeviceManager.setSpenBleChargeMode: Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_34

    .line 2440
    :goto_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    const/4 p0, 0x0

    .line 2627
    :try_start_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_28

    .line 2630
    sget-object p2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeStringToFile : Parent dir is null! filePathName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2634
    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 2635
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeStringToFile : No directoy, make directoy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2639
    :cond_4c
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_50} :catch_11c
    .catchall {:try_start_5 .. :try_end_50} :catchall_11a

    const-string/jumbo v2, "writeStringToFile : failed setreadable:"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_75

    .line 2640
    :try_start_57
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_75

    .line 2641
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    :cond_75
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v1
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_79} :catch_11c
    .catchall {:try_start_57 .. :try_end_79} :catchall_11a

    const-string/jumbo v5, "writeStringToFile : failed setexecutable:"

    if-nez v1, :cond_9c

    .line 2645
    :try_start_7e
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 2646
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :cond_9c
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_ab} :catch_11c
    .catchall {:try_start_7e .. :try_end_ab} :catchall_11a

    .line 2651
    :try_start_ab
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2654
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2655
    invoke-virtual {p0, v4, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-nez p1, :cond_d1

    .line 2656
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    :cond_d1
    invoke-virtual {p0, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    if-nez p1, :cond_ef

    .line 2659
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    :cond_ef
    invoke-virtual {p0, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_110

    .line 2662
    sget-object p1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeStringToFile : failed setWritable:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_110} :catch_117
    .catchall {:try_start_ab .. :try_end_110} :catchall_114

    .line 2669
    :cond_110
    :try_start_110
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_139

    goto :goto_139

    :catchall_114
    move-exception p1

    move-object p0, v0

    goto :goto_13a

    :catch_117
    move-exception p1

    move-object p0, v0

    goto :goto_11d

    :catchall_11a
    move-exception p1

    goto :goto_13a

    :catch_11c
    move-exception p1

    .line 2665
    :goto_11d
    :try_start_11d
    sget-object p2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeStringToFile : e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_134
    .catchall {:try_start_11d .. :try_end_134} :catchall_11a

    if-eqz p0, :cond_139

    .line 2669
    :try_start_136
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_139

    :catch_139
    :cond_139
    :goto_139
    return-void

    :goto_13a
    if-eqz p0, :cond_13f

    :try_start_13c
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_13f} :catch_13f

    .line 2673
    :catch_13f
    :cond_13f
    throw p1
.end method
