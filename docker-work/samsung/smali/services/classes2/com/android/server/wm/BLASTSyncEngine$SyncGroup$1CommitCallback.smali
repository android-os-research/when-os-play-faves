.class public Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommitCallback"
.end annotation


# instance fields
.field public ran:Z

.field public final synthetic this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

.field public final synthetic val$wcAwaitingCommit:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iput-object p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$wcAwaitingCommit:Landroid/util/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 172
    iput-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->ran:Z

    return-void
.end method


# virtual methods
.method public onCommitted()V
    .registers 5

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 175
    iget-boolean v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->ran:Z

    if-eqz v1, :cond_17

    .line 176
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_4f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 178
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget-object v1, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->ran:Z

    .line 180
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 181
    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$wcAwaitingCommit:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 182
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->onSyncTransactionCommitted(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_32

    .line 184
    :cond_42
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 185
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$wcAwaitingCommit:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 186
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_4f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4f
    move-exception p0

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public run()V
    .registers 5

    const-wide/16 v0, 0x20

    const-string/jumbo v2, "onTransactionCommitTimeout"

    .line 195
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v2, "BLASTSyncEngine"

    const-string v3, "WM sent Transaction to organized, but never received commit callback. Application ANR likely to follow."

    .line 196
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 199
    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->onCommitted()V

    return-void
.end method
