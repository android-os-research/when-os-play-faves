.class public Lcom/android/server/wm/RecentTasks$1;
.super Ljava/lang/Object;
.source "RecentTasks.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RecentTasks;


# direct methods
.method public static synthetic $r8$lambda$UMYqjmQzM9i3mYTUNtcgIYnRGFU(Lcom/android/server/wm/RecentTasks$1;IIILjava/lang/Object;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RecentTasks$1;->lambda$onPointerEvent$0(IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RecentTasks;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPointerEvent$0(IIILjava/lang/Object;)V
    .registers 6

    .line 248
    iget-object p4, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {p4}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p4

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p4

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 251
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 252
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->pointWithinAppWindow(II)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 253
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {p1}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 254
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    .line 255
    :goto_32
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V

    .line 257
    :cond_37
    monitor-exit p4
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3c
    move-exception p0

    :try_start_3d
    monitor-exit p4
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 6

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmFreezeTaskListReordering(Lcom/android/server/wm/RecentTasks;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_36

    .line 244
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 247
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RecentTasks$1;III)V

    const/4 p0, 0x0

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 258
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 247
    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_36
    :goto_36
    return-void
.end method
