.class public final Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
.super Landroid/os/Handler;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BroadcastHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V
    .registers 4

    .line 271
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 272
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 277
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_24

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_c

    goto :goto_73

    .line 294
    :cond_c
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object p1, p1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 295
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 296
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_73

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 279
    :cond_24
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz p1, :cond_47

    const-string p1, "BroadcastQueue"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received BROADCAST_INTENT_MSG ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_47
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object p1, p1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getAppLaunchFlag()Z

    move-result p1

    if-nez p1, :cond_6e

    .line 284
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object p1, p1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_56
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 285
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->-$$Nest$mclearDelayedParallelQueueLocked(Lcom/android/server/am/BroadcastQueue;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->-$$Nest$mclearDelayedOrderedQueueLocked(Lcom/android/server/am/BroadcastQueue;)V

    .line 287
    monitor-exit p1
    :try_end_64
    .catchall {:try_start_56 .. :try_end_64} :catchall_68

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6e

    :catchall_68
    move-exception p0

    :try_start_69
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 291
    :cond_6e
    :goto_6e
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-static {p0, v1}, Lcom/android/server/am/BroadcastQueue;->-$$Nest$mprocessNextBroadcast(Lcom/android/server/am/BroadcastQueue;Z)V

    :goto_73
    return-void
.end method
