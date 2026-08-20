.class public Lcom/android/server/wm/MinimizeContainerServiceBinder;
.super Lcom/android/server/wm/FreeformContainerServiceBinder;
.source "MinimizeContainerServiceBinder.java"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    const-string p1, "com.android.systemui"

    const-string v0, "com.samsung.android.systemui.freeformcontainer.MinimizeContainerService"

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->setServiceComponent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final hasFreeformTask()Z
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 50
    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    const/4 v1, 0x5

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    .line 52
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_21
    move-exception p0

    .line 53
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public okToBind()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->okToBind()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/MinimizeContainerServiceBinder;->hasFreeformTask()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public okToUnbind()Z
    .registers 2

    .line 43
    invoke-super {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->okToUnbind()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/MinimizeContainerServiceBinder;->hasFreeformTask()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method
