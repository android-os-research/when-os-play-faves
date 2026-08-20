.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.source "SoundTriggerMiddlewareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleService"
.end annotation


# instance fields
.field public final mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# direct methods
.method public constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    .registers 2

    .line 138
    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 211
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 212
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 210
    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public forceRecognitionEvent(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 181
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 182
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 180
    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public getModelParameter(II)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 196
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    .line 197
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    .line 195
    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public loadModel(Landroid/media/soundtrigger/SoundModel;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 145
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    .line 146
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    .line 144
    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 152
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    .line 153
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    .line 151
    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 204
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_f

    .line 205
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return-object p0

    :catchall_10
    move-exception p0

    if-eqz v0, :cond_1b

    .line 203
    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method

.method public setModelParameter(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 189
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 190
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 188
    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 167
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 168
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 166
    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public stopRecognition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 174
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 175
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 173
    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public unloadModel(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 159
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 160
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 158
    :try_start_12
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method
