.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.source "SoundTriggerMiddlewarePermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;
    }
.end annotation


# instance fields
.field public final mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;

.field public mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmOriginatorIdentity(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;)Landroid/media/permission/Identity;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mOriginatorIdentity:Landroid/media/permission/Identity;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .registers 4

    .line 209
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 211
    new-instance p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p3, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper-IA;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;

    return-void
.end method


# virtual methods
.method public attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    return-object p0
.end method

.method public detach()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V

    return-void
.end method

.method public final enforcePermissions()V
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-static {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->-$$Nest$menforcePermissionsForPreflight(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;Landroid/media/permission/Identity;)V

    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 260
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V

    return-void
.end method

.method public getCallbackWrapper()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;

    return-object p0
.end method

.method public getModelParameter(II)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 273
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result p0

    return p0
.end method

.method public loadModel(Landroid/media/soundtrigger/SoundModel;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 226
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result p0

    return p0
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 232
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result p0

    return p0
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 281
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0

    return-object p0
.end method

.method public setModelParameter(III)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 267
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V

    return-void
.end method

.method public startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 247
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V

    return-void
.end method

.method public stopRecognition(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 295
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unloadModel(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V

    return-void
.end method
