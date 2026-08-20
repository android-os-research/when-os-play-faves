.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;
.super Ljava/lang/Object;
.source "SoundTriggerHalWatchdog.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SoundTriggerHalWatchdog"

.field public static final TIMEOUT_MS:J = 0xbb8L


# instance fields
.field public final mTimer:Lcom/android/server/soundtrigger_middleware/UptimeTimer;

.field public final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTimer(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)Lcom/android/server/soundtrigger_middleware/UptimeTimer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mTimer:Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 43
    new-instance p1, Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    const-string v0, "SoundTriggerHalWatchdog"

    invoke-direct {p1, v0}, Lcom/android/server/soundtrigger_middleware/UptimeTimer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mTimer:Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    return-void
.end method

.method public flushCallbacks()V
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->flushCallbacks()V

    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 3

    .line 99
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    .line 100
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->forceRecognitionEvent(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 101
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_e
    move-exception p0

    .line 99
    :try_start_f
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw p0
.end method

.method public getModelParameter(II)I
    .registers 4

    .line 106
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    .line 107
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getModelParameter(II)I

    move-result p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 108
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return p0

    :catchall_f
    move-exception p0

    .line 106
    :try_start_10
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw p0
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .registers 2

    .line 48
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    .line 49
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 50
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-object p0

    :catchall_f
    move-exception p0

    .line 48
    :try_start_10
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 4

    .line 70
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    .line 71
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 72
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return p0

    :catchall_f
    move-exception p0

    .line 70
    :try_start_10
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw p0
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 4

    .line 62
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    .line 63
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 64
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return p0

    :catchall_f
    move-exception p0

    .line 62
    :try_start_10
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw p0
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 4

    .line 120
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    .line 121
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 122
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-object p0

    :catchall_f
    move-exception p0

    .line 120
    :try_start_10
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw p0
.end method

.method public reboot()V
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->reboot()V

    return-void
.end method

.method public registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 3

    .line 55
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    .line 56
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 57
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_e
    move-exception p0

    .line 55
    :try_start_f
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw p0
.end method

.method public setModelParameter(III)V
    .registers 5

    .line 113
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    .line 114
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->setModelParameter(III)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 115
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_e
    move-exception p0

    .line 113
    :try_start_f
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw p0
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 6

    .line 92
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    .line 93
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 94
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_e
    move-exception p0

    .line 92
    :try_start_f
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw p0
.end method

.method public stopRecognition(I)V
    .registers 3

    .line 84
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    .line 85
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 86
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_e
    move-exception p0

    .line 84
    :try_start_f
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw p0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    .line 132
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public unloadSoundModel(I)V
    .registers 3

    .line 77
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V

    .line 78
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unloadSoundModel(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 79
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V

    return-void

    :catchall_e
    move-exception p0

    .line 77
    :try_start_f
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw p0
.end method
