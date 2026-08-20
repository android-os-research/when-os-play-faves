.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;
.super Ljava/lang/Object;
.source "SoundTriggerHw3Compat.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;
    }
.end annotation


# instance fields
.field public final mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

.field public final mRebootRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 42
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mRebootRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 1

    return-void
.end method

.method public flushCallbacks()V
    .registers 1

    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 2

    .line 127
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->forceRecognitionEvent(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 129
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getModelParameter(II)I
    .registers 3

    .line 145
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1, p2}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->getParameter(II)I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 147
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .registers 1

    .line 48
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 50
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 163
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 165
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 3

    .line 172
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 174
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 4

    .line 80
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;

    invoke-direct {v0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    invoke-interface {p0, p1, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I

    move-result p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_c

    return p0

    :catch_c
    move-exception p0

    .line 84
    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_18

    .line 85
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p0, p2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p0

    .line 87
    :cond_18
    throw p0

    :catch_19
    move-exception p0

    .line 82
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 4

    .line 66
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;

    invoke-direct {v0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    invoke-interface {p0, p1, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I

    move-result p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_c

    return p0

    :catch_c
    move-exception p0

    .line 70
    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_18

    .line 71
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p0, p2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p0

    .line 73
    :cond_18
    throw p0

    :catch_19
    move-exception p0

    .line 68
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 3

    .line 136
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1, p2}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 138
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public reboot()V
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mRebootRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 3

    .line 57
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;

    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    invoke-interface {p0, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->registerGlobalCallback(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 59
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setModelParameter(III)V
    .registers 4

    .line 154
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->setParameter(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 156
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 5

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 108
    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_12

    .line 109
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p0, p2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p0

    .line 111
    :cond_12
    throw p0

    :catch_13
    move-exception p0

    .line 106
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public stopRecognition(I)V
    .registers 2

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->stopRecognition(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 120
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 3

    .line 180
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public unloadSoundModel(I)V
    .registers 2

    .line 94
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->unloadSoundModel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 96
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
