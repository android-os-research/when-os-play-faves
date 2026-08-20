.class public Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "WallpaperEffectsGenerationPerUserService.java"

# interfaces
.implements Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;",
        "Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;",
        ">;",
        "Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QdaSHH3wzA6vLvZGYIc37yLvJTA(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->lambda$onGenerateCinematicEffectLocked$0(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic lambda$onGenerateCinematicEffectLocked$0(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-interface {p1, p0}, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;->onGenerateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V

    return-void
.end method


# virtual methods
.method public final createErrorCinematicEffectResponse(Ljava/lang/String;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
    .registers 3

    .line 203
    new-instance p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object p0

    return-object p0
.end method

.method public final destroyAndRebindRemoteService()V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    if-nez v0, :cond_5

    return-void

    .line 183
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 184
    sget-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_12
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 188
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    if-eqz v0, :cond_34

    .line 190
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 191
    sget-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {v0}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->reconnect()V

    .line 196
    :cond_34
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    if-eqz v0, :cond_43

    .line 197
    invoke-static {v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->createErrorCinematicEffectResponse(Ljava/lang/String;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    :cond_43
    return-void
.end method

.method public final ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    if-nez v0, :cond_38

    .line 236
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 238
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_19

    .line 239
    sget-object p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "ensureRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 p0, 0x0

    return-object p0

    .line 244
    :cond_1b
    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 246
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v6

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    iget-boolean v7, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;ZZ)V

    iput-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 249
    :cond_38
    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    return-object p0
.end method

.method public final invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "]"

    const/4 v1, 0x0

    .line 212
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    if-eqz v2, :cond_17

    invoke-static {v2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmListener(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 214
    iget-object v2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    invoke-static {v2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmListener(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    goto :goto_64

    .line 217
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 218
    sget-object p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cinematic effect listener not found for task["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    invoke-static {v3}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3c} :catch_3f
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3d

    goto :goto_64

    :catchall_3d
    move-exception p1

    goto :goto_67

    .line 223
    :catch_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 224
    sget-object p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error invoking cinematic effect listener for task["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    invoke-static {v3}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_3f .. :try_end_64} :catchall_3d

    .line 228
    :cond_64
    :goto_64
    iput-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    return-void

    :goto_67
    iput-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 229
    throw p1
.end method

.method public isCallingUidAllowed(I)Z
    .registers 2

    .line 148
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceUidLocked()I

    move-result p0

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 65
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_3f

    .line 70
    iget-object p1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v0, "android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-object p0

    .line 71
    :cond_17
    sget-object p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WallpaperEffectsGenerationService from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' does not require permission "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Service does not require permission android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :catch_3f
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onConnectedStateChanged(Z)V
    .registers 3

    if-nez p1, :cond_d

    .line 261
    sget-object p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "remote wallpaper effects generation service disconnected"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    :cond_d
    return-void
.end method

.method public onGenerateCinematicEffectLocked(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->getTaskId()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    if-eqz v1, :cond_2e

    .line 98
    invoke-static {v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 99
    new-instance p1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 p2, 0x3

    invoke-direct {p1, p2, v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    goto :goto_2d

    .line 105
    :cond_20
    new-instance p1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 p2, 0x4

    invoke-direct {p1, p2, v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    :goto_2d
    return-void

    .line 113
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 115
    new-instance v2, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 117
    new-instance p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    invoke-direct {p1, v0, p2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;-><init>(Ljava/lang/String;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V

    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    goto :goto_7a

    .line 120
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 121
    sget-object p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Remote service not found"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_51
    :try_start_51
    invoke-virtual {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->createErrorCinematicEffectResponse(Ljava/lang/String;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object p1

    .line 124
    invoke-interface {p2, p1}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_58} :catch_59

    goto :goto_7a

    .line 127
    :catch_59
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_7a

    .line 128
    sget-object p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to invoke cinematic effect listener for task ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    :goto_7a
    return-void
.end method

.method public onPackageRestartedLocked()V
    .registers 3

    .line 172
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 173
    sget-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onPackageUpdatedLocked()V
    .registers 3

    .line 165
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 166
    sget-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onReturnCinematicEffectResponseLocked(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    return-void
.end method

.method public onServiceDied(Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;)V
    .registers 3

    .line 254
    sget-object p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "remote wallpaper effects generation service died"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 39
    check-cast p1, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->onServiceDied(Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;)V

    return-void
.end method

.method public updateLocked(Z)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 83
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    .line 84
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    return p1
.end method

.method public final updateRemoteServiceLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    if-eqz v0, :cond_a

    .line 154
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 158
    :cond_a
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    if-eqz v0, :cond_19

    .line 159
    invoke-static {v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->-$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->createErrorCinematicEffectResponse(Ljava/lang/String;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    :cond_19
    return-void
.end method
