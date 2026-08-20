.class public Lcom/android/server/backup/internal/LifecycleOperationStorage;
.super Ljava/lang/Object;
.source "LifecycleOperationStorage.java"

# interfaces
.implements Lcom/android/server/backup/OperationStorage;


# static fields
.field public static final TAG:Ljava/lang/String; = "LifecycleOperationStorage"


# instance fields
.field public final mOpTokensByPackage:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOperationsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mOperations:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOperationsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation
.end field

.field public final mOperationsLock:Ljava/lang/Object;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    .line 86
    iput p1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mUserId:I

    return-void
.end method


# virtual methods
.method public cancelOperation(IZLjava/util/function/IntConsumer;)V
    .registers 10

    .line 318
    iget-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/Operation;

    const/4 v2, -0x1

    if-eqz v1, :cond_11

    .line 326
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I

    goto :goto_12

    :cond_11
    move v3, v2

    :goto_12
    const/4 v4, 0x1

    if-ne v3, v4, :cond_39

    const-string p3, "LifecycleOperationStorage"

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UserID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Operation already got an ack.Should have been removed from mCurrentOperations."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 334
    iget-object p3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_66

    :cond_39
    if-nez v3, :cond_66

    const-string v3, "LifecycleOperationStorage"

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UserID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] Cancel: token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput v2, v1, Lcom/android/server/backup/internal/Operation;->state:I

    .line 343
    iget p1, v1, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-interface {p3, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 345
    :cond_66
    :goto_66
    iget-object p0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 346
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_76

    if-eqz v1, :cond_75

    .line 349
    iget-object p0, v1, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz p0, :cond_75

    .line 353
    invoke-interface {p0, p2}, Lcom/android/server/backup/BackupRestoreTask;->handleCancel(Z)V

    :cond_75
    return-void

    :catchall_76
    move-exception p0

    .line 346
    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public isBackupOperationInProgress()Z
    .registers 7

    .line 141
    iget-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 142
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 143
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/Operation;

    .line 144
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    iget v3, v3, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v3, :cond_21

    .line 145
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 148
    :cond_24
    monitor-exit v0

    return v1

    :catchall_26
    move-exception p0

    .line 149
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public numOperations()I
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-object p0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public onOperationComplete(IJLjava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/backup/BackupRestoreTask;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object p2, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 272
    :try_start_3
    iget-object p3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/backup/internal/Operation;

    const/4 v0, 0x0

    if-eqz p3, :cond_4b

    .line 274
    iget v1, p3, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 278
    iget-object p3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_18
    move-object p3, v0

    goto :goto_4b

    :cond_1a
    const/4 v2, 0x1

    if-ne v1, v2, :cond_47

    const-string p3, "LifecycleOperationStorage"

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UserID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Received duplicate ack for token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {p3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_18

    :cond_47
    if-nez v1, :cond_4b

    .line 289
    iput v2, p3, Lcom/android/server/backup/internal/Operation;->state:I

    .line 292
    :cond_4b
    :goto_4b
    iget-object p0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 293
    monitor-exit p2
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_5b

    if-eqz p3, :cond_5a

    .line 296
    iget-object p0, p3, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz p0, :cond_5a

    .line 297
    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5a
    return-void

    :catchall_5b
    move-exception p0

    .line 293
    :try_start_5c
    monitor-exit p2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public operationTokensForOpState(I)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 186
    :goto_8
    :try_start_8
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 187
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/Operation;

    .line 188
    iget-object v4, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 189
    iget v3, v3, Lcom/android/server/backup/internal/Operation;->state:I

    if-ne v3, p1, :cond_29

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 193
    :cond_2c
    monitor-exit v1

    return-object v0

    :catchall_2e
    move-exception p0

    .line 194
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public operationTokensForOpType(I)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 170
    :goto_8
    :try_start_8
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 171
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/Operation;

    .line 172
    iget-object v4, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 173
    iget v3, v3, Lcom/android/server/backup/internal/Operation;->type:I

    if-ne v3, p1, :cond_29

    .line 174
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 177
    :cond_2c
    monitor-exit v1

    return-object v0

    :catchall_2e
    move-exception p0

    .line 178
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public operationTokensForPackage(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    iget-object p0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 157
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    if-eqz p0, :cond_14

    .line 159
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 161
    :cond_14
    monitor-exit v0

    return-object p1

    :catchall_16
    move-exception p0

    .line 162
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public registerOperation(IILcom/android/server/backup/BackupRestoreTask;I)V
    .registers 11

    .line 93
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->registerOperationForPackages(IILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V

    return-void
.end method

.method public registerOperationForPackages(IILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/backup/BackupRestoreTask;",
            "I)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/backup/internal/Operation;

    invoke-direct {v2, p2, p4, p5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_39

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 103
    iget-object p4, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    if-nez p4, :cond_2c

    .line 105
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 107
    :cond_2c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p5, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    invoke-interface {p5, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 110
    :cond_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public removeOperation(I)V
    .registers 7

    .line 116
    iget-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_29

    goto :goto_12

    .line 124
    :cond_29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 125
    iget-object v4, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 127
    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public waitUntilOperationComplete(ILjava/util/function/IntConsumer;)Z
    .registers 7

    .line 215
    iget-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/Operation;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    move v3, v2

    goto :goto_23

    .line 222
    :cond_10
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_33

    if-nez v3, :cond_23

    .line 224
    :try_start_14
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_1a
    .catchall {:try_start_14 .. :try_end_19} :catchall_33

    goto :goto_3

    :catch_1a
    move-exception v1

    :try_start_1b
    const-string v2, "LifecycleOperationStorage"

    const-string v3, "Waiting on mOperationsLock: "

    .line 226
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 241
    :cond_23
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_33

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    if-eqz v1, :cond_2e

    .line 245
    iget p0, v1, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-interface {p2, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_2e
    const/4 p0, 0x1

    if-ne v3, p0, :cond_32

    move v2, p0

    :cond_32
    return v2

    :catchall_33
    move-exception p0

    .line 241
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method
