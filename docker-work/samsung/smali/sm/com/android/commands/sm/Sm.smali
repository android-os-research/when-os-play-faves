.class public final Lcom/android/commands/sm/Sm;
.super Ljava/lang/Object;
.source "Sm.java"


# static fields
.field private static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field private static final TAG:Ljava/lang/String; = "Sm"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mNextArg:I

.field mSm:Landroid/os/storage/IStorageManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkBuildType()Ljava/lang/String;
    .registers 4

    .line 470
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "checkType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBuildType checkType from SystemProperty is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sm"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 475
    const-string v1, "ENG"

    .local v1, "buildType":Ljava/lang/String;
    goto :goto_40

    .line 476
    .end local v1    # "buildType":Ljava/lang/String;
    :cond_33
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 477
    const-string v1, "USER"

    .restart local v1    # "buildType":Ljava/lang/String;
    goto :goto_40

    .line 479
    .end local v1    # "buildType":Ljava/lang/String;
    :cond_3e
    const-string v1, "ENG"

    .line 482
    .restart local v1    # "buildType":Ljava/lang/String;
    :goto_40
    return-object v1
.end method

.method private cleanupContainers()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "containers":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    .line 416
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/storage/IStorageManager;->destroySecureContainer(Ljava/lang/String;Z)I

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 419
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method private containerExists(Ljava/lang/String;)Z
    .registers 6
    .param p1, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "containers":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 425
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 426
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "existed"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 427
    const/4 v2, 0x1

    return v2

    .line 424
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 430
    .end local v1    # "i":I
    :cond_1e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    const/4 v1, 0x0

    return v1
.end method

.method private createContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)I
    .registers 13
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "filesystem"    # Ljava/lang/String;
    .param p5, "isExternal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/os/storage/IStorageManager;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private destroyContainer(Ljava/lang/String;Z)I
    .registers 4
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private isContainerMounted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMediaMounted()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 461
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "mPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v0}, Landroid/os/storage/IStorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "success":Z
    :try_start_1
    new-instance v1, Lcom/android/commands/sm/Sm;

    invoke-direct {v1}, Lcom/android/commands/sm/Sm;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/commands/sm/Sm;->run([Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    .line 52
    const/4 v0, 0x1

    .line 60
    goto :goto_36

    .line 53
    :catch_b
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_17

    .line 55
    invoke-static {}, Lcom/android/commands/sm/Sm;->showUsage()I

    .line 56
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 58
    :cond_17
    const-string v2, "Sm"

    const-string v3, "Error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    xor-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 62
    return-void
.end method

.method private mountContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/storage/IStorageManager;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .line 348
    iget v0, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_9

    .line 349
    const/4 v0, 0x0

    return-object v0

    .line 351
    :cond_9
    aget-object v1, v1, v0

    .line 352
    .local v1, "arg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    .line 353
    return-object v1
.end method

.method private renameContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "localId1"    # Ljava/lang/String;
    .param p2, "localId2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private runStartCheckpoint()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    const-string v0, "<num-retries> must be a positive integer"

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "numRetriesString":Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 333
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_1b

    .line 336
    .local v2, "numRetries":I
    nop

    .line 337
    if-lez v2, :cond_15

    .line 340
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, v2}, Landroid/os/storage/IStorageManager;->startCheckpoint(I)V

    .line 341
    return-void

    .line 338
    :cond_15
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 334
    .end local v2    # "numRetries":I
    :catch_1b
    move-exception v2

    .line 335
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 329
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected <num-retries>"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runSupportsCheckpoint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Z)V

    .line 345
    return-void
.end method

.method private static showUsage()I
    .registers 3

    .line 357
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: sm list-disks [adoptable]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       sm list-volumes [public|private|emulated|stub|all]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 359
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       sm has-adoptable"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       sm get-primary-storage-uuid"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       sm set-force-adoptable [on|off|default]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       sm set-virtual-disk [true|false]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm partition DISK [public|private|mixed] [ratio]"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm mount VOLUME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm unmount VOLUME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm format VOLUME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm benchmark VOLUME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm idle-maint [run|abort]"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm fstrim"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm forget [UUID|all]"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm set-emulate-fbe [true|false]"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm start-checkpoint <num-retries>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm supports-checkpoint"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "       sm unmount-app-data-dirs PACKAGE_NAME PID USER_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method private unmountContainer(Ljava/lang/String;Z)I
    .registers 4
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .registers 5
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_13a

    .line 69
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    .line 70
    if-eqz v2, :cond_132

    .line 74
    iput-object p1, p0, Lcom/android/commands/sm/Sm;->mArgs:[Ljava/lang/String;

    .line 75
    const/4 v2, 0x0

    aget-object v2, p1, v2

    .line 76
    .local v2, "op":Ljava/lang/String;
    iput v1, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    .line 78
    const-string v1, "list-disks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 79
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runListDisks()V

    goto/16 :goto_12b

    .line 80
    :cond_26
    const-string v1, "list-volumes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 81
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runListVolumes()V

    goto/16 :goto_12b

    .line 82
    :cond_33
    const-string v1, "has-adoptable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 83
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runHasAdoptable()V

    goto/16 :goto_12b

    .line 84
    :cond_40
    const-string v1, "get-primary-storage-uuid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 85
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runGetPrimaryStorageUuid()V

    goto/16 :goto_12b

    .line 86
    :cond_4d
    const-string v1, "set-force-adoptable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 87
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runSetForceAdoptable()V

    goto/16 :goto_12b

    .line 88
    :cond_5a
    const-string v1, "set-sdcardfs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 89
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runSetSdcardfs()V

    goto/16 :goto_12b

    .line 90
    :cond_67
    const-string v1, "partition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 91
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runPartition()V

    goto/16 :goto_12b

    .line 92
    :cond_74
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 93
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runMount()V

    goto/16 :goto_12b

    .line 94
    :cond_7f
    const-string v0, "unmount"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 95
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runUnmount()V

    goto/16 :goto_12b

    .line 96
    :cond_8c
    const-string v0, "format"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 97
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runFormat()V

    goto/16 :goto_12b

    .line 98
    :cond_99
    const-string v0, "benchmark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 99
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runBenchmark()V

    goto/16 :goto_12b

    .line 100
    :cond_a6
    const-string v0, "forget"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 101
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runForget()V

    goto/16 :goto_12b

    .line 102
    :cond_b3
    const-string v0, "set-emulate-fbe"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 103
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runSetEmulateFbe()V

    goto/16 :goto_12b

    .line 104
    :cond_c0
    const-string v0, "get-fbe-mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 105
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runGetFbeMode()V

    goto :goto_12b

    .line 106
    :cond_cc
    const-string v0, "idle-maint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 107
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runIdleMaint()V

    goto :goto_12b

    .line 108
    :cond_d8
    const-string v0, "fstrim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 109
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runFstrim()V

    goto :goto_12b

    .line 110
    :cond_e4
    const-string v0, "set-virtual-disk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 111
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runSetVirtualDisk()V

    goto :goto_12b

    .line 112
    :cond_f0
    const-string v0, "start-checkpoint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 113
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->runStartCheckpoint()V

    goto :goto_12b

    .line 114
    :cond_fc
    const-string v0, "supports-checkpoint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 115
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->runSupportsCheckpoint()V

    goto :goto_12b

    .line 116
    :cond_108
    const-string v0, "unmount-app-data-dirs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    .line 117
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runDisableAppDataIsolation()V

    goto :goto_12b

    .line 119
    :cond_114
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->checkBuildType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string v0, "asec"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 120
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runAsecTest()V

    .line 125
    :goto_12b
    return-void

    .line 123
    :cond_12c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    .end local v2    # "op":Ljava/lang/String;
    :cond_132
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Failed to find running mount service"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_13a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public runAsecTest()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "command":Ljava/lang/String;
    :try_start_4
    const-string v1, "cleanup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 390
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->cleanupContainers()V

    goto/16 :goto_158

    .line 391
    :cond_11
    const-string v1, "exist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_159

    const-string v2, " ret "

    if-eqz v1, :cond_3b

    .line 392
    :try_start_1b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/commands/sm/Sm;->containerExists(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_158

    .line 393
    :cond_3b
    const-string v1, "create"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 394
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 395
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 394
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/commands/sm/Sm;->createContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_158

    .line 396
    :cond_7c
    const-string v1, "mount"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 397
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/commands/sm/Sm;->mountContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_158

    .line 398
    :cond_a8
    const-string v1, "rename"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 399
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/commands/sm/Sm;->renameContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_158

    .line 400
    :cond_d4
    const-string v1, "unmount"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 401
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/commands/sm/Sm;->unmountContainer(Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_158

    .line 402
    :cond_103
    const-string v1, "destroy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 403
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/commands/sm/Sm;->destroyContainer(Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_158

    .line 404
    :cond_132
    const-string v1, "ismounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 405
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/commands/sm/Sm;->isContainerMounted(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_158} :catch_159

    .line 409
    :cond_158
    :goto_158
    goto :goto_172

    .line 407
    :catch_159
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_172
    return-void
.end method

.method public runBenchmark()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "volId":Ljava/lang/String;
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 256
    .local v1, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/os/PersistableBundle;>;"
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    new-instance v3, Lcom/android/commands/sm/Sm$1;

    invoke-direct {v3, p0, v1}, Lcom/android/commands/sm/Sm$1;-><init>(Lcom/android/commands/sm/Sm;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {v2, v0, v3}, Landroid/os/storage/IStorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 269
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public runDisableAppDataIsolation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    const-string v0, "persist.sys.vold_app_data_isolation_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 275
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Storage app data isolation is not enabled."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    return-void

    .line 278
    :cond_11
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "pkgName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 280
    .local v1, "pid":I
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 281
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v0, v1, v2}, Landroid/os/storage/IStorageManager;->disableAppDataIsolation(Ljava/lang/String;II)V

    .line 282
    return-void
.end method

.method public runForget()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "fsUuid":Ljava/lang/String;
    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 287
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->forgetAllVolumes()V

    goto :goto_17

    .line 289
    :cond_12
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v0}, Landroid/os/storage/IStorageManager;->forgetVolume(Ljava/lang/String;)V

    .line 291
    :goto_17
    return-void
.end method

.method public runFormat()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v0}, Landroid/os/storage/IStorageManager;->format(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public runFstrim()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 295
    .local v0, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/os/PersistableBundle;>;"
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    new-instance v2, Lcom/android/commands/sm/Sm$2;

    invoke-direct {v2, p0, v0}, Lcom/android/commands/sm/Sm$2;-><init>(Lcom/android/commands/sm/Sm;Ljava/util/concurrent/CompletableFuture;)V

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/os/storage/IStorageManager;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 308
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method public runGetFbeMode()V
    .registers 3

    .line 214
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 215
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_23

    .line 216
    :cond_e
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 217
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "emulated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_23

    .line 219
    :cond_1c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    :goto_23
    return-void
.end method

.method public runGetPrimaryStorageUuid()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public runHasAdoptable()V
    .registers 3

    .line 165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public runIdleMaint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 319
    .local v0, "im_run":Z
    if-eqz v0, :cond_12

    .line 320
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->runIdleMaintenance()V

    goto :goto_17

    .line 322
    :cond_12
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->abortIdleMaintenance()V

    .line 324
    :goto_17
    return-void
.end method

.method public runListDisks()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adoptable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 129
    .local v0, "onlyAdoptable":Z
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v1

    .line 130
    .local v1, "disks":[Landroid/os/storage/DiskInfo;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_2a

    aget-object v4, v1, v3

    .line 131
    .local v4, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_1e

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 132
    :cond_1e
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    .end local v4    # "disk":Landroid/os/storage/DiskInfo;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 135
    :cond_2a
    return-void
.end method

.method public runListVolumes()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "filter":Ljava/lang/String;
    const-string v1, "public"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 141
    const/4 v1, 0x0

    .local v1, "filterType":I
    goto :goto_2d

    .line 142
    .end local v1    # "filterType":I
    :cond_e
    const-string v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 143
    const/4 v1, 0x1

    .restart local v1    # "filterType":I
    goto :goto_2d

    .line 144
    .end local v1    # "filterType":I
    :cond_18
    const-string v1, "emulated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 145
    const/4 v1, 0x2

    .restart local v1    # "filterType":I
    goto :goto_2d

    .line 146
    .end local v1    # "filterType":I
    :cond_22
    const-string v1, "stub"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 147
    const/4 v1, 0x5

    .restart local v1    # "filterType":I
    goto :goto_2d

    .line 149
    .end local v1    # "filterType":I
    :cond_2c
    const/4 v1, -0x1

    .line 152
    .restart local v1    # "filterType":I
    :goto_2d
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 153
    .local v2, "vols":[Landroid/os/storage/VolumeInfo;
    array-length v4, v2

    :goto_35
    if-ge v3, v4, :cond_79

    aget-object v5, v2, v3

    .line 154
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    const/4 v6, -0x1

    if-eq v1, v6, :cond_42

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v1, v6, :cond_76

    .line 155
    :cond_42
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    invoke-static {v6}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "envState":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v6    # "envState":Ljava/lang/String;
    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 159
    :cond_79
    return-void
.end method

.method public runMount()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v0}, Landroid/os/storage/IStorageManager;->mount(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public runPartition()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "diskId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "type":Ljava/lang/String;
    const-string v2, "public"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 227
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, v0}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V

    goto :goto_3a

    .line 228
    :cond_16
    const-string v2, "private"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 229
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, v0}, Landroid/os/storage/IStorageManager;->partitionPrivate(Ljava/lang/String;)V

    goto :goto_3a

    .line 230
    :cond_24
    const-string v2, "mixed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 231
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 232
    .local v2, "ratio":I
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v0, v2}, Landroid/os/storage/IStorageManager;->partitionMixed(Ljava/lang/String;I)V

    .line 233
    .end local v2    # "ratio":I
    nop

    .line 236
    :goto_3a
    return-void

    .line 234
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported partition type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public runSetEmulateFbe()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 209
    .local v0, "emulateFbe":Z
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    const/4 v2, 0x4

    if-eqz v0, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    invoke-interface {v1, v3, v2}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 211
    return-void
.end method

.method public runSetForceAdoptable()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x3

    .line 176
    .local v0, "mask":I
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    sparse-switch v2, :sswitch_data_5c

    :cond_10
    goto :goto_43

    :sswitch_11
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v6

    goto :goto_44

    :sswitch_1b
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x4

    goto :goto_44

    :sswitch_25
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v5

    goto :goto_44

    :sswitch_2f
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v4

    goto :goto_44

    :sswitch_39
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_44

    :goto_43
    const/4 v1, -0x1

    :goto_44
    packed-switch v1, :pswitch_data_72

    goto :goto_5a

    .line 186
    :pswitch_48
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v3, v6}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    goto :goto_5a

    .line 182
    :pswitch_4e
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v4, v6}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 183
    goto :goto_5a

    .line 179
    :pswitch_54
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v5, v6}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 180
    nop

    .line 189
    :goto_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        0xddf -> :sswitch_39
        0x1ad6f -> :sswitch_2f
        0x36758e -> :sswitch_25
        0x5cb1923 -> :sswitch_1b
        0x5c13d641 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_54
        :pswitch_54
        :pswitch_4e
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method

.method public runSetSdcardfs()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    const/16 v0, 0x18

    .line 194
    .local v0, "mask":I
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_4c

    :cond_e
    goto :goto_2d

    :sswitch_f
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    goto :goto_2e

    :sswitch_19
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_2e

    :sswitch_23
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_2e

    :goto_2d
    const/4 v1, -0x1

    :goto_2e
    const/16 v2, 0x18

    packed-switch v1, :pswitch_data_5a

    goto :goto_4a

    .line 202
    :pswitch_34
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v3, v2}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    goto :goto_4a

    .line 199
    :pswitch_3a
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    const/16 v3, 0x10

    invoke-interface {v1, v3, v2}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 200
    goto :goto_4a

    .line 196
    :pswitch_42
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    const/16 v3, 0x8

    invoke-interface {v1, v3, v2}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 197
    nop

    .line 205
    :goto_4a
    return-void

    nop

    :sswitch_data_4c
    .sparse-switch
        0xddf -> :sswitch_23
        0x1ad6f -> :sswitch_19
        0x5c13d641 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3a
        :pswitch_34
    .end packed-switch
.end method

.method public runSetVirtualDisk()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 313
    .local v0, "virtualDisk":Z
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    const/16 v2, 0x20

    if-eqz v0, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    :goto_11
    invoke-interface {v1, v3, v2}, Landroid/os/storage/IStorageManager;->setDebugFlags(II)V

    .line 315
    return-void
.end method

.method public runUnmount()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v0}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V

    .line 246
    return-void
.end method
