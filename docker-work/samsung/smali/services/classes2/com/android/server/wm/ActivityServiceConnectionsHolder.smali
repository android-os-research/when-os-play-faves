.class public Lcom/android/server/wm/ActivityServiceConnectionsHolder;
.super Ljava/lang/Object;
.source "ActivityServiceConnectionsHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mActivity:Lcom/android/server/wm/ActivityRecord;

.field public mConnections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile mIsDisconnecting:Z

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public static synthetic $r8$lambda$9icb9ywlQNrOTGlJtPRg1rj483M(Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->lambda$disconnectActivityFromServices$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    iput-object p2, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method private synthetic lambda$disconnectActivityFromServices$0()V
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->disconnectActivityFromServices(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    return-void
.end method


# virtual methods
.method public addConnection(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 65
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    if-eqz v1, :cond_35

    .line 67
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v1, :cond_30

    const-string v1, "ActivityTaskManager"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip adding connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to a disconnecting holder of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 73
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    if-nez v1, :cond_40

    .line 74
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    .line 76
    :cond_40
    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4a
    move-exception p0

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public disconnectActivityFromServices()V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    if-eqz v0, :cond_f

    goto :goto_1e

    :cond_f
    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityServiceConnectionsHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "activity="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_26
    move-exception p0

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public forEachConnection(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 107
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2e

    .line 110
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1b
    if-ltz v1, :cond_29

    .line 111
    iget-object v2, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 113
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 108
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_33
    move-exception p0

    .line 113
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getActivityPid()I
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 101
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p0

    goto :goto_1a

    :cond_19
    const/4 p0, -0x1

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_1f
    move-exception p0

    .line 102
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isActivityVisible()Z
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 95
    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v1, :cond_1b

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_21
    move-exception p0

    .line 96
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeConnection(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 83
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    if-nez v1, :cond_11

    .line 84
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 86
    :cond_11
    :try_start_11
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v1, :cond_39

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    if-eqz v1, :cond_39

    const-string v1, "ActivityTaskManager"

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove pending disconnecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_39
    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_11 .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_43
    move-exception p0

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
