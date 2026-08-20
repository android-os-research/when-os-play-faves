.class public Lcom/android/server/wm/RootWindowContainer$1;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public static synthetic $r8$lambda$vsTvIjNav51bcY5lcy8Id17q7Ls(Ljava/lang/Object;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer$1;->lambda$run$0(Ljava/lang/Object;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Ljava/lang/Object;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 343
    check-cast p0, Lcom/android/server/wm/RootWindowContainer;

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$mdestroyActivity(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 340
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 342
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/RootWindowContainer$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 344
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 342
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 345
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 346
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_3b

    .line 348
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 349
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 351
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3b
    move-exception v1

    .line 348
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 349
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 350
    throw v1

    :catchall_49
    move-exception p0

    .line 351
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
