.class public Landroid/os/CustomFrequencyManager;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# static fields
.field public static final blacklist CPUCTL:I = 0x11

.field public static final blacklist CPUSET:I = 0x10

.field public static final blacklist CPU_CORE_NUM_MAX_LIMIT:I = 0x5

.field public static final blacklist CPU_CORE_NUM_MIN_LIMIT:I = 0x4

.field public static final blacklist CPU_DISABLE_CSTATE:I = 0xc

.field public static final blacklist CPU_HOTPLUG_DISABLE:I = 0xe

.field public static final blacklist CPU_LEGACY_SCHEDULER:I = 0xd

.field private static final blacklist DEBUG:Z

.field public static final blacklist DVFS_MAX_LIMIT:I = 0x2

.field public static final blacklist DVFS_MIN_LIMIT:I = 0x1

.field public static final blacklist FREQUENCY_BUS_TYPE_BOOST_MAX_LIMIT:I = 0xb

.field public static final blacklist FREQUENCY_BUS_TYPE_BOOST_MIN_LIMIT:I = 0xa

.field public static final blacklist FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT:I = 0x7

.field public static final blacklist FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT:I = 0x6

.field public static final blacklist FREQUENCY_LCD_FRAME_RATE:I = 0x3

.field public static final blacklist FREQUENCY_MMC_TYPE_BURST_MODE:I = 0x8

.field public static final blacklist FREQUENCY_REQ_TYPE_GPU:I = 0x1

.field public static final blacklist FREQUENCY_REQ_TYPE_GPU_MAX:I = 0x9

.field public static final blacklist LITTLE_CPU_MIN:I = 0x15

.field public static final blacklist LPM_BIAS:I = 0x14

.field public static final blacklist PCIE_PSM_DISABLE:I = 0xf

.field public static final blacklist SCHEDTUNE_BOOST:I = 0x13

.field public static final blacklist SCHEDTUNE_POLICY:I = 0x12

.field private static final blacklist TAG:Ljava/lang/String; = "CustomFrequencyManager"

.field private static blacklist mContext:Landroid/content/Context;


# instance fields
.field blacklist mHandler:Landroid/os/Handler;

.field blacklist mService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    .line 101
    const/4 v0, 0x0

    sput-object v0, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/ICustomFrequencyManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "service"    # Landroid/os/ICustomFrequencyManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    .line 117
    iput-object p2, p0, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    .line 118
    return-void
.end method

.method private declared-synchronized blacklist getCfmsService()Landroid/os/ICustomFrequencyManager;
    .registers 3

    monitor-enter p0

    .line 278
    :try_start_1
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_1b
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-eqz v0, :cond_7

    .line 279
    monitor-exit p0

    return-object v0

    .line 281
    :cond_7
    :try_start_7
    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 282
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_15

    .line 283
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    iput-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    .line 285
    .end local p0    # "this":Landroid/os/CustomFrequencyManager;
    :cond_15
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_1b
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v1

    .line 277
    .end local v0    # "b":Landroid/os/IBinder;
    :catchall_19
    move-exception v0

    goto :goto_22

    .line 287
    :catch_1b
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_19

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 277
    :goto_22
    monitor-exit p0

    throw v0
.end method

.method private static blacklist logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 169
    sget-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 170
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_7
    return-void
.end method

.method private static blacklist printExceptionTrace(Ljava/lang/Exception;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 107
    sget-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :cond_7
    return-void
.end method


# virtual methods
.method public blacklist acquire(IILjava/lang/String;I[I)V
    .registers 13
    .param p1, "pid"    # I
    .param p2, "token"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "hint"    # I
    .param p5, "list"    # [I

    .line 295
    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_12

    .line 296
    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 297
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 298
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    iput-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    .line 301
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_12
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_1e

    .line 302
    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/ICustomFrequencyManager;->acquire(IILjava/lang/String;I[I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 306
    :cond_1e
    goto :goto_23

    .line 304
    :catch_1f
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 307
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method

.method public blacklist checkHintExist(I)Z
    .registers 3
    .param p1, "hint"    # I

    .line 382
    :try_start_0
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 383
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->checkHintExist(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    .line 387
    :cond_d
    goto :goto_12

    .line 385
    :catch_e
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 388
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkResourceExist(I)Z
    .registers 3
    .param p1, "resourceId"    # I

    .line 393
    :try_start_0
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 394
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->checkResourceExist(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    .line 398
    :cond_d
    goto :goto_12

    .line 396
    :catch_e
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 399
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkSysfsIdExist(I)Z
    .registers 6
    .param p1, "sysfsId"    # I

    .line 368
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 369
    return v1

    .line 372
    :cond_8
    :try_start_8
    const-string v0, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in manager checkSysfsIdExist - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->checkSysfsIdExist(I)Z

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_27} :catch_28

    return v0

    .line 374
    :catch_28
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 377
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist disableGpisHint()V
    .registers 2

    .line 414
    :try_start_0
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 415
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0}, Landroid/os/ICustomFrequencyManager;->disableGpisHint()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 419
    :cond_b
    goto :goto_10

    .line 417
    :catch_c
    move-exception v0

    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public blacklist getGameThrottlingLevel()I
    .registers 3

    .line 220
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 221
    const/4 v0, 0x0

    return v0

    .line 224
    :cond_8
    const/4 v0, 0x0

    .line 226
    .local v0, "level":I
    :try_start_9
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getGameThrottlingLevel()I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_11

    move v0, v1

    .line 228
    goto :goto_12

    .line 227
    :catch_11
    move-exception v1

    .line 229
    :goto_12
    return v0
.end method

.method public blacklist getSupportedFrequency(II)[I
    .registers 5
    .param p1, "type"    # I
    .param p2, "level"    # I

    .line 327
    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_12

    .line 328
    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 329
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 330
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    iput-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    .line 333
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_12
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_1b

    .line 334
    invoke-interface {v0, p1, p2}, Landroid/os/ICustomFrequencyManager;->getSupportedFrequency(II)[I

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1c

    return-object v0

    .line 338
    :cond_1b
    goto :goto_20

    .line 336
    :catch_1c
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 339
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist mpdUpdate(I)V
    .registers 5
    .param p1, "mpEnable"    # I

    .line 153
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 154
    return-void

    .line 157
    :cond_7
    :try_start_7
    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in manager mpUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->mpdUpdate(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_25} :catch_26

    .line 161
    goto :goto_2a

    .line 159
    :catch_26
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public blacklist onTopAppChanged(Z)V
    .registers 4
    .param p1, "isTopFullscreen"    # Z

    .line 122
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 123
    return-void

    .line 126
    :cond_7
    if-eqz p1, :cond_11

    .line 127
    :try_start_9
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "--Nw 2.4 --Tw 150 --Ns 1.4 --Ts 100 --util_h 100 --util_l 0"

    invoke-interface {v0, v1}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V

    goto :goto_18

    .line 130
    :cond_11
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "--Nw 1.99 --Tw 140 --Ns 1.1 --Ts 190 --util_h 70 --util_l 60"

    invoke-interface {v0, v1}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_19

    .line 135
    :goto_18
    goto :goto_1d

    .line 133
    :catch_19
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method public blacklist readSysfs(I)Ljava/lang/String;
    .registers 6
    .param p1, "sysfsId"    # I

    .line 355
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_9

    .line 356
    return-object v1

    .line 359
    :cond_9
    :try_start_9
    const-string v0, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in manager readSysfs - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->readSysfs(I)Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_28} :catch_29

    return-object v0

    .line 361
    :catch_29
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 364
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public blacklist release(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "token"    # I

    .line 311
    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_12

    .line 312
    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 313
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 314
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    iput-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    .line 317
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_12
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_19

    .line 318
    invoke-interface {v0, p1, p2}, Landroid/os/ICustomFrequencyManager;->release(II)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 322
    :cond_19
    goto :goto_1e

    .line 320
    :catch_1a
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 323
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method public blacklist requestCPUUpdate(II)V
    .registers 6
    .param p1, "cpu"    # I
    .param p2, "enable"    # I

    .line 140
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 141
    return-void

    .line 144
    :cond_7
    :try_start_7
    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in manager requestCPUUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1, p2}, Landroid/os/ICustomFrequencyManager;->requestCPUUpdate(II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2f} :catch_30

    .line 148
    goto :goto_34

    .line 146
    :catch_30
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method public blacklist requestFreezeSlowdown(IZLjava/lang/String;)I
    .registers 6
    .param p1, "pid"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "type"    # Ljava/lang/String;

    .line 247
    const/4 v0, -0x1

    .line 249
    .local v0, "ret":I
    :try_start_1
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    if-nez v1, :cond_9

    .line 250
    const/4 v1, -0x1

    return v1

    .line 252
    :cond_9
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_12

    .line 253
    invoke-interface {v1, p1, p2, p3}, Landroid/os/ICustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move v0, v1

    .line 257
    :cond_12
    goto :goto_17

    .line 255
    :catch_13
    move-exception v1

    .line 256
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 258
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    return v0
.end method

.method public blacklist restrictApp(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "restrictReason"    # I

    .line 404
    :try_start_0
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 405
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/ICustomFrequencyManager;->restrictApp(Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 409
    :cond_b
    goto :goto_10

    .line 407
    :catch_c
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public blacklist sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 183
    return-void

    .line 186
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1, p2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    .line 189
    goto :goto_11

    .line 187
    :catch_d
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public blacklist setFrozenTime(I)V
    .registers 3
    .param p1, "timeMs"    # I

    .line 264
    :try_start_0
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 265
    return-void

    .line 267
    :cond_7
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_e

    .line 268
    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->setFrozenTime(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 272
    :cond_e
    goto :goto_13

    .line 270
    :catch_f
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public blacklist setGameFps(I)V
    .registers 3
    .param p1, "level"    # I

    .line 208
    :try_start_0
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 209
    return-void

    .line 211
    :cond_7
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_e

    .line 212
    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->setGameFps(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 215
    :cond_e
    goto :goto_10

    .line 214
    :catch_f
    move-exception v0

    .line 216
    :goto_10
    return-void
.end method

.method public blacklist setGamePowerSaving(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 195
    :try_start_0
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 196
    return-void

    .line 198
    :cond_7
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_e

    .line 199
    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->setGamePowerSaving(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 202
    :cond_e
    goto :goto_10

    .line 201
    :catch_f
    move-exception v0

    .line 203
    :goto_10
    return-void
.end method

.method public blacklist setGameTurboMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 235
    :try_start_0
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 236
    return-void

    .line 238
    :cond_7
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_e

    .line 239
    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->setGameTurboMode(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 242
    :cond_e
    goto :goto_10

    .line 241
    :catch_f
    move-exception v0

    .line 243
    :goto_10
    return-void
.end method

.method public blacklist setGpisHint(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 424
    :try_start_0
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 425
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->setGpisHint(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 429
    :cond_b
    goto :goto_10

    .line 427
    :catch_c
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 430
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public blacklist writeSysfs(ILjava/lang/String;)V
    .registers 6
    .param p1, "sysfsId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 343
    invoke-direct {p0}, Landroid/os/CustomFrequencyManager;->getCfmsService()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 344
    return-void

    .line 347
    :cond_7
    :try_start_7
    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in manager writeSysfs - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1, p2}, Landroid/os/ICustomFrequencyManager;->writeSysfs(ILjava/lang/String;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2f} :catch_30

    .line 351
    goto :goto_34

    .line 349
    :catch_30
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method
