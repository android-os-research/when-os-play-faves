.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;
.super Ljava/lang/Object;
.source "SoundTriggerHalMaxModelLimiter.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

.field public mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

.field public final mMaxModels:I

.field public mNumLoadedModels:I


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;I)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 47
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 48
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    return-void
.end method

.method public flushCallbacks()V
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->flushCallbacks()V

    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 2

    .line 131
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->forceRecognitionEvent(I)V

    return-void
.end method

.method public getModelParameter(II)I
    .registers 3

    .line 136
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getModelParameter(II)I

    move-result p0

    return p0
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object p0

    return-object p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    .line 151
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6

    .line 87
    monitor-enter p0

    .line 88
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_15

    .line 91
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    .line 92
    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 93
    monitor-exit p0

    return p1

    .line 89
    :cond_15
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p1

    :catchall_1b
    move-exception p1

    .line 94
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_15

    .line 78
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    .line 79
    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 80
    monitor-exit p0

    return p1

    .line 76
    :cond_15
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p1

    :catchall_1b
    move-exception p1

    .line 81
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 3

    .line 146
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0

    return-object p0
.end method

.method public reboot()V
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->reboot()V

    return-void
.end method

.method public registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 69
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    return-void
.end method

.method public setModelParameter(III)V
    .registers 4

    .line 141
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->setModelParameter(III)V

    return-void
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 5

    .line 126
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    return-void
.end method

.method public stopRecognition(I)V
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V

    return-void
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public unloadSoundModel(I)V
    .registers 5

    .line 100
    monitor-enter p0

    .line 101
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 102
    :goto_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_29

    .line 104
    :try_start_10
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v1, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unloadSoundModel(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_1d

    if-eqz v0, :cond_1c

    .line 114
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;->onResourcesAvailable()V

    :cond_1c
    return-void

    :catch_1d
    move-exception p1

    .line 106
    monitor-enter p0

    .line 107
    :try_start_1f
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 108
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_26

    .line 109
    throw p1

    :catchall_26
    move-exception p1

    .line 108
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1

    :catchall_29
    move-exception p1

    .line 102
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method
