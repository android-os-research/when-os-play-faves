.class public Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;
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
    name = "mDestroyTargetAllActivities"
.end annotation


# instance fields
.field public reason:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;

.field public wpcowner:Lcom/android/server/wm/WindowProcessController;


# direct methods
.method public static synthetic $r8$lambda$fsJGpjphqlTeb0nRSsjQqAO7ZIA(Ljava/lang/Object;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->lambda$run$0(Ljava/lang/Object;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    return-void
.end method

.method public static synthetic lambda$run$0(Ljava/lang/Object;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 4

    .line 370
    check-cast p0, Lcom/android/server/wm/RootWindowContainer;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$mdestroyTargetActivity(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 369
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 371
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->wpcowner:Lcom/android/server/wm/WindowProcessController;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->reason:Ljava/lang/String;

    .line 369
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 372
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 373
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 376
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setParam(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 3

    .line 362
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->wpcowner:Lcom/android/server/wm/WindowProcessController;

    .line 363
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->reason:Ljava/lang/String;

    return-void
.end method
