.class public final Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1708
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1709
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public getService()Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    .line 1739
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public onStart()V
    .registers 3

    .line 1714
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v1, "activity_task"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1715
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mstart(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 1732
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1733
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 1734
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->onCleanupUser(I)V

    .line 1735
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1720
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1721
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->onUserUnlocked(I)V

    .line 1723
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SM_SUPPORT_RISK_CONTROL:Z

    if-eqz p1, :cond_20

    .line 1724
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->onUserUnlocked()V

    .line 1727
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
