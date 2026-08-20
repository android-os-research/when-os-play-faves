.class public Lcom/android/server/enterprise/hdm/HdmService;
.super Lcom/samsung/android/knox/hdm/IHdmManager$Stub;
.source "HdmService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final HDM_DRK_KEY_DIR:Ljava/lang/String; = "/data/misc/tz_hdm/"

.field public static final HDM_DRK_KEY_FILENAME:Ljava/lang/String; = "key.dat"

.field public static final HDM_DRK_KEY_FILENAME_BKP:Ljava/lang/String; = "key.dat.bkp"

.field public static final HDM_DRK_SERVICE_NAME:Ljava/lang/String; = "HDM"

.field public static final HDM_ERROR:I = -0x1

.field public static final HDM_GET_DEVICE_STATUS_RETRY_COUNT:I = 0x1

.field public static final HDM_JWS_MAX_LEN:I = 0x2000

.field public static final HDM_NWD_INFO_ERROR:I = 0x0

.field public static final HDM_REQUEST_ID_MAX_LEN:I = 0x5f

.field public static final HDM_SERVICE_NAME_MAX_LEN:I = 0x28

.field public static final HDM_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String;

.field public static final mCidPath:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field public static final mEmmcSerialPath:Ljava/lang/String; = "/sys/block/mmcblk0/device/unique_number"

.field public static final mUfsSerialPath:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mHashImei:[B

.field public mImei0:Ljava/lang/String;

.field public mMacAddress:Ljava/lang/String;

.field public mSerialNumber:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDM - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/enterprise/hdm/HdmService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/knox/hdm/IHdmManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 85
    iput-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 86
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    const-string p1, ""

    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    .line 89
    iput-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    .line 90
    sget-object p0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string p1, "HdmService.java instantiated"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native hdm_apply_policy([B[B[B[B[BZ)[B
.end method

.method public static native hdm_delete_keys()I
.end method

.method public static native hdm_get_id([B[BZ)[B
.end method

.method public static native hdm_get_key()I
.end method

.method public static native hdm_get_policy(Z[B[B)[B
.end method

.method public static native hdm_kg_cmd(I)I
.end method

.method public static native hdm_load()I
.end method

.method public static native hdm_set_key([B)I
.end method

.method public static native hdm_unload()I
.end method


# virtual methods
.method public final checkFile(Ljava/lang/String;)Z
    .registers 2

    .line 197
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public closeQuietly(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 664
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 668
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method

.method public final deleteHdmKey()Z
    .registers 1

    .line 234
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_delete_keys()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final enforceHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_HDM"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_HDM"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final generateHdmKey()[B
    .registers 6

    .line 207
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v1, "Generate HDM key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/hdm/HdmService;->isDeviceRootKeyValid(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Z

    move-result p0

    const/4 v4, 0x0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    const-string v0, "HDM"

    .line 213
    invoke-virtual {v1, v0, p0, v4}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object p0

    goto :goto_27

    :cond_21
    const-string p0, "generateHdmKey(): DRK is not valid"

    .line 217
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v4

    .line 220
    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_31

    .line 222
    array-length v0, p0

    if-nez v0, :cond_30

    goto :goto_31

    :cond_30
    return-object p0

    :cond_31
    :goto_31
    return-object v4
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 259
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 262
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public declared-synchronized getHdmId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 427
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v1, "getHdmId() on HdmService.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/16 p1, 0x5f

    .line 431
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1c

    const-string/jumbo p1, "parameter check failed"

    .line 432
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_100

    .line 433
    monitor-exit p0

    return-object v1

    .line 437
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setImeis()V

    .line 438
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setMacAddress()V

    .line 440
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2f

    .line 441
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    goto :goto_3d

    .line 443
    :cond_2f
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3c

    .line 444
    iget-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    goto :goto_3d

    :cond_3c
    move-object p1, v1

    :goto_3d
    if-eqz p1, :cond_f9

    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_47

    goto/16 :goto_f9

    .line 452
    :cond_47
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_load()I

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo p1, "hdm_load failure"

    .line 453
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_1c .. :try_end_53} :catchall_100

    .line 454
    monitor-exit p0

    return-object v1

    :cond_55
    :try_start_55
    const-string v2, "checking whether key is saved"

    .line 457
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_get_key()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_64

    move v2, v4

    goto :goto_65

    :cond_64
    move v2, v3

    :goto_65
    if-nez v2, :cond_85

    const-string/jumbo v5, "no key, generate"

    .line 461
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->generateHdmKey()[B

    move-result-object v5

    if-eqz v5, :cond_7f

    .line 465
    invoke-static {v5}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_set_key([B)I

    move-result v6

    if-eqz v6, :cond_8c

    const-string v6, "Failed to write DRK"

    .line 468
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    :cond_7f
    const-string v6, "generateHdmKey returned null"

    .line 471
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    :cond_85
    const-string v3, "found key, no need to generate"

    .line 475
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    move v3, v4

    :cond_8c
    :goto_8c
    if-nez v2, :cond_a3

    if-nez v5, :cond_a3

    const-string/jumbo p1, "wrappedKey is null, delete HDM key for a new try"

    .line 480
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    move-result p1

    if-nez p1, :cond_a1

    const-string p1, "deleteHdmKey failure"

    .line 483
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    move-object p1, v1

    goto :goto_c3

    :cond_a3
    const-string v2, "HDM TLC call!"

    .line 487
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 489
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 490
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 489
    invoke-static {p1, p2, v3}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_get_id([B[BZ)[B

    move-result-object p1

    .line 491
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    :goto_c3
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_unload()I

    move-result p2

    if-eqz p2, :cond_cf

    const-string/jumbo p2, "hdm_unload failure"

    .line 495
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    if-nez v3, :cond_d4

    .line 499
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->releaseDrk()V

    :cond_d4
    if-nez p1, :cond_e7

    const-string/jumbo p2, "hdm_get_id Fail"

    .line 503
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    move-result p2

    if-nez p2, :cond_e7

    const-string p2, "deleteHdmKey failure"

    .line 506
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e7
    if-eqz p1, :cond_f7

    .line 510
    array-length p2, p1

    if-le p2, v4, :cond_f7

    .line 511
    new-instance p2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_f5
    .catchall {:try_start_55 .. :try_end_f5} :catchall_100

    monitor-exit p0

    return-object p2

    .line 514
    :cond_f7
    monitor-exit p0

    return-object v1

    :cond_f9
    :goto_f9
    :try_start_f9
    const-string p1, "getHdmId Fail to get device ID"

    .line 448
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_100

    .line 449
    monitor-exit p0

    return-object v1

    :catchall_100
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 533
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v1, "getHdmPolicy() on HdmService.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/16 p1, 0x5f

    .line 537
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1c

    const-string/jumbo p1, "parameter check failed for requestId"

    .line 538
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_a7

    .line 539
    monitor-exit p0

    return-object v1

    :cond_1c
    const/16 p1, 0x28

    .line 542
    :try_start_1e
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2c

    const-string/jumbo p1, "parameter check failed for serviceName"

    .line 543
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_a7

    .line 544
    monitor-exit p0

    return-object v1

    .line 547
    :cond_2c
    :try_start_2c
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_load()I

    move-result p1

    if-eqz p1, :cond_3a

    const-string/jumbo p1, "hdm_load failure"

    .line 548
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_a7

    .line 549
    monitor-exit p0

    return-object v1

    :cond_3a
    :try_start_3a
    const-string p1, "checking whether key is saved"

    .line 552
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_get_key()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_49

    move p1, v3

    goto :goto_4a

    :cond_49
    move p1, v2

    :goto_4a
    if-nez p1, :cond_69

    const-string/jumbo p1, "no key, generate"

    .line 555
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->generateHdmKey()[B

    move-result-object p1

    if-eqz p1, :cond_64

    .line 558
    invoke-static {p1}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_set_key([B)I

    move-result p1

    if-eqz p1, :cond_6a

    const-string p1, "Failed to write DRK"

    .line 560
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 563
    :cond_64
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_unload()I
    :try_end_67
    .catchall {:try_start_3a .. :try_end_67} :catchall_a7

    .line 564
    monitor-exit p0

    return-object v1

    :cond_69
    move v2, v3

    .line 570
    :cond_6a
    :goto_6a
    :try_start_6a
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 571
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 570
    invoke-static {v2, p1, p2}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_get_policy(Z[B[B)[B

    move-result-object p1

    .line 573
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_unload()I

    move-result p2

    if-eqz p2, :cond_8a

    const-string/jumbo p2, "hdm_unload failure"

    .line 574
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    if-nez v2, :cond_8f

    .line 578
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->releaseDrk()V

    :cond_8f
    if-eqz p1, :cond_9f

    .line 581
    array-length p2, p1

    if-le p2, v3, :cond_9f

    .line 582
    new-instance p2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_9d
    .catchall {:try_start_6a .. :try_end_9d} :catchall_a7

    monitor-exit p0

    return-object p2

    :cond_9f
    :try_start_9f
    const-string/jumbo p1, "response == null or len <= 1"

    .line 584
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_a7

    .line 587
    monitor-exit p0

    return-object v1

    :catchall_a7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isDeviceRootKeyValid(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Z
    .registers 3

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    .line 98
    sget-object p0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string p1, "DRK failed in isAliveDeviceRootKeyService()"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    const/4 p0, 0x1

    .line 102
    invoke-virtual {p1, p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 103
    sget-object p0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string p1, "DRK failed in isExistDeviceRootKey()"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1e
    return p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final releaseDrk()V
    .registers 4

    .line 243
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 245
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->releaseServiceKeySession()I

    move-result p0

    .line 246
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_2a

    .line 249
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failure releasing drk service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public final setHashImeiAndSerial()V
    .registers 5

    .line 129
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/hdm/HdmService;->isDeviceRootKeyValid(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v3, 0xc

    .line 135
    invoke-virtual {v0, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    move-result-object v0

    goto :goto_21

    .line 137
    :cond_18
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setHashImeiAndSerial(): DRK is not valid"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 140
    :goto_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_52

    .line 143
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->getImei()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    .line 144
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->getSerial()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    .line 145
    new-instance p0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 146
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSerialNumber is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void
.end method

.method public declared-synchronized setHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 324
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setHdmPolicy() on HdmService.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/16 p1, 0x2000

    .line 328
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1d

    const-string/jumbo p1, "parameter check failed"

    .line 329
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_ee

    .line 330
    monitor-exit p0

    return-object v1

    .line 334
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setNwdInfo()Z

    move-result p1

    if-nez p1, :cond_29

    const-string/jumbo p1, "setNwdInfo failed"

    .line 335
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_29
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_load()I

    move-result p1

    if-eqz p1, :cond_37

    const-string/jumbo p1, "hdm_load failure"

    .line 340
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_ee

    .line 341
    monitor-exit p0

    return-object v1

    :cond_37
    :try_start_37
    const-string p1, "checking whether key is saved"

    .line 344
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_get_key()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_46

    move p1, v3

    goto :goto_47

    :cond_46
    move p1, v2

    :goto_47
    if-nez p1, :cond_67

    const-string/jumbo v4, "no key, generate"

    .line 348
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->generateHdmKey()[B

    move-result-object v4

    if-eqz v4, :cond_61

    .line 352
    invoke-static {v4}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_set_key([B)I

    move-result v5

    if-eqz v5, :cond_6e

    const-string v5, "Failed to write DRK"

    .line 355
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_61
    const-string v5, "generateHdmKey returned null"

    .line 358
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_67
    const-string v2, "found key, no need to generate"

    .line 362
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    move v2, v3

    :cond_6e
    :goto_6e
    if-nez p1, :cond_85

    if-nez v4, :cond_85

    const-string/jumbo p1, "wrappedKey is null, delete HDM key for a new try"

    .line 367
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    move-result p1

    if-nez p1, :cond_83

    const-string p1, "deleteHdmKey failure"

    .line 370
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    move-object p1, v1

    goto :goto_b8

    :cond_85
    const-string p1, "HDM TLC call!"

    .line 374
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 377
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    .line 378
    iget-object v4, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    if-nez v4, :cond_98

    const-string v4, ""

    :cond_98
    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    move-object v6, v4

    .line 379
    iget-object v4, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    if-nez v4, :cond_a3

    const-string v4, ""

    :cond_a3
    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    move-object v8, v4

    .line 381
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    iget-object v7, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    move v9, v2

    invoke-static/range {v4 .. v9}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_apply_policy([B[B[B[B[BZ)[B

    move-result-object p1

    .line 384
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 387
    :goto_b8
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_unload()I

    move-result p2

    if-eqz p2, :cond_c4

    const-string/jumbo p2, "hdm_unload failure"

    .line 388
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    if-nez v2, :cond_c9

    .line 392
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->releaseDrk()V

    :cond_c9
    if-nez p1, :cond_dc

    const-string/jumbo p2, "hdm_apply_policy Fail"

    .line 396
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    move-result p2

    if-nez p2, :cond_dc

    const-string p2, "deleteHdmKey failure"

    .line 399
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    if-eqz p1, :cond_ec

    .line 403
    array-length p2, p1

    if-le p2, v3, :cond_ec

    .line 404
    new-instance p2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_ea
    .catchall {:try_start_37 .. :try_end_ea} :catchall_ee

    monitor-exit p0

    return-object p2

    .line 407
    :cond_ec
    monitor-exit p0

    return-object v1

    :catchall_ee
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHdmTaCmd(Lcom/samsung/android/knox/ContextInfo;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 602
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setHdmTaCmd() on HdmService.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 605
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_load()I

    move-result p1

    if-eqz p1, :cond_1b

    const-string/jumbo p1, "hdm_load failure"

    .line 606
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_39

    const/4 p1, -0x1

    .line 607
    monitor-exit p0

    return p1

    :cond_1b
    :try_start_1b
    const-string p1, "HDM TLC call!"

    .line 610
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 612
    invoke-static {p2}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_kg_cmd(I)I

    move-result p1

    .line 613
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 615
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_unload()I

    move-result p2

    if-eqz p2, :cond_37

    const-string/jumbo p2, "hdm_unload failure"

    .line 616
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_39

    .line 619
    :cond_37
    monitor-exit p0

    return p1

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setImeis()V
    .registers 6

    .line 114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 115
    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_24

    .line 118
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-lez v3, :cond_24

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 119
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    .line 122
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final setMacAddress()V
    .registers 5

    .line 154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 155
    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sem_wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v2, :cond_18

    .line 159
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    goto :goto_20

    .line 161
    :cond_18
    sget-object p0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setMacAddress is failed on SemWifiManager"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final setNwdInfo()Z
    .registers 4

    .line 171
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setImeis()V

    .line 172
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setHashImeiAndSerial()V

    .line 174
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 178
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 179
    invoke-virtual {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setMacAddress()V

    .line 181
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    return v1

    .line 186
    :cond_22
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    if-nez p0, :cond_27

    return v1

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final validateParameter(Ljava/lang/String;I)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, p2, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
