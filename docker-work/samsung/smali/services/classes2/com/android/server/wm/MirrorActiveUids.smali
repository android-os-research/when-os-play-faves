.class public Lcom/android/server/wm/MirrorActiveUids;
.super Ljava/lang/Object;
.source "MirrorActiveUids.java"


# instance fields
.field public final mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

.field public final mUidStates:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 82
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "NumNonAppVisibleWindowUidMap:["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1d
    if-ltz p2, :cond_4a

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    .line 85
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1d

    :cond_4a
    const-string p2, "]"

    .line 87
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .line 88
    monitor-exit p0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUidState(I)I
    .registers 4

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasNonAppVisibleWindow(I)Z
    .registers 3

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-lez p1, :cond_b

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

.method public declared-synchronized onNonAppSurfaceVisibilityChanged(IZ)V
    .registers 5

    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_23

    .line 61
    iget-object p1, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    if-eqz p2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, -0x1

    :goto_14
    add-int/2addr p1, v1

    if-lez p1, :cond_1d

    .line 63
    iget-object p2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_2a

    .line 65
    :cond_1d
    iget-object p1, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_2a

    :cond_23
    if-eqz p2, :cond_2a

    .line 68
    iget-object p2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 70
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUidActive(II)V
    .registers 4

    monitor-enter p0

    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 40
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUidInactive(I)V
    .registers 3

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 44
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUidProcStateChanged(II)V
    .registers 4

    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_e

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 51
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
