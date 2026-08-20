.class public Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerService.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundTriggerSession"
.end annotation


# instance fields
.field public final mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

.field public mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field public final synthetic this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;


# direct methods
.method public static bridge synthetic -$$Nest$munloadKeyphraseModel(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->unloadKeyphraseModel(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;)V
    .registers 3

    .line 1496
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1497
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1639
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This object isn\'t intended to be used as a Binder."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 4

    .line 1503
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1504
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    .line 1508
    :try_start_c
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {p0}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_17

    .line 1510
    :try_start_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1511
    throw p0

    :catchall_1c
    move-exception p0

    .line 1512
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public getParameter(II)I
    .registers 5
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 1609
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1610
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1611
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 1613
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1615
    :try_start_d
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->getParameter(II)I

    move-result p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 1617
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1618
    throw p0

    :catchall_1c
    move-exception p0

    .line 1611
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 5
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 1625
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1626
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1627
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 1629
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1631
    :try_start_d
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 1633
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1634
    throw p0

    :catchall_1c
    move-exception p0

    .line 1627
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public setParameter(III)I
    .registers 6
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 1594
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1595
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1596
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 1598
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1600
    :try_start_d
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->setParameter(III)I

    move-result p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 1602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1603
    throw p0

    :catchall_1c
    move-exception p0

    .line 1596
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .registers 16

    .line 1520
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1521
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    if-eqz p3, :cond_8c

    if-eqz p4, :cond_8c

    if-eqz p2, :cond_8c

    if-eqz p5, :cond_17

    .line 1527
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const-string v2, "android.permission.SOUND_TRIGGER_RUN_IN_BATTERY_SAVER"

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceCallingPermission(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Ljava/lang/String;)V

    .line 1530
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_94

    .line 1532
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1535
    :try_start_20
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    .line 1536
    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v6

    if-eqz v6, :cond_7a

    .line 1538
    invoke-virtual {v6}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p2

    if-eqz p2, :cond_7a

    .line 1539
    invoke-virtual {v6}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object p2

    if-nez p2, :cond_39

    goto :goto_7a

    .line 1545
    :cond_39
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter p2
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_87

    .line 1546
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v0, :cond_5d

    .line 1549
    invoke-interface {p3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v0, v3, :cond_67

    .line 1550
    :cond_5d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v0, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$mcreateSoundTriggerCallbackLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 1552
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 1554
    :cond_67
    monitor-exit p2
    :try_end_68
    .catchall {:try_start_3c .. :try_end_68} :catchall_77

    .line 1555
    :try_start_68
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    iget-object v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move v5, p1

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result p0
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_87

    .line 1559
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_77
    move-exception p0

    .line 1554
    :try_start_78
    monitor-exit p2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    throw p0

    :cond_7a
    :goto_7a
    const-string p0, "VoiceInteractionManager"

    const-string p1, "No matching sound model found in startRecognition"

    .line 1540
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_87

    const/high16 p0, -0x80000000

    .line 1559
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_87
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1560
    throw p0

    .line 1524
    :cond_8c
    :try_start_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal argument(s) in startRecognition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_94
    move-exception p0

    .line 1530
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_94

    throw p0
.end method

.method public stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I
    .registers 6

    .line 1568
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1569
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1570
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_20

    .line 1572
    invoke-interface {p2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_1d

    goto :goto_20

    .line 1577
    :cond_1d
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    goto :goto_2e

    .line 1573
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$mcreateSoundTriggerCallbackLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object p2

    const-string v1, "VoiceInteractionManager"

    const-string/jumbo v2, "stopRecognition() called with a different callback thanstartRecognition()"

    .line 1574
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    const/4 v1, 0x0

    .line 1579
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 1580
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 1581
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_47

    .line 1583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1585
    :try_start_38
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p0
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_42

    .line 1587
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_42
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1588
    throw p0

    :catchall_47
    move-exception p0

    .line 1581
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public final unloadKeyphraseModel(I)I
    .registers 4

    .line 1644
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1646
    :try_start_4
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->unloadKeyphraseModel(I)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1648
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1649
    throw p0
.end method
