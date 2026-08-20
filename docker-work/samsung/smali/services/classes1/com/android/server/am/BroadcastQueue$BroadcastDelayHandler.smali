.class public final Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;
.super Landroid/os/Handler;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BroadcastDelayHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V
    .registers 4

    .line 304
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 305
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 310
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x12d

    if-eq p1, v0, :cond_7

    goto :goto_22

    .line 312
    :cond_7
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object p1, p1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 313
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->-$$Nest$mclearDelayedParallelQueueLocked(Lcom/android/server/am/BroadcastQueue;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->-$$Nest$mclearDelayedOrderedQueueLocked(Lcom/android/server/am/BroadcastQueue;)V

    .line 315
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 316
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_22
    return-void

    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit p1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
