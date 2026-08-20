.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
.super Ljava/lang/Object;
.source "SoundTriggerHalEnforcer.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SoundTriggerHalEnforcer"


# instance fields
.field public final mModelStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    return-void
.end method

.method public flushCallbacks()V
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->flushCallbacks()V

    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 3

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->forceRecognitionEvent(I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getModelParameter(II)I
    .registers 4

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getModelParameter(II)I

    move-result p0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .registers 2

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .registers 4

    .line 215
    instance-of v0, p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    if-nez v0, :cond_23

    .line 218
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    const-string v1, "SoundTriggerHalEnforcer"

    if-eqz v0, :cond_1a

    const-string p0, "HAL died"

    .line 220
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p0

    :cond_1a
    const-string v0, "Exception caught from HAL, rebooting HAL"

    .line 223
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 225
    throw p1

    .line 216
    :cond_23
    throw p1
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    .line 196
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 7

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_1f

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer-IA;)V

    invoke-interface {v1, p1, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    .line 100
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v0

    return p1

    :catchall_1c
    move-exception p1

    .line 102
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p1
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 7

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_1f

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer-IA;)V

    invoke-interface {v1, p1, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    .line 86
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v0

    return p1

    :catchall_1c
    move-exception p1

    .line 88
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p1
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 4

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p1

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public reboot()V
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->reboot()V

    return-void
.end method

.method public registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setModelParameter(III)V
    .registers 5

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->setModelParameter(III)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 7

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_18

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 151
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    :try_start_17
    throw p1
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    move-exception p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public stopRecognition(I)V
    .registers 6

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_2a

    .line 132
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->PENDING_STOP:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_27

    .line 134
    :try_start_f
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V

    .line 135
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_17} :catch_2a

    .line 138
    :try_start_17
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_24

    :try_start_26
    throw p1
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_27} :catch_2a

    :catchall_27
    move-exception p1

    .line 133
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p1
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    .line 201
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public unloadSoundModel(I)V
    .registers 4

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unloadSoundModel(I)V

    .line 115
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_16

    .line 118
    :try_start_8
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    :try_start_15
    throw p1
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_16} :catch_16

    :catch_16
    move-exception p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
