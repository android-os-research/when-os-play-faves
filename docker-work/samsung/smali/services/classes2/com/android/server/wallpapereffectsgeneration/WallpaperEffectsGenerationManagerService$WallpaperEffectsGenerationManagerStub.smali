.class public Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;
.super Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;
.source "WallpaperEffectsGenerationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperEffectsGenerationManagerStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;


# direct methods
.method public static synthetic $r8$lambda$IVqvLHdMR4CZLaBbCrjPzFHJ47c(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->lambda$returnCinematicEffectResponse$1(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$knv3_RJEB4fPLlk_TXSB-qQE7H0(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->lambda$generateCinematicEffect$0(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-direct {p0}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;-><init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)V

    return-void
.end method

.method public static synthetic lambda$generateCinematicEffect$0(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;)V
    .registers 3

    .line 112
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->onGenerateCinematicEffectLocked(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V

    return-void
.end method

.method public static synthetic lambda$returnCinematicEffectResponse$1(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;)V
    .registers 2

    .line 130
    invoke-virtual {p1, p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->onReturnCinematicEffectResponseLocked(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    return-void
.end method


# virtual methods
.method public generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .registers 6

    .line 111
    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V

    const-string v1, "generateCinematicEffect"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->runForUser(Ljava/lang/String;ZLjava/util/function/Consumer;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 114
    :try_start_e
    new-instance p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object p0

    .line 114
    invoke-interface {p2, p0}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1f} :catch_1f

    :catch_1f
    :cond_1f
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 137
    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;-><init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 139
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 4

    .line 129
    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    const-string/jumbo p1, "returnCinematicResponse"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->runForUser(Ljava/lang/String;ZLjava/util/function/Consumer;)Z

    return-void
.end method

.method public final runForUser(Ljava/lang/String;ZLjava/util/function/Consumer;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;",
            ">;)Z"
        }
    .end annotation

    .line 155
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 156
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_84

    .line 167
    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_WALLPAPER_EFFECTS_GENERATION"

    .line 168
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 170
    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->access$000(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v1

    if-nez v1, :cond_84

    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-static {v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->-$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_84

    .line 172
    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: Cannot call "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_84
    :goto_84
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 182
    :try_start_8d
    iget-object v5, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->access$100(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_de

    .line 183
    :try_start_94
    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 184
    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->access$200(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    if-eqz p0, :cond_d6

    if-nez p2, :cond_d2

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->isCallingUidAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_a7

    goto :goto_d2

    .line 191
    :cond_a7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: cannot call "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] doesn\'t match service implementation"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-static {}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d2
    :goto_d2
    const/4 v4, 0x1

    .line 197
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 199
    :cond_d6
    monitor-exit v5
    :try_end_d7
    .catchall {:try_start_94 .. :try_end_d7} :catchall_db

    .line 201
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_db
    move-exception p0

    .line 199
    :try_start_dc
    monitor-exit v5
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    :try_start_dd
    throw p0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_de

    :catchall_de
    move-exception p0

    .line 201
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    throw p0
.end method
