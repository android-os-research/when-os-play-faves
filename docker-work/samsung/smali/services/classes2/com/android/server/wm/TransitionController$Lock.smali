.class public Lcom/android/server/wm/TransitionController$Lock;
.super Ljava/lang/Object;
.source "TransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Lock"
.end annotation


# instance fields
.field public mTransitionWaiters:I

.field public final synthetic this$0:Lcom/android/server/wm/TransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TransitionController;)V
    .registers 2

    .line 672
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 673
    iput p1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    return-void
.end method


# virtual methods
.method public doNotifyLocked()V
    .registers 2

    .line 703
    monitor-enter p0

    .line 704
    :try_start_1
    iget v0, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    if-lez v0, :cond_8

    .line 705
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 707
    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public runWhenIdle(JLjava/lang/Runnable;)V
    .registers 9

    .line 675
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 676
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 677
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 678
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 680
    :cond_1a
    :try_start_1a
    iget v1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 681
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 685
    :goto_29
    iget-object v2, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 686
    iget-object v3, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_44

    goto :goto_54

    .line 691
    :cond_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_62

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 692
    monitor-enter p0

    .line 694
    :try_start_49
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4c} :catch_50
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4e

    .line 698
    :try_start_4c
    monitor-exit p0

    goto :goto_29

    :catchall_4e
    move-exception p1

    goto :goto_52

    .line 696
    :catch_50
    monitor-exit p0

    return-void

    .line 698
    :goto_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_4e

    throw p1

    .line 687
    :cond_54
    :goto_54
    :try_start_54
    iget p1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 688
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 689
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_62

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_62
    move-exception p0

    .line 691
    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_68
    move-exception p0

    .line 681
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
