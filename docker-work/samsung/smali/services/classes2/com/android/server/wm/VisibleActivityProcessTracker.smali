.class public Lcom/android/server/wm/VisibleActivityProcessTracker;
.super Ljava/lang/Object;
.source "VisibleActivityProcessTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;
    }
.end annotation


# instance fields
.field public final mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mProcMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowProcessController;",
            "Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 35
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "VisibleActivityProcess:["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 107
    :try_start_17
    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1f
    if-ltz v0, :cond_3e

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 110
    :cond_3e
    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_45

    const-string p0, "]"

    .line 111
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_45
    move-exception p0

    .line 110
    :try_start_46
    monitor-exit p2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public hasResumedActivity(I)Z
    .registers 3

    .line 75
    new-instance v0, Lcom/android/server/wm/VisibleActivityProcessTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/VisibleActivityProcessTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->match(ILjava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public hasVisibleActivity(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->match(ILjava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final match(ILjava/util/function/Predicate;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;)Z"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_26

    .line 89
    iget-object v3, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    .line 90
    iget v4, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v4, p1, :cond_23

    if-eqz p2, :cond_21

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 91
    :cond_21
    monitor-exit v0

    return v2

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 94
    :cond_26
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public onActivityResumedWhileVisible(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 66
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    .line 67
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1b

    if-eqz p1, :cond_1a

    .line 68
    iget-boolean v0, p1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    .line 70
    iget-object p0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1a
    return-void

    :catchall_1b
    move-exception p0

    .line 67
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public onAllActivitiesInvisible(Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wm/VisibleActivityProcessTracker;->removeProcess(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 57
    iget-boolean v0, p1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    if-eqz v0, :cond_f

    .line 58
    iget-object p0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method

.method public onAnyActivityVisible(Lcom/android/server/wm/WindowProcessController;)V
    .registers 5

    .line 44
    new-instance v0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;-><init>(Lcom/android/server/wm/VisibleActivityProcessTracker;Lcom/android/server/wm/WindowProcessController;)V

    .line 45
    iget-object v1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 46
    :try_start_8
    iget-object v2, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1d

    .line 48
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->hasResumedActivity()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, v0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    .line 50
    iget-object p0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1c
    return-void

    :catchall_1d
    move-exception p0

    .line 47
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public removeProcess(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 101
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method
