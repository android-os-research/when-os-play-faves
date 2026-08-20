.class public final Lcom/android/server/audio/RecordingActivityMonitor;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioSystem$AudioRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RecordingActivityMonitor$IRecordingEventChecker;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioService.RecordingActivityMonitor"

.field public static final sEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field public mAudioHandler:Landroid/os/Handler;

.field public mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public mChecker:Lcom/android/server/audio/RecordingActivityMonitor$IRecordingEventChecker;

.field public mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field public mHasPublicClients:Z

.field public mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mPackMan:Landroid/content/pm/PackageManager;

.field public mRecordStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 669
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x32

    const-string/jumbo v2, "recording activity received by AudioService"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    const/4 v0, 0x0

    .line 677
    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioHandler:Landroid/os/Handler;

    .line 145
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 146
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    .line 149
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    return-void
.end method

.method public static anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecordingConfiguration;

    .line 299
    invoke-static {v1}, Landroid/media/AudioRecordingConfiguration;->anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public final createRecordingConfiguration(III[IIZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)Landroid/media/AudioRecordingConfiguration;
    .registers 24

    move v1, p1

    .line 415
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x0

    aget v3, p4, v2

    .line 416
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v3, 0x1

    aget v3, p4, v3

    .line 418
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v3, 0x2

    aget v3, p4, v3

    .line 419
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v4

    .line 421
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x3

    aget v3, p4, v3

    .line 422
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v3, 0x4

    aget v3, p4, v3

    .line 424
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v3, 0x5

    aget v3, p4, v3

    .line 425
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    const/4 v0, 0x6

    .line 427
    aget v6, p4, v0

    move-object v0, p0

    .line 428
    iget-object v0, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 430
    array-length v3, v0

    if-lez v3, :cond_57

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_54

    const-string/jumbo v0, "system"

    goto :goto_59

    .line 434
    :cond_54
    aget-object v0, v0, v2

    goto :goto_59

    :cond_57
    const-string v0, ""

    :goto_59
    move-object v7, v0

    .line 439
    new-instance v13, Landroid/media/AudioRecordingConfiguration;

    move-object v0, v13

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V

    return-object v13
.end method

.method public final dispatchCallbacks(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 262
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    if-eqz v1, :cond_f

    .line 263
    invoke-static {p1}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_14

    .line 264
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    :goto_14
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_41

    .line 267
    :try_start_26
    iget-boolean v3, v2, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-eqz v3, :cond_30

    .line 268
    iget-object v2, v2, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v2, p1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V

    goto :goto_1a

    .line 270
    :cond_30
    iget-object v2, v2, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v2, v1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_35} :catch_36
    .catchall {:try_start_26 .. :try_end_35} :catchall_41

    goto :goto_1a

    :catch_36
    move-exception v2

    :try_start_37
    const-string v3, "AudioService.RecordingActivityMonitor"

    const-string v4, "Could not call dispatchRecordingConfigChange() on client"

    .line 273
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 276
    :cond_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nRecordActivityMonitor dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 284
    :try_start_24
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 285
    invoke-virtual {v1, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->dump(Ljava/io/PrintWriter;)V

    goto :goto_2a

    .line 287
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_46

    const-string p0, "\n"

    .line 288
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    sget-object p0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_46
    move-exception p0

    .line 287
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final findStateByPortId(I)I
    .registers 5

    .line 533
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 534
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 535
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 536
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getPortId()I

    move-result v2

    if-ne v2, p1, :cond_2a

    .line 537
    monitor-exit v0

    return v1

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 540
    :cond_2d
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final findStateByRiid(I)I
    .registers 5

    .line 521
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 522
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 523
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getRiid()I

    move-result v2

    if-ne v2, p1, :cond_1c

    .line 524
    monitor-exit v0

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 527
    :cond_1f
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public getActiveRecordingConfigurations(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v1

    .line 374
    :try_start_8
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 375
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 376
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 379
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    if-nez p1, :cond_2f

    .line 383
    invoke-static {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_2f
    return-object v0

    :catchall_30
    move-exception p0

    .line 379
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public initMonitor()V
    .registers 1

    .line 305
    invoke-static {p0}, Landroid/media/AudioSystem;->setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V

    return-void
.end method

.method public isLegacyRemoteSubmixActive()Z
    .registers 1

    .line 392
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isOnlyKaraokeRecordingActive()Z
    .registers 9

    .line 729
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 732
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 734
    invoke-virtual {v5}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 735
    invoke-virtual {v5}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v5

    .line 736
    iget-object v6, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 737
    array-length v6, v5

    if-lez v6, :cond_c

    .line 738
    iget-object v6, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    aget-object v5, v5, v2

    const-string/jumbo v7, "karaoke_listenback_allow"

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_44
    if-lez v3, :cond_4b

    if-nez v4, :cond_4b

    .line 748
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 750
    :cond_4b
    monitor-exit v0

    return v2

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public isRecordingActiveForUid(I)Z
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 246
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 247
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v1

    if-ne v1, p1, :cond_9

    const/4 p0, 0x1

    .line 248
    monitor-exit v0

    return p0

    .line 251
    :cond_28
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public onAudioServerDied()V
    .registers 9

    .line 313
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 315
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3b

    .line 316
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 317
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v5

    if-nez v5, :cond_a

    .line 318
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 320
    sget-object v1, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    const/4 v6, 0x3

    .line 322
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getRiid()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v3

    invoke-direct {v5, v6, v7, v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    .line 320
    invoke-virtual {v1, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    move v1, v4

    .line 324
    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_3b
    if-eqz v1, :cond_42

    .line 328
    invoke-virtual {p0, v4}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v1

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    .line 330
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_48

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    return-void

    :catchall_48
    move-exception p0

    .line 330
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public onRecordingConfigurationChanged(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;ILjava/lang/String;)V
    .registers 26

    move-object v10, p0

    move v11, p1

    move v12, p2

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p8

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p11

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 162
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/audio/RecordingActivityMonitor;->createRecordingConfiguration(III[IIZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v0

    const/16 v1, 0x8

    move/from16 v2, p5

    if-ne v2, v1, :cond_42

    if-eqz v11, :cond_25

    const/4 v1, 0x2

    if-ne v11, v1, :cond_42

    .line 168
    :cond_25
    invoke-virtual {v0}, Landroid/media/AudioRecordingConfiguration;->getAudioDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 170
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 171
    iget-object v1, v10, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 172
    iget-object v1, v10, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 175
    :cond_42
    invoke-static/range {p5 .. p5}, Landroid/media/MediaRecorder;->isSystemOnlyAudioSource(I)Z

    move-result v1

    const-string v2, "AudioService.RecordingActivityMonitor"

    if-eqz v1, :cond_59

    .line 178
    sget-object v1, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {v3, p1, p2, v0}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    return-void

    .line 181
    :cond_59
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_RECORDING_POPUP:Z

    if-eqz v1, :cond_7f

    const/16 v1, 0x63

    if-ne v11, v1, :cond_7f

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RECORDING POPUP] onRecordingConfigurationChanged on event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, v10, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioHandler:Landroid/os/Handler;

    move/from16 v1, p3

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/audio/RecordingPopupHelper;->notifyRecordingPopup(Landroid/os/Handler;II)V

    return-void

    .line 186
    :cond_7f
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    return-void
.end method

.method public recorderEvent(II)V
    .registers 7

    .line 214
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_14

    .line 215
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p2, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, v1

    :goto_11
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_14
    const/4 v0, -0x1

    if-nez p2, :cond_18

    goto :goto_1d

    :cond_18
    if-ne p2, v2, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    move v1, v0

    :goto_1d
    const/4 v2, 0x0

    if-eq p1, v0, :cond_2b

    if-ne v1, v0, :cond_23

    goto :goto_2b

    .line 226
    :cond_23
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    return-void

    .line 223
    :cond_2b
    :goto_2b
    sget-object p0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {v0, p2, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    const-string p1, "AudioService.RecordingActivityMonitor"

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    return-void
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 339
    :try_start_6
    new-instance v1, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;-><init>(Landroid/media/IRecordingConfigDispatcher;Z)V

    .line 340
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->init()Z

    move-result p1

    if-eqz p1, :cond_1b

    if-nez p2, :cond_16

    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 344
    :cond_16
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public releaseRecorder(I)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    return-void
.end method

.method public setAudioHandler(Landroid/os/Handler;)V
    .registers 2

    .line 680
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioHandler:Landroid/os/Handler;

    return-void
.end method

.method public setRecordingEventChecker(Lcom/android/server/audio/RecordingActivityMonitor$IRecordingEventChecker;)V
    .registers 2

    .line 759
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mChecker:Lcom/android/server/audio/RecordingActivityMonitor$IRecordingEventChecker;

    return-void
.end method

.method public trackRecorder(Landroid/os/IBinder;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_c

    const-string p0, "AudioService.RecordingActivityMonitor"

    const-string/jumbo p1, "trackRecorder called with null token"

    .line 194
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 197
    :cond_c
    invoke-static {}, Landroid/media/AudioSystem;->newAudioRecorderId()I

    move-result v1

    .line 198
    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    invoke-direct {v2, v1, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;-><init>(ILandroid/os/IBinder;)V

    .line 199
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->init()Z

    move-result p1

    if-nez p1, :cond_1c

    return v0

    .line 203
    :cond_1c
    iget-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter p1

    .line 204
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(ILcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    monitor-exit p1

    return v1

    :catchall_2b
    move-exception p0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 354
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 356
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 357
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    .line 358
    invoke-interface {p1}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v5}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 359
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->release()V

    .line 360
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 362
    :cond_30
    iget-boolean v3, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-nez v3, :cond_d

    const/4 v2, 0x1

    goto :goto_d

    .line 367
    :cond_36
    iput-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 368
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/AudioRecordingConfiguration;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_e

    .line 458
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByRiid(I)I

    move-result v2

    goto :goto_1a

    :catchall_b
    move-exception p0

    goto/16 :goto_d9

    :cond_e
    if-eqz p3, :cond_19

    .line 460
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByPortId(I)I

    move-result v2

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v1, :cond_54

    if-nez p1, :cond_37

    if-eqz p3, :cond_37

    .line 465
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v2, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(Landroid/media/AudioRecordingConfiguration;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    goto :goto_54

    :cond_37
    if-nez p3, :cond_52

    const-string p0, "AudioService.RecordingActivityMonitor"

    const-string p3, "Unexpected event %d for riid %d"

    new-array v1, v3, [Ljava/lang/Object;

    .line 471
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    .line 470
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_52
    monitor-exit v0

    return-object v6

    .line 476
    :cond_54
    :goto_54
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    if-eqz p1, :cond_ab

    if-eq p1, v5, :cond_9b

    if-eq p1, v3, :cond_96

    const/4 p3, 0x3

    if-eq p1, p3, :cond_89

    const-string v2, "AudioService.RecordingActivityMonitor"

    const-string v7, "Unknown event %d for riid %d / portid %d"

    new-array p3, p3, [Ljava/lang/Object;

    .line 505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, p3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, p3, v5

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getPortId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, p3, v3

    .line 504
    invoke-static {v7, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 499
    :cond_89
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v4

    .line 500
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->release()V

    .line 501
    iget-object p3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_bc

    .line 488
    :cond_96
    invoke-virtual {v1, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v4

    goto :goto_bc

    .line 491
    :cond_9b
    invoke-virtual {v1, v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v4

    .line 492
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result p3

    if-nez p3, :cond_bc

    .line 495
    iget-object p3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_bc

    .line 481
    :cond_ab
    invoke-virtual {v1, v5}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v2

    if-eqz p3, :cond_bb

    .line 483
    invoke-virtual {v1, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result p3

    if-nez p3, :cond_b9

    if-eqz v2, :cond_bc

    :cond_b9
    move v4, v5

    goto :goto_bc

    :cond_bb
    move v4, v2

    :cond_bc
    :goto_bc
    if-eqz v4, :cond_d7

    .line 509
    sget-object p3, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    invoke-virtual {p3, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 511
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSoundAppPolicy(Landroid/media/AudioRecordingConfiguration;I)V

    .line 513
    invoke-virtual {p0, v5}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v6

    .line 515
    :cond_d7
    monitor-exit v0

    return-object v6

    :goto_d9
    monitor-exit v0
    :try_end_da
    .catchall {:try_start_6 .. :try_end_da} :catchall_b

    throw p0
.end method

.method public updateSoundAppPolicy(Landroid/media/AudioRecordingConfiguration;I)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 692
    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_10

    if-ne p2, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v3, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    move v3, v2

    .line 694
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSoundAppPolicy packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AudioService.RecordingActivityMonitor"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v4, :cond_3e

    sget v4, Lcom/android/server/audio/AudioService;->mKaraokeListenbackEnabled:I

    if-ne v4, v2, :cond_3e

    .line 697
    iget-object v4, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo v6, "karaoke_listenback_allow"

    invoke-virtual {v4, v0, v6}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 700
    invoke-static {v3}, Lcom/samsung/android/server/audio/KaraokeHelper;->setKaraokeListenback(I)V

    .line 704
    :cond_3e
    iget-object v4, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mChecker:Lcom/android/server/audio/RecordingActivityMonitor$IRecordingEventChecker;

    if-eqz v4, :cond_52

    if-eqz p2, :cond_4b

    if-eq p2, v2, :cond_4b

    if-eq p2, v1, :cond_4b

    const/4 v1, 0x3

    if-ne p2, v1, :cond_52

    .line 710
    :cond_4b
    invoke-virtual {p1}, Landroid/media/AudioRecordingConfiguration;->getAudioSource()I

    move-result p1

    invoke-interface {v4, v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor$IRecordingEventChecker;->notifyRecordingEvent(Ljava/lang/String;I)V

    .line 713
    :cond_52
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE:Z

    if-eqz p1, :cond_77

    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo p1, "karaoke_allow"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_77

    .line 715
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "l_karaoke_enable="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_9e

    .line 716
    :cond_77
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_GAMECHAT_SPEAKER_AEC:Z

    if-eqz p0, :cond_9e

    .line 718
    :try_start_7b
    invoke-static {v0}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9e

    .line 719
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "l_game_chat_enable="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/IllegalStateException; {:try_start_7b .. :try_end_96} :catch_97

    goto :goto_9e

    :catch_97
    move-exception p0

    const-string/jumbo p1, "updateSnapshot"

    .line 723
    invoke-static {v5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9e
    :goto_9e
    return-void
.end method
