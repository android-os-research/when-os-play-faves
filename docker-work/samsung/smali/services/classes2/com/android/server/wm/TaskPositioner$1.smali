.class public Lcom/android/server/wm/TaskPositioner$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/TaskPositioner;->getSaveFreeformBoundsCallback()Landroid/os/IRemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;)V
    .registers 2

    .line 681
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$1;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "bundle_task_removed"

    .line 684
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 686
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner$1;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {p1}, Lcom/android/server/wm/TaskPositioner;->-$$Nest$fgetmService(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 687
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner$1;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->saveFreeformBoundsIfNeeded()V

    .line 688
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_26

    :catchall_20
    move-exception p0

    :try_start_21
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_26
    :goto_26
    return-void
.end method
