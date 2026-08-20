.class public Lcom/android/server/audio/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field public final mCb:Landroid/os/IBinder;

.field public final mIsPrivileged:Z

.field public mMode:I

.field public final mPackage:Ljava/lang/String;

.field public mPackageType:Ljava/lang/String;

.field public final mPid:I

.field public mPlaybackActive:Z

.field public mRecordingActive:Z

.field public mSoundPoolActive:Z

.field public final mUid:I

.field public mUpdateTime:J

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMode(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I
    .registers 1

    iget p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;IIZLjava/lang/String;I)V
    .registers 8

    .line 5442
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5437
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPlaybackActive:Z

    .line 5438
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mRecordingActive:Z

    .line 5439
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mSoundPoolActive:Z

    const-string p1, "NORMAL"

    .line 5560
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackageType:Ljava/lang/String;

    .line 5443
    iput p7, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 5444
    iput-object p2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 5445
    iput p3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    .line 5446
    iput p4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    .line 5447
    iput-object p6, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    .line 5448
    iput-boolean p5, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mIsPrivileged:Z

    .line 5449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUpdateTime:J

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 10

    .line 5453
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    const-string v1, "AS.AudioService"

    const-string v2, "SetModeDeathHandler client died"

    .line 5454
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5455
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_23

    const-string p0, "AS.AudioService"

    const-string/jumbo v1, "unregistered SetModeDeathHandler client died"

    .line 5457
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 5459
    :cond_23
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 5460
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5461
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x24

    const/4 v4, 0x2

    const/4 v5, -0x1

    .line 5465
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    iget-object p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 5466
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 5461
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5469
    :goto_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;I)V
    .registers 7

    .line 5539
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-ltz p2, :cond_24

    .line 5542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Requester # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5544
    :cond_24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - Mode: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    invoke-static {v1}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5545
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - Binder: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5546
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - Pid: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5547
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - Uid: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5548
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - Package: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5549
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - Privileged: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mIsPrivileged:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5550
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - Active: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5551
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Playback active: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPlaybackActive:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5552
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Recording active: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mRecordingActive:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5554
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    SoundPool active: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mSoundPoolActive:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5556
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - update time: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUpdateTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 1

    .line 5486
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object p0
.end method

.method public getMode()I
    .registers 1

    .line 5482
    iget p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    return p0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 1

    .line 5494
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageType()Ljava/lang/String;
    .registers 1

    .line 5573
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackageType:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 5473
    iget p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 5490
    iget p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    return p0
.end method

.method public getUpdateTime()J
    .registers 3

    .line 5502
    iget-wide v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUpdateTime:J

    return-wide v0
.end method

.method public isActive()Z
    .registers 4

    .line 5530
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mIsPrivileged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_16

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mRecordingActive:Z

    if-nez v2, :cond_1d

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPlaybackActive:Z

    if-nez v2, :cond_1d

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mSoundPoolActive:Z

    if-nez p0, :cond_1d

    :cond_16
    if-eq v0, v1, :cond_1d

    const/4 p0, 0x4

    if-ne v0, p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public isPrivileged()Z
    .registers 1

    .line 5498
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mIsPrivileged:Z

    return p0
.end method

.method public setMode(I)V
    .registers 4

    .line 5477
    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 5478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUpdateTime:J

    return-void
.end method

.method public setPackageType(Ljava/lang/String;)V
    .registers 3

    .line 5564
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    const-string p1, "GAMEVOIP"

    .line 5565
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackageType:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_22

    :catch_19
    move-exception p0

    const-string p1, "AS.AudioService"

    const-string/jumbo v0, "setPackageType"

    .line 5568
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

.method public setPlaybackActive(Z)V
    .registers 2

    .line 5506
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPlaybackActive:Z

    return-void
.end method

.method public setRecordingActive(Z)V
    .registers 2

    .line 5510
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mRecordingActive:Z

    return-void
.end method

.method public setSoundPoolActive(Z)V
    .registers 2

    .line 5514
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mSoundPoolActive:Z

    return-void
.end method
