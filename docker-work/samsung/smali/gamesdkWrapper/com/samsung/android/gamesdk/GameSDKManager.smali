.class public Lcom/samsung/android/gamesdk/GameSDKManager;
.super Ljava/lang/Object;
.source "GameSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/GameSDKManager$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_REFRESH_RATE:I = 0x3c

.field private static final GameSDK2_0:F = 2.0f

.field private static final GameSDK3_0:F = 3.0f

.field private static final GameSDK3_1:F = 3.1f

.field private static final GameSDK3_2:F = 3.2f

.field private static final GameSDK3_3:F = 3.3f

.field private static final GameSDK3_4:F = 3.4f

.field private static final GameSDK3_5:F = 3.5f

.field private static final INVALID_DOUBLE:D = -999.0

.field private static final INVALID_INT:I = -0x3e7

.field private static final TAG:Ljava/lang/String; = "GameSDKManager"


# instance fields
.field private final mEmptyIntArrary:[I

.field private mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

.field private mService:Lcom/samsung/android/gamesdk/IGameSDKService;

.field private mServiceVersion:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mServiceVersion:F

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mEmptyIntArrary:[I

    .line 78
    const-string v0, "gamesdk"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 79
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_22

    .line 80
    invoke-static {v0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gamesdk/IGameSDKService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/GameSDKManager;->updateServiceVersion()V

    .line 83
    :cond_22
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/gamesdk/GameSDKManager;)Lcom/samsung/android/gamesdk/GameSDKManager$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/GameSDKManager;

    .line 14
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    return-object v0
.end method

.method private getGpuUsage()D
    .registers 9

    .line 376
    const-wide v0, -0x3f70c80000000000L    # -999.0

    :try_start_5
    const-string v2, "/sys/kernel/gpu/gpu_busy"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    .line 377
    .local v2, "bytesStr":[B
    if-eqz v2, :cond_3c

    array-length v4, v2

    if-nez v4, :cond_18

    goto :goto_3c

    .line 380
    :cond_18
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 381
    .local v4, "strGpuUsage":Ljava/lang/String;
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 382
    .local v5, "index":I
    const-wide v6, 0x3f847ae140000000L    # 0.009999999776482582

    if-lez v5, :cond_36

    .line 383
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 385
    .local v0, "GpuUsage":D
    mul-double/2addr v0, v6

    .line 387
    return-wide v0

    .line 390
    .end local v0    # "GpuUsage":D
    .end local v3    # "result":Ljava/lang/String;
    :cond_36
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_3d

    .line 391
    .restart local v0    # "GpuUsage":D
    mul-double/2addr v0, v6

    .line 392
    return-wide v0

    .line 378
    .end local v0    # "GpuUsage":D
    .end local v4    # "strGpuUsage":Ljava/lang/String;
    .end local v5    # "index":I
    :cond_3c
    :goto_3c
    return-wide v0

    .line 394
    .end local v2    # "bytesStr":[B
    :catch_3d
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    .end local v2    # "e":Ljava/lang/Exception;
    return-wide v0
.end method

.method public static isAvailable()Z
    .registers 2

    .line 158
    const-string v0, "gamesdk"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 159
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_a

    .line 160
    const/4 v1, 0x0

    return v1

    .line 162
    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method private updateServiceVersion()V
    .registers 4

    .line 530
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const-string v1, "GameSDKManager"

    if-nez v0, :cond_c

    .line 531
    const-string v0, "gamesdk system service is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 535
    :cond_c
    :try_start_c
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mServiceVersion:F

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateServiceVersion() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mServiceVersion:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2e} :catch_2f

    .line 539
    goto :goto_33

    .line 537
    :catch_2f
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 540
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_33
    return-void
.end method


# virtual methods
.method public finalize(Ljava/lang/String;)V
    .registers 4
    .param p1, "packagename"    # Ljava/lang/String;

    .line 138
    const-string v0, "GameSDKManager"

    if-nez p1, :cond_a

    .line 139
    const-string v1, "packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 141
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    if-nez v1, :cond_14

    .line 142
    const-string v1, "gamesdk system service is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 146
    :cond_14
    :try_start_14
    invoke-interface {v1, p1}, Lcom/samsung/android/gamesdk/IGameSDKService;->finalGameSDK(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 149
    goto :goto_1c

    .line 147
    :catch_18
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public getClusterInfo()I
    .registers 6

    .line 408
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const-string v1, "GameSDKManager"

    const/16 v2, -0x3e7

    if-nez v0, :cond_e

    .line 409
    const-string v0, "gamesdk system service is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v2

    .line 412
    :cond_e
    iget v3, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mServiceVersion:F

    const/high16 v4, 0x40600000    # 3.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1c

    .line 413
    const-string v0, "getClusterInfo() API is not supported this GameSDK Version"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v2

    .line 417
    :cond_1c
    :try_start_1c
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getClusterInfo()I

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_21

    return v0

    .line 418
    :catch_21
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 421
    .end local v0    # "e":Landroid/os/RemoteException;
    return v2
.end method

.method public getCpuJTLevel()I
    .registers 4

    .line 310
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const/16 v1, -0x3e7

    if-nez v0, :cond_e

    .line 311
    const-string v0, "GameSDKManager"

    const-string v2, "gamesdk system service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return v1

    .line 315
    :cond_e
    :try_start_e
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getCpuJTLevel()I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return v0

    .line 316
    :catch_13
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getCurrentRefreshRate()I
    .registers 6

    .line 513
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const-string v1, "GameSDKManager"

    const/16 v2, 0x3c

    if-nez v0, :cond_e

    .line 514
    const-string v0, "gamesdk system service is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return v2

    .line 517
    :cond_e
    iget v3, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mServiceVersion:F

    const v4, 0x40466666    # 3.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1d

    .line 518
    const-string v0, "getCurrentRefreshRate() API is not supported this GameSDK Version"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return v2

    .line 522
    :cond_1d
    :try_start_1d
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getCurrentRefreshRate()I

    move-result v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_21} :catch_22

    return v0

    .line 523
    :catch_22
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 526
    .end local v0    # "e":Landroid/os/RemoteException;
    return v2
.end method

.method public getGpuFrameTime()D
    .registers 19

    .line 348
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const-wide v2, -0x3f70c80000000000L    # -999.0

    if-nez v0, :cond_13

    .line 349
    const-string v0, "GameSDKManager"

    const-string v4, "gamesdk system service is not available"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-wide v2

    .line 353
    :cond_13
    :try_start_13
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getGpuFrameTime()D

    move-result-wide v4

    .line 354
    .local v4, "mGpuFrameTime":D
    cmpl-double v0, v2, v4

    if-nez v0, :cond_3e

    .line 356
    iget-object v0, v1, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getFrameworkFPS()D

    move-result-wide v6

    .line 357
    .local v6, "currentFps":D
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gamesdk/GameSDKManager;->getGpuUsage()D

    move-result-wide v8

    .line 358
    .local v8, "mGpuUsage":D
    cmpl-double v0, v8, v2

    if-eqz v0, :cond_3c

    .line 359
    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v6

    .line 360
    .local v10, "mFrameTime":D
    mul-double v12, v8, v10

    .line 361
    .local v12, "temp":D
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double v16, v12, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_39} :catch_3f

    long-to-double v2, v2

    div-double/2addr v2, v14

    .line 362
    .end local v4    # "mGpuFrameTime":D
    .local v2, "mGpuFrameTime":D
    return-wide v2

    .line 364
    .end local v2    # "mGpuFrameTime":D
    .end local v6    # "currentFps":D
    .end local v8    # "mGpuUsage":D
    .end local v10    # "mFrameTime":D
    .end local v12    # "temp":D
    .restart local v4    # "mGpuFrameTime":D
    :cond_3c
    nop

    .line 370
    .end local v4    # "mGpuFrameTime":D
    goto :goto_43

    .line 366
    .restart local v4    # "mGpuFrameTime":D
    :cond_3e
    return-wide v4

    .line 368
    .end local v4    # "mGpuFrameTime":D
    :catch_3f
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_43
    return-wide v2
.end method

.method public getGpuJTLevel()I
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const/16 v1, -0x3e7

    if-nez v0, :cond_e

    .line 330
    const-string v0, "GameSDKManager"

    const-string v2, "gamesdk system service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v1

    .line 334
    :cond_e
    :try_start_e
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getGpuJTLevel()I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return v0

    .line 335
    :catch_13
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 338
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getHighPrecisionSkinTempLevel()D
    .registers 7

    .line 237
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const-string v1, "GameSDKManager"

    const-wide v2, -0x3f70c80000000000L    # -999.0

    if-nez v0, :cond_11

    .line 238
    const-string v0, "gamesdk system service is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-wide v2

    .line 241
    :cond_11
    iget v4, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mServiceVersion:F

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1f

    .line 242
    const-string v0, "getHighPrecisionSkinTempLevel() API is not supported this GameSDK Version"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-wide v2

    .line 246
    :cond_1f
    :try_start_1f
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getHighPrecisionSkinTempLevel()D

    move-result-wide v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_23} :catch_24

    return-wide v0

    .line 247
    :catch_24
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    return-wide v2
.end method

.method public getSkinTempLevel()I
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const/16 v1, -0x3e7

    if-nez v0, :cond_e

    .line 214
    const-string v0, "GameSDKManager"

    const-string v2, "gamesdk system service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return v1

    .line 218
    :cond_e
    :try_start_e
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getSkinTempLevel()I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return v0

    .line 219
    :catch_13
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getSupportedRefreshRates()[I
    .registers 5

    .line 452
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const-string v1, "GameSDKManager"

    if-nez v0, :cond_e

    .line 453
    const-string v0, "gamesdk system service is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mEmptyIntArrary:[I

    return-object v0

    .line 456
    :cond_e
    iget v2, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mServiceVersion:F

    const v3, 0x40466666    # 3.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1f

    .line 457
    const-string v0, "getSupportedRefreshRates() API is not supported this GameSDK Version"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mEmptyIntArrary:[I

    return-object v0

    .line 461
    :cond_1f
    :try_start_1f
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getSupportedRefreshRates()[I

    move-result-object v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_23} :catch_24

    return-object v0

    .line 462
    :catch_24
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 465
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mEmptyIntArrary:[I

    return-object v0
.end method

.method public getTempLevel()I
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const/16 v1, -0x3e7

    if-nez v0, :cond_e

    .line 191
    const-string v0, "GameSDKManager"

    const-string v2, "gamesdk system service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v1

    .line 195
    :cond_e
    :try_start_e
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getTempLevel()I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return v0

    .line 196
    :catch_13
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getVersion()Ljava/lang/String;
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const-string v1, "0"

    if-nez v0, :cond_e

    .line 172
    const-string v0, "GameSDKManager"

    const-string v2, "gamesdk system service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-object v1

    .line 176
    :cond_e
    :try_start_e
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return-object v0

    .line 177
    :catch_13
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 180
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public initialize()Z
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 94
    const-string v0, "GameSDKManager"

    const-string v2, "gamesdk system service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v1

    .line 98
    :cond_d
    :try_start_d
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->initGameSDK()Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 99
    :catch_12
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 102
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public initialize(Ljava/lang/String;)Z
    .registers 7
    .param p1, "version"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const-string v1, "GameSDKManager"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 114
    const-string v0, "gamesdk system service is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v2

    .line 118
    :cond_d
    :try_start_d
    iget v3, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mServiceVersion:F

    const v4, 0x40466666    # 3.1f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1c

    .line 119
    const-string v0, "initialize(String version) API is not supported this GameSDK Version"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v2

    .line 123
    :cond_1c
    invoke-interface {v0, p1}, Lcom/samsung/android/gamesdk/IGameSDKService;->initGameSDKWithVersion(Ljava/lang/String;)Z

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_20} :catch_21

    return v0

    .line 125
    :catch_21
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isGameSDKVariableRefreshRateSupported()Z
    .registers 6

    .line 431
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const-string v1, "GameSDKManager"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 432
    const-string v0, "gamesdk system service is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v2

    .line 435
    :cond_d
    iget v3, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mServiceVersion:F

    const v4, 0x40466666    # 3.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1c

    .line 436
    const-string v0, "isGameSDKVariableRefreshRateSupported() API is not supported this GameSDK Version"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return v2

    .line 440
    :cond_1c
    :try_start_1c
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->isGameSDKVrrSupported()Z

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_21

    return v0

    .line 441
    :catch_21
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    return v2
.end method

.method public resetRefreshRate()V
    .registers 5

    .line 493
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const-string v1, "GameSDKManager"

    if-nez v0, :cond_c

    .line 494
    const-string v0, "gamesdk system service is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void

    .line 497
    :cond_c
    iget v2, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mServiceVersion:F

    const v3, 0x40466666    # 3.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1b

    .line 498
    const-string v0, "resetRefreshRate() API is not supported this GameSDK Version"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 502
    :cond_1b
    :try_start_1b
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->resetRefreshRate()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 505
    goto :goto_23

    .line 503
    :catch_1f
    move-exception v0

    .line 504
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 506
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method

.method public setListener(Lcom/samsung/android/gamesdk/GameSDKManager$Listener;)Z
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    .line 260
    iput-object p1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    .line 261
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    if-eqz v0, :cond_23

    .line 262
    if-nez p1, :cond_13

    .line 264
    const/4 v1, 0x0

    :try_start_9
    invoke-interface {v0, v1}, Lcom/samsung/android/gamesdk/IGameSDKService;->setGameSDKListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    .line 265
    :catch_e
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_23

    .line 270
    :cond_13
    new-instance v0, Lcom/samsung/android/gamesdk/GameSDKManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gamesdk/GameSDKManager$1;-><init>(Lcom/samsung/android/gamesdk/GameSDKManager;)V

    .line 294
    .local v0, "GameSDKListener":Lcom/samsung/android/gamesdk/IGameSDKListener;
    :try_start_18
    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    invoke-interface {v1, v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->setGameSDKListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)Z

    move-result v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_1f

    return v1

    .line 295
    :catch_1f
    move-exception v1

    .line 296
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 300
    .end local v0    # "GameSDKListener":Lcom/samsung/android/gamesdk/IGameSDKListener;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method public setRefreshRate(I)V
    .registers 6
    .param p1, "targetRefreshRate"    # I

    .line 473
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const-string v1, "GameSDKManager"

    if-nez v0, :cond_c

    .line 474
    const-string v0, "gamesdk system service is not available"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void

    .line 477
    :cond_c
    iget v2, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mServiceVersion:F

    const v3, 0x40466666    # 3.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1b

    .line 478
    const-string v0, "setRefreshRate() API is not supported this GameSDK Version"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void

    .line 482
    :cond_1b
    :try_start_1b
    invoke-interface {v0, p1}, Lcom/samsung/android/gamesdk/IGameSDKService;->setRefreshRate(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 485
    goto :goto_23

    .line 483
    :catch_1f
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 486
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method
