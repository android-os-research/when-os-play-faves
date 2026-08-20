.class public Lcom/android/server/StorageManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field public mStorageManagerService:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 298
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_a

    .line 311
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$mservicesReady(Lcom/android/server/StorageManagerService;)V

    goto :goto_1d

    :cond_a
    const/16 v0, 0x226

    if-ne p1, v0, :cond_14

    .line 313
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$msystemReady(Lcom/android/server/StorageManagerService;)V

    goto :goto_1d

    :cond_14
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1d

    .line 315
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$mbootCompleted(Lcom/android/server/StorageManagerService;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 303
    new-instance v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    const-string/jumbo v1, "mount"

    .line 304
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 305
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$mstart(Lcom/android/server/StorageManagerService;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 352
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$msnapshotAndMonitorLegacyStorageAppOp(Lcom/android/server/StorageManagerService;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 342
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$monCleanupUser(Lcom/android/server/StorageManagerService;I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 347
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$monStopUser(Lcom/android/server/StorageManagerService;I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 321
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 322
    iget-object p2, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {p2, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fputmCurrentUserId(Lcom/android/server/StorageManagerService;I)V

    .line 324
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    .line 325
    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result p2

    const-string v0, "Attempt remount volumes for user: "

    const-string v1, "StorageManagerService"

    if-eqz p2, :cond_39

    .line 326
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object p2, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {p2, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$mmaybeRemountVolumes(Lcom/android/server/StorageManagerService;I)V

    .line 328
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fputmRemountCurrentUserVolumesOnUnlock(Lcom/android/server/StorageManagerService;Z)V

    goto :goto_56

    .line 330
    :cond_39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on unlock"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fputmRemountCurrentUserVolumesOnUnlock(Lcom/android/server/StorageManagerService;Z)V

    :goto_56
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 337
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$monUnlockUser(Lcom/android/server/StorageManagerService;I)V

    return-void
.end method
