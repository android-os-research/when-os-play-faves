.class public final Lcom/android/server/am/PendingStartActivityUids;
.super Ljava/lang/Object;
.source "PendingStartActivityUids.java"


# static fields
.field public static final INVALID_TIME:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mPendingUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    .line 50
    iput-object p1, p0, Lcom/android/server/am/PendingStartActivityUids;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(II)Z
    .registers 7

    monitor-enter p0

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    .line 56
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_25

    const/4 p1, 0x1

    .line 57
    monitor-exit p0

    return p1

    :cond_22
    const/4 p1, 0x0

    .line 59
    monitor-exit p0

    return p1

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(IJ)V
    .registers 9

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_5b

    .line 65
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x32

    add-long/2addr v1, v3

    cmp-long p2, p2, v1

    if-gez p2, :cond_24

    const-string p1, "ActivityManager"

    const-string/jumbo p2, "updateOomAdj start time is before than pendingPid added, don\'t delete it"

    .line 67
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_5d

    .line 70
    monitor-exit p0

    return-void

    .line 72
    :cond_24
    :try_start_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x3e8

    cmp-long v0, p2, v0

    if-ltz v0, :cond_56

    const-string v0, "ActivityManager"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PendingStartActivityUids startActivity to updateOomAdj delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms, uid:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_56
    iget-object p2, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_5b
    .catchall {:try_start_24 .. :try_end_5b} :catchall_5d

    .line 80
    :cond_5b
    monitor-exit p0

    return-void

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPendingTopPidTime(II)J
    .registers 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 91
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_1f

    .line 92
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_1f

    .line 93
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    .line 95
    :cond_1f
    monitor-exit p0

    return-wide v0

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isPendingTopUid(I)Z
    .registers 3

    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
