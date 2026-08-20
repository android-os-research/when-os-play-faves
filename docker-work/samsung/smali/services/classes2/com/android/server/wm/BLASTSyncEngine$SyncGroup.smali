.class public Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BLASTSyncEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncGroup"
.end annotation


# instance fields
.field public final mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

.field public final mOnTimeout:Ljava/lang/Runnable;

.field public mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mReady:Z

.field public final mRootMembers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSyncId:I

.field public mTraceName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/BLASTSyncEngine;


# direct methods
.method public static synthetic $r8$lambda$AfoVkI2D67JIIVUiQ-37yOKUqdM(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->lambda$finishNow$2(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AnFBJgoaDEOhFKnPC6xwH2E2-jc(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->lambda$finishNow$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oV399Hoj-bRnMRgLWF_VXkWmnJQ(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddToSync(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->addToSync(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishNow(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSurfacePlacement(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->onSurfacePlacement()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetReady(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->setReady(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V
    .registers 6

    .line 101
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    .line 97
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 102
    iput p3, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 103
    iput-object p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 104
    new-instance p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOnTimeout:Ljava/lang/Runnable;

    const-wide/16 p1, 0x20

    .line 110
    invoke-static {p1, p2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "SyncGroupReady"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mTraceName:Ljava/lang/String;

    .line 112
    invoke-static {p1, p2, p4, p3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_3b
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$finishNow$1(Ljava/lang/Runnable;)V
    .registers 1

    .line 204
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$finishNow$2(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)V
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {p0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 224
    invoke-static {p1}, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->-$$Nest$fgetmApplySync(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 225
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private synthetic lambda$new$0()V
    .registers 4

    const-string v0, "BLASTSyncEngine"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->onTimeout()V

    .line 108
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_31
    move-exception p0

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public final addToSync(Lcom/android/server/wm/WindowContainer;)V
    .registers 9

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 249
    :cond_9
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x759b6aa3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const-string v1, "SyncGroup %d: Adding to group: %s"

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_2b
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 251
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 252
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {p0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return-void
.end method

.method public final finishNow()V
    .registers 10

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mTraceName:Ljava/lang/String;

    const-wide/16 v1, 0x20

    if-eqz v0, :cond_b

    .line 147
    iget v3, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 152
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v4, v0

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x7993f7df

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v4, 0x1

    aput-object v0, v8, v4

    const-string v0, "SyncGroup %d: Finished!, caller=%s"

    invoke-static {v6, v7, v4, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 159
    iget-object v4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v4, :cond_47

    .line 160
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 162
    :cond_47
    iget-object v4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 163
    invoke-virtual {v5, v0, v3}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    goto :goto_4d

    .line 166
    :cond_5d
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 167
    iget-object v5, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_68
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 168
    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowContainer;->waitForSyncTransactionCommit(Landroid/util/ArraySet;)V

    goto :goto_68

    .line 203
    :cond_78
    new-instance v5, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;

    invoke-direct {v5, p0, v4}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Landroid/util/ArraySet;)V

    .line 204
    new-instance v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;)V

    invoke-virtual {v0, v4, v6}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 205
    iget-object v4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v4}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v4, "onTransactionReady"

    .line 207
    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    iget v5, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-interface {v4, v5, v0}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V

    .line 209
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmActiveSyncs(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmActiveSyncs(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_11e

    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmPendingSyncSets(Lcom/android/server/wm/BLASTSyncEngine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11e

    .line 215
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v0, :cond_e6

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x67224914

    const/4 v2, 0x0

    const-string v4, "PendingStartTransaction found"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_e6
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmPendingSyncSets(Lcom/android/server/wm/BLASTSyncEngine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    .line 217
    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->-$$Nest$fgetmStartSync(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 218
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmActiveSyncs(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_116

    .line 222
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11e

    .line 219
    :cond_116
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Pending Sync Set didn\'t start a sync."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11e
    :goto_11e
    return-void
.end method

.method public getOrphanTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v0, :cond_14

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 127
    :cond_14
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public onCancelSync(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onSurfacePlacement()V
    .registers 10

    .line 131
    iget-boolean v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    if-nez v0, :cond_5

    return-void

    .line 132
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v4, v0

    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x399caf31

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v1

    aput-object v0, v8, v3

    const-string v0, "SyncGroup %d: onSurfacePlacement checking %s"

    invoke-static {v6, v7, v3, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_30
    if-ltz v0, :cond_63

    .line 135
    iget-object v4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 136
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isSyncFinished()Z

    move-result v5

    if-nez v5, :cond_60

    .line 137
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v0, :cond_5f

    iget p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v5, p0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0xdbe7d16

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1

    aput-object p0, v2, v3

    const-string p0, "SyncGroup %d:  Unfinished container: %s"

    invoke-static {v0, v4, v3, p0, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5f
    return-void

    :cond_60
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 142
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    return-void
.end method

.method public final onTimeout()V
    .registers 5

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmActiveSyncs(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 261
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_40

    .line 262
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 263
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isSyncFinished()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unfinished container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BLASTSyncEngine"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 267
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    return-void
.end method

.method public final setReady(Z)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2b

    .line 233
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v2, :cond_44

    iget v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v2, v2

    const/16 v4, 0x8

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x7fa779d5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v0

    aput-object v4, v7, v1

    const-string v0, "SyncGroup %d: Set ready, caller=%s"

    invoke-static {v5, v6, v1, v0, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_44

    .line 237
    :cond_2b
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v2, :cond_44

    iget v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x64bb3305

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v0

    const-string v0, "SyncGroup %d: Set ready"

    invoke-static {v4, v5, v1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :cond_44
    :goto_44
    iput-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    if-nez p1, :cond_49

    return-void

    .line 242
    :cond_49
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {p0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return-void
.end method
