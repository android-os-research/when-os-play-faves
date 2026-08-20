.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareLogging.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleLogging"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;
    }
.end annotation


# instance fields
.field public final mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;

.field public mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmOriginatorIdentity(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;)Landroid/media/permission/Identity;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .registers 4

    .line 123
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging-IA;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;

    .line 125
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    return-void
.end method

.method public detach()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "detach"

    const/4 v1, 0x0

    .line 246
    :try_start_3
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V

    new-array v2, v1, [Ljava/lang/Object;

    .line 247
    invoke-virtual {p0, v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 249
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 250
    throw v2
.end method

.method public forceRecognitionEvent(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "forceRecognitionEvent"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 197
    :try_start_4
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 201
    throw v3
.end method

.method public getCallbackWrapper()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;

    return-object p0
.end method

.method public getModelParameter(II)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "getModelParameter"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 220
    :try_start_5
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v4, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result v4

    .line 221
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    return v4

    :catch_21
    move-exception v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 225
    throw v4
.end method

.method public loadModel(Landroid/media/soundtrigger/SoundModel;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "loadModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 139
    :try_start_4
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result v3

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    return v3

    :catch_16
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 143
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 144
    throw v3
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "loadPhraseModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 151
    :try_start_4
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result v3

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    return v3

    :catch_16
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 155
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 156
    throw v3
.end method

.method public final varargs logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .registers 10

    .line 266
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->-$$Nest$mlogExceptionWithObject(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 10

    .line 270
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->-$$Nest$mlogReturnWithObject(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 274
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-static {v0, p0, v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->-$$Nest$mlogVoidReturnWithObject(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "queryModelParameterSupport"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 233
    :try_start_6
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v4, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1e

    return-object v4

    :catch_1e
    move-exception v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 239
    throw v4
.end method

.method public setModelParameter(III)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "setModelParameter"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 209
    :try_start_7
    iget-object v5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v5, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V

    new-array v5, v4, [Ljava/lang/Object;

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0, v0, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception v5

    new-array v4, v4, [Ljava/lang/Object;

    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 213
    throw v5
.end method

.method public startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "startRecognition"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 175
    :try_start_6
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v4, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V

    new-array v4, v3, [Ljava/lang/Object;

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p0, v0, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 179
    throw v4
.end method

.method public stopRecognition(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "stopRecognition"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 186
    :try_start_5
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 190
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 262
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unloadModel(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "unloadModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 163
    :try_start_5
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 167
    throw v3
.end method
