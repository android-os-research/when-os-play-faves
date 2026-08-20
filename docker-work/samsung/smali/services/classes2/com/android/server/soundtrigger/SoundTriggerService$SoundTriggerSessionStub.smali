.class public Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
.super Lcom/android/internal/app/ISoundTriggerSession$Stub;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundTriggerSessionStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;
    }
.end annotation


# instance fields
.field public final mCallbacks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/util/UUID;",
            "Landroid/hardware/soundtrigger/IRecognitionStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mCallbacksLock:Ljava/lang/Object;

.field public final mClient:Landroid/os/IBinder;

.field public final mLoadedModels:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/util/UUID;",
            "Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;",
            ">;"
        }
    .end annotation
.end field

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public static synthetic $r8$lambda$Z33tjEItKKPp9qvqIj8NB9Iwmn0(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/util/TreeMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacksLock(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/IBinder;)V
    .registers 4

    .line 271
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/internal/app/ISoundTriggerSession$Stub;-><init>()V

    .line 267
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 268
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 269
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 272
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$mnewSoundTriggerHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 273
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mClient:Landroid/os/IBinder;

    .line 274
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 276
    :try_start_28
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)V

    const/4 p0, 0x0

    invoke-interface {p2, p1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_3a

    :catch_32
    move-exception p0

    const-string p1, "SoundTriggerService"

    const-string p2, "Failed to register death listener."

    .line 280
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3a
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    .line 277
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->clientDied()V

    return-void
.end method


# virtual methods
.method public final clientDied()V
    .registers 4

    const-string v0, "SoundTriggerService"

    const-string v1, "Client died, cleaning up session."

    .line 859
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 862
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->detach()V

    return-void
.end method

.method public deleteSoundModel(Landroid/os/ParcelUuid;)V
    .registers 7

    const-string v0, "deleteSoundModel(): id = "

    .line 388
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    :try_start_6
    const-string v2, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 389
    invoke-virtual {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v2, "SoundTriggerService"

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 398
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 401
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 403
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->deleteGenericSoundModel(Ljava/util/UUID;)Z
    :try_end_5d
    .catchall {:try_start_6 .. :try_end_5d} :catchall_63

    if-eqz v1, :cond_62

    .line 404
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_62
    return-void

    :catchall_63
    move-exception p0

    if-eqz v1, :cond_6e

    .line 388
    :try_start_66
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6e
    :goto_6e
    throw p0
.end method

.method public final enforceCallingPermission(Ljava/lang/String;)V
    .registers 5

    .line 866
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-static {v0, v1, p1}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 868
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have permission "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final enforceDetectionPermissions(Landroid/content/ComponentName;)V
    .registers 4

    .line 875
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 876
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    .line 877
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    return-void

    .line 879
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have permission "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getModelState(Landroid/os/ParcelUuid;)I
    .registers 8

    .line 705
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 706
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const/high16 v1, -0x80000000

    const-string v2, "SoundTriggerService"

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModelState(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getModelState(): id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 715
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_e9

    .line 716
    :try_start_45
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v3, :cond_92

    const-string p0, "SoundTriggerService"

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not loaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getModelState(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 723
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_45 .. :try_end_8c} :catchall_e6

    if-eqz v0, :cond_91

    .line 740
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_91
    return v1

    .line 725
    :cond_92
    :try_start_92
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result p1

    const/4 v4, 0x1

    if-eq p1, v4, :cond_d5

    const-string p0, "SoundTriggerService"

    .line 731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported model type, "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getModelState(): Unsupported model type, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    goto :goto_df

    .line 727
    :cond_d5
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getGenericModelState(Ljava/util/UUID;)I

    move-result v1

    .line 738
    :goto_df
    monitor-exit v2
    :try_end_e0
    .catchall {:try_start_92 .. :try_end_e0} :catchall_e6

    if-eqz v0, :cond_e5

    .line 740
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e5
    return v1

    :catchall_e6
    move-exception p0

    .line 739
    :try_start_e7
    monitor-exit v2
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    :try_start_e8
    throw p0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e9

    :catchall_e9
    move-exception p0

    if-eqz v0, :cond_f4

    .line 705
    :try_start_ec
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f0

    goto :goto_f4

    :catchall_f0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f4
    :goto_f4
    throw p0
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 7

    .line 746
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 747
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v1, "SoundTriggerService"

    const-string v2, "getModuleProperties()"

    .line 749
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_44

    .line 753
    :try_start_17
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    .line 754
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getModuleProperties(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 756
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_41

    if-eqz v0, :cond_40

    .line 758
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_40
    return-object p0

    :catchall_41
    move-exception p0

    .line 757
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p0

    if-eqz v0, :cond_4f

    .line 746
    :try_start_47
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    throw p0
.end method

.method public getParameter(Landroid/os/ParcelUuid;I)I
    .registers 8
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 799
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 800
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v1, "SoundTriggerService"

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParameter(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParameter(): id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", param="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 810
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_b6

    .line 811
    :try_start_53
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-eqz v2, :cond_72

    .line 821
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getParameter(Ljava/util/UUID;I)I

    move-result p0

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_53 .. :try_end_6c} :catchall_b3

    if-eqz v0, :cond_71

    .line 823
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_71
    return p0

    :cond_72
    :try_start_72
    const-string p0, "SoundTriggerService"

    .line 813
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not loaded"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParameter(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 818
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sound model is not loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_b3
    move-exception p0

    .line 822
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_72 .. :try_end_b5} :catchall_b3

    :try_start_b5
    throw p0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception p0

    if-eqz v0, :cond_c1

    .line 799
    :try_start_b9
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_bd

    goto :goto_c1

    :catchall_bd
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c1
    :goto_c1
    throw p0
.end method

.method public getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .registers 7

    const-string v0, "getSoundModel(): id = "

    .line 356
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    :try_start_6
    const-string v2, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 357
    invoke-virtual {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v2, "SoundTriggerService"

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 365
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object p0

    .line 366
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object p0
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_4e

    if-eqz v1, :cond_4d

    .line 368
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4d
    return-object p0

    :catchall_4e
    move-exception p0

    if-eqz v1, :cond_59

    .line 356
    :try_start_51
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    throw p0
.end method

.method public isRecognitionActive(Landroid/os/ParcelUuid;)Z
    .registers 6

    .line 691
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 692
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_36

    .line 694
    :try_start_c
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v2, :cond_22

    const/4 p0, 0x0

    .line 696
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_33

    if-eqz v0, :cond_21

    .line 700
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_21
    return p0

    .line 698
    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_33

    .line 699
    :try_start_23
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionRequested(Ljava/util/UUID;)Z

    move-result p0
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_36

    if-eqz v0, :cond_32

    .line 700
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_32
    return p0

    :catchall_33
    move-exception p0

    .line 698
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    if-eqz v0, :cond_41

    .line 691
    :try_start_39
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    throw p0
.end method

.method public loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I
    .registers 7

    .line 409
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 410
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_97

    .line 411
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v1

    if-nez v1, :cond_13

    goto/16 :goto_97

    :cond_13
    const-string v1, "SoundTriggerService"

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadGenericSoundModel(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadGenericSoundModel(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 426
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_55
    .catchall {:try_start_4 .. :try_end_55} :catchall_b4

    .line 427
    :try_start_55
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-eqz v2, :cond_83

    .line 431
    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 432
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 433
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_75
    .catchall {:try_start_55 .. :try_end_75} :catchall_94

    .line 434
    :try_start_75
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    monitor-exit v2

    goto :goto_83

    :catchall_80
    move-exception p0

    monitor-exit v2
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_80

    :try_start_82
    throw p0

    .line 437
    :cond_83
    :goto_83
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_82 .. :try_end_8d} :catchall_94

    const/4 p0, 0x0

    if-eqz v0, :cond_93

    .line 440
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_93
    return p0

    :catchall_94
    move-exception p0

    .line 438
    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw p0

    :cond_97
    :goto_97
    const-string p0, "SoundTriggerService"

    const-string p1, "Invalid sound model"

    .line 412
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v1, "loadGenericSoundModel(): Invalid sound model"

    invoke-direct {p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_ac
    .catchall {:try_start_96 .. :try_end_ac} :catchall_b4

    const/high16 p0, -0x80000000

    if-eqz v0, :cond_b3

    .line 440
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_b3
    return p0

    :catchall_b4
    move-exception p0

    if-eqz v0, :cond_bf

    .line 409
    :try_start_b7
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_bb

    goto :goto_bf

    :catchall_bb
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_bf
    :goto_bf
    throw p0
.end method

.method public loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 8

    .line 445
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 446
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const/high16 v1, -0x80000000

    if-eqz p1, :cond_ca

    .line 447
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_15

    goto/16 :goto_ca

    .line 455
    :cond_15
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    if-eqz v2, :cond_af

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    goto/16 :goto_af

    :cond_25
    const-string v1, "SoundTriggerService"

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadKeyphraseSoundModel(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadKeyphraseSoundModel(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 472
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_67
    .catchall {:try_start_4 .. :try_end_67} :catchall_e5

    .line 473
    :try_start_67
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_9c

    .line 477
    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 478
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 479
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v4

    .line 478
    invoke-virtual {v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    .line 480
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8e
    .catchall {:try_start_67 .. :try_end_8e} :catchall_ac

    .line 481
    :try_start_8e
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    monitor-exit v2

    goto :goto_9c

    :catchall_99
    move-exception p0

    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_8e .. :try_end_9b} :catchall_99

    :try_start_9b
    throw p0

    .line 484
    :cond_9c
    :goto_9c
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_9b .. :try_end_a6} :catchall_ac

    if-eqz v0, :cond_ab

    .line 487
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_ab
    return v3

    :catchall_ac
    move-exception p0

    .line 485
    :try_start_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw p0

    :cond_af
    :goto_af
    const-string p0, "SoundTriggerService"

    const-string p1, "Only one keyphrase per model is currently supported."

    .line 456
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v2, "loadKeyphraseSoundModel(): Only one keyphrase per model is currently supported."

    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_c4
    .catchall {:try_start_ae .. :try_end_c4} :catchall_e5

    if-eqz v0, :cond_c9

    .line 487
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_c9
    return v1

    :cond_ca
    :goto_ca
    :try_start_ca
    const-string p0, "SoundTriggerService"

    const-string p1, "Invalid sound model"

    .line 448
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v2, "loadKeyphraseSoundModel(): Invalid sound model"

    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_df
    .catchall {:try_start_ca .. :try_end_df} :catchall_e5

    if-eqz v0, :cond_e4

    .line 487
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e4
    return v1

    :catchall_e5
    move-exception p0

    if-eqz v0, :cond_f0

    .line 445
    :try_start_e8
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_f0

    :catchall_ec
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f0
    :goto_f0
    throw p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 292
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_11

    const-string p1, "SoundTriggerService"

    const-string p2, "SoundTriggerService Crash"

    .line 293
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    :cond_11
    throw p0
.end method

.method public queryParameter(Landroid/os/ParcelUuid;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 8
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 830
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 831
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v1, "SoundTriggerService"

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryParameter(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryParameter(): id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", param="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 841
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_55
    .catchall {:try_start_4 .. :try_end_55} :catchall_b8

    .line 842
    :try_start_55
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v2, :cond_a4

    const-string p0, "SoundTriggerService"

    .line 844
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not loaded"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryParameter(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    const/4 p0, 0x0

    .line 850
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_55 .. :try_end_9e} :catchall_b5

    if-eqz v0, :cond_a3

    .line 855
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_a3
    return-object p0

    .line 853
    :cond_a4
    :try_start_a4
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->queryParameter(Ljava/util/UUID;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0

    monitor-exit v1
    :try_end_af
    .catchall {:try_start_a4 .. :try_end_af} :catchall_b5

    if-eqz v0, :cond_b4

    .line 855
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_b4
    return-object p0

    :catchall_b5
    move-exception p0

    .line 854
    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw p0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception p0

    if-eqz v0, :cond_c3

    .line 830
    :try_start_bb
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf

    goto :goto_c3

    :catchall_bf
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c3
    :goto_c3
    throw p0
.end method

.method public setParameter(Landroid/os/ParcelUuid;II)I
    .registers 9
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 764
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 765
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v1, "SoundTriggerService"

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParameter(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParameter(): id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", param="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 777
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_65
    .catchall {:try_start_4 .. :try_end_65} :catchall_d2

    .line 778
    :try_start_65
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v2, :cond_be

    const-string p2, "SoundTriggerService"

    .line 780
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not loaded. Loaded models: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 781
    invoke-virtual {p0}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 780
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setParameter(): "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 786
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_65 .. :try_end_b8} :catchall_cf

    if-eqz v0, :cond_bd

    .line 792
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_bd
    return p0

    .line 789
    :cond_be
    :try_start_be
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->setParameter(Ljava/util/UUID;II)I

    move-result p0

    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_be .. :try_end_c9} :catchall_cf

    if-eqz v0, :cond_ce

    .line 792
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_ce
    return p0

    :catchall_cf
    move-exception p0

    .line 791
    :try_start_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    :try_start_d1
    throw p0
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d2

    :catchall_d2
    move-exception p0

    if-eqz v0, :cond_dd

    .line 764
    :try_start_d5
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_d9

    goto :goto_dd

    :catchall_d9
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_dd
    :goto_dd
    throw p0
.end method

.method public startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .registers 16

    const-string/jumbo v0, "startRecognition(): Uuid : "

    const-string v1, "SoundTriggerService"

    .line 302
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v2

    :try_start_9
    const-string v3, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 303
    invoke-virtual {p0, v3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    if-eqz p4, :cond_15

    const-string v3, "android.permission.SOUND_TRIGGER_RUN_IN_BATTERY_SAVER"

    .line 305
    invoke-virtual {p0, v3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 309
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v7

    if-nez v7, :cond_82

    .line 317
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Null model in database for id: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "startRecognition(): Null model in database for id: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_7a
    .catchall {:try_start_9 .. :try_end_7a} :catchall_a4

    const/high16 p0, -0x80000000

    if-eqz v2, :cond_81

    .line 331
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_81
    return p0

    .line 325
    :cond_82
    :try_start_82
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    move-object v8, p2

    move-object v9, p3

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result p2

    if-nez p2, :cond_9e

    .line 328
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V
    :try_end_9e
    .catchall {:try_start_82 .. :try_end_9e} :catchall_a4

    :cond_9e
    if-eqz v2, :cond_a3

    .line 331
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_a3
    return p2

    :catchall_a4
    move-exception p0

    if-eqz v2, :cond_af

    .line 302
    :try_start_a7
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_af

    :catchall_ab
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_af
    :goto_af
    throw p0
.end method

.method public startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 16

    .line 493
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 494
    :try_start_4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 498
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, p3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceDetectionPermissions(Landroid/content/ComponentName;)V

    const-string v1, "SoundTriggerService"

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecognition(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRecognitionForService(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 509
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;

    .line 510
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 511
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    move-object v4, v1

    move-object v5, p0

    move-object v7, p2

    move-object v8, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 513
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p2}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_63
    .catchall {:try_start_4 .. :try_end_63} :catchall_192

    .line 514
    :try_start_63
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v2, -0x80000000

    if-nez p3, :cond_b3

    const-string p0, "SoundTriggerService"

    .line 516
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " is not loaded"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRecognitionForService():"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 521
    monitor-exit p2
    :try_end_ad
    .catchall {:try_start_63 .. :try_end_ad} :catchall_18f

    if-eqz v0, :cond_b2

    .line 566
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_b2
    return v2

    .line 524
    :cond_b3
    :try_start_b3
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_18f

    .line 525
    :try_start_b6
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 526
    monitor-exit v3
    :try_end_c3
    .catchall {:try_start_b6 .. :try_end_c3} :catchall_18c

    if-eqz v4, :cond_105

    :try_start_c5
    const-string p0, "SoundTriggerService"

    .line 528
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " is already running"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRecognitionForService():"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already running"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 534
    monitor-exit p2
    :try_end_ff
    .catchall {:try_start_c5 .. :try_end_ff} :catchall_18f

    if-eqz v0, :cond_104

    .line 566
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_104
    return v2

    .line 537
    :cond_105
    :try_start_105
    invoke-virtual {p3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_129

    const-string p0, "SoundTriggerService"

    const-string p1, "Unknown model type"

    .line 543
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo p3, "startRecognitionForService(): Unknown model type"

    invoke-direct {p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 548
    monitor-exit p2
    :try_end_123
    .catchall {:try_start_105 .. :try_end_123} :catchall_18f

    if-eqz v0, :cond_128

    .line 566
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_128
    return v2

    .line 539
    :cond_129
    :try_start_129
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v5

    move-object v6, p3

    check-cast v6, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    const/4 v9, 0x0

    move-object v7, v1

    move-object v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result p3

    if-eqz p3, :cond_167

    const-string p0, "SoundTriggerService"

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to start model: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo p4, "startRecognitionForService(): Failed to start model:"

    invoke-direct {p1, p4}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 557
    monitor-exit p2
    :try_end_161
    .catchall {:try_start_129 .. :try_end_161} :catchall_18f

    if-eqz v0, :cond_166

    .line 566
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_166
    return p3

    .line 559
    :cond_167
    :try_start_167
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_16a
    .catchall {:try_start_167 .. :try_end_16a} :catchall_18f

    .line 560
    :try_start_16a
    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p4, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    monitor-exit p3
    :try_end_174
    .catchall {:try_start_16a .. :try_end_174} :catchall_189

    .line 563
    :try_start_174
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V

    .line 564
    monitor-exit p2
    :try_end_182
    .catchall {:try_start_174 .. :try_end_182} :catchall_18f

    const/4 p0, 0x0

    if-eqz v0, :cond_188

    .line 566
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_188
    return p0

    :catchall_189
    move-exception p0

    .line 561
    :try_start_18a
    monitor-exit p3
    :try_end_18b
    .catchall {:try_start_18a .. :try_end_18b} :catchall_189

    :try_start_18b
    throw p0
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_18f

    :catchall_18c
    move-exception p0

    .line 526
    :try_start_18d
    monitor-exit v3
    :try_end_18e
    .catchall {:try_start_18d .. :try_end_18e} :catchall_18c

    :try_start_18e
    throw p0

    :catchall_18f
    move-exception p0

    .line 564
    monitor-exit p2
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_18f

    :try_start_191
    throw p0
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_192

    :catchall_192
    move-exception p0

    if-eqz v0, :cond_19d

    .line 493
    :try_start_195
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_198
    .catchall {:try_start_195 .. :try_end_198} :catchall_199

    goto :goto_19d

    :catchall_199
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19d
    :goto_19d
    throw p0
.end method

.method public stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 8

    const-string/jumbo v0, "stopRecognition(): Uuid : "

    .line 336
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    :try_start_7
    const-string v2, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 337
    invoke-virtual {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v2, "SoundTriggerService"

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p2

    if-nez p2, :cond_54

    .line 348
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V
    :try_end_54
    .catchall {:try_start_7 .. :try_end_54} :catchall_5a

    :cond_54
    if-eqz v1, :cond_59

    .line 351
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_59
    return p2

    :catchall_5a
    move-exception p0

    if-eqz v1, :cond_65

    .line 336
    :try_start_5d
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_65
    :goto_65
    throw p0
.end method

.method public stopRecognitionForService(Landroid/os/ParcelUuid;)I
    .registers 9

    .line 571
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 572
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v1, "SoundTriggerService"

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopRecognition(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopRecognitionForService(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 580
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_17d

    .line 581
    :try_start_45
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v3, -0x80000000

    if-nez v2, :cond_95

    const-string p0, "SoundTriggerService"

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not loaded"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRecognitionForService(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 589
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_45 .. :try_end_8f} :catchall_17a

    if-eqz v0, :cond_94

    .line 634
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_94
    return v3

    .line 592
    :cond_95
    :try_start_95
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_17a

    .line 593
    :try_start_98
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 594
    monitor-exit v4
    :try_end_a5
    .catchall {:try_start_98 .. :try_end_a5} :catchall_177

    if-nez v5, :cond_e7

    :try_start_a7
    const-string p0, "SoundTriggerService"

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not running"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRecognitionForService(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not running"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 602
    monitor-exit v1
    :try_end_e1
    .catchall {:try_start_a7 .. :try_end_e1} :catchall_17a

    if-eqz v0, :cond_e6

    .line 634
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_e6
    return v3

    .line 605
    :cond_e7
    :try_start_e7
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_10b

    const-string p0, "SoundTriggerService"

    const-string p1, "Unknown model type"

    .line 611
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v2, "stopRecognitionForService(): Unknown model type"

    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 616
    monitor-exit v1
    :try_end_105
    .catchall {:try_start_e7 .. :try_end_105} :catchall_17a

    if-eqz v0, :cond_10a

    .line 634
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_10a
    return v3

    .line 607
    :cond_10b
    :try_start_10b
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 608
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 607
    invoke-virtual {v3, v2, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v2

    if-eqz v2, :cond_152

    const-string p0, "SoundTriggerService"

    .line 620
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop model: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopRecognitionForService(): Failed to stop model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 625
    monitor-exit v1
    :try_end_14c
    .catchall {:try_start_10b .. :try_end_14c} :catchall_17a

    if-eqz v0, :cond_151

    .line 634
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_151
    return v2

    .line 627
    :cond_152
    :try_start_152
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_155
    .catchall {:try_start_152 .. :try_end_155} :catchall_17a

    .line 628
    :try_start_155
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    monitor-exit v2
    :try_end_15f
    .catchall {:try_start_155 .. :try_end_15f} :catchall_174

    .line 631
    :try_start_15f
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 632
    monitor-exit v1
    :try_end_16d
    .catchall {:try_start_15f .. :try_end_16d} :catchall_17a

    const/4 p0, 0x0

    if-eqz v0, :cond_173

    .line 634
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_173
    return p0

    :catchall_174
    move-exception p0

    .line 629
    :try_start_175
    monitor-exit v2
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_174

    :try_start_176
    throw p0
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_17a

    :catchall_177
    move-exception p0

    .line 594
    :try_start_178
    monitor-exit v4
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_177

    :try_start_179
    throw p0

    :catchall_17a
    move-exception p0

    .line 632
    monitor-exit v1
    :try_end_17c
    .catchall {:try_start_179 .. :try_end_17c} :catchall_17a

    :try_start_17c
    throw p0
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17d

    :catchall_17d
    move-exception p0

    if-eqz v0, :cond_188

    .line 571
    :try_start_180
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_183
    .catchall {:try_start_180 .. :try_end_183} :catchall_184

    goto :goto_188

    :catchall_184
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_188
    :goto_188
    throw p0
.end method

.method public unloadSoundModel(Landroid/os/ParcelUuid;)I
    .registers 9

    .line 639
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 640
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v1, "SoundTriggerService"

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unloadSoundModel(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unloadSoundModel(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 648
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_10b

    .line 649
    :try_start_45
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v3, -0x80000000

    if-nez v2, :cond_95

    const-string p0, "SoundTriggerService"

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not loaded"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadSoundModel(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 656
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_45 .. :try_end_8f} :catchall_108

    if-eqz v0, :cond_94

    .line 686
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_94
    return v3

    .line 659
    :cond_95
    :try_start_95
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c7

    const/4 v6, 0x1

    if-eq v4, v6, :cond_bc

    const-string p0, "SoundTriggerService"

    const-string p1, "Unknown model type"

    .line 668
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v2, "unloadSoundModel(): Unknown model type"

    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 673
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_95 .. :try_end_b6} :catchall_108

    if-eqz v0, :cond_bb

    .line 686
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_bb
    return v3

    .line 665
    :cond_bc
    :try_start_bc
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    move-result v2

    goto :goto_d9

    .line 661
    :cond_c7
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 662
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v2

    .line 661
    invoke-virtual {v3, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    move-result v2

    :goto_d9
    if-eqz v2, :cond_f8

    const-string p0, "SoundTriggerService"

    const-string p1, "Failed to unload model"

    .line 676
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v3, "unloadSoundModel(): Failed to unload model"

    invoke-direct {p1, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 681
    monitor-exit v1
    :try_end_f2
    .catchall {:try_start_bc .. :try_end_f2} :catchall_108

    if-eqz v0, :cond_f7

    .line 686
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f7
    return v2

    .line 683
    :cond_f8
    :try_start_f8
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    monitor-exit v1
    :try_end_102
    .catchall {:try_start_f8 .. :try_end_102} :catchall_108

    if-eqz v0, :cond_107

    .line 686
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_107
    return v5

    :catchall_108
    move-exception p0

    .line 685
    :try_start_109
    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    :try_start_10a
    throw p0
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_10b

    :catchall_10b
    move-exception p0

    if-eqz v0, :cond_116

    .line 639
    :try_start_10e
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_112

    goto :goto_116

    :catchall_112
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_116
    :goto_116
    throw p0
.end method

.method public updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    .registers 7

    const-string/jumbo v0, "updateSoundModel(): model = "

    .line 373
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    :try_start_7
    const-string v2, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 374
    invoke-virtual {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v2, "SoundTriggerService"

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 382
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Z
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_4a

    if-eqz v1, :cond_49

    .line 383
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_49
    return-void

    :catchall_4a
    move-exception p0

    if-eqz v1, :cond_55

    .line 373
    :try_start_4d
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    throw p0
.end method
