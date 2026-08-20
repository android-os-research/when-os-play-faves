.class public Lcom/android/server/wm/MultiTaskingController$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiTaskingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingController;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    const-string v1, "displayId"

    .line 205
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_11
    const-string p2, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    .line 207
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    const-string p2, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 208
    :cond_21
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 210
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_37
    return-void

    :catchall_38
    move-exception p0

    :try_start_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
