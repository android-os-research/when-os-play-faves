.class public abstract Landroid/database/sqlite/SQLiteClosable;
.super Ljava/lang/Object;
.source "SQLiteClosable.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private greylist mReferenceCount:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    return-void
.end method


# virtual methods
.method public whitelist acquireReference()V
    .registers 4

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    iget v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-lez v0, :cond_b

    .line 61
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 58
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to re-open an already-closed object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteClosable;
    throw v0

    .line 62
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteClosable;
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 109
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .line 110
    return-void
.end method

.method protected abstract whitelist onAllReferencesReleased()V
.end method

.method protected whitelist onAllReferencesReleasedFromContainer()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    .line 47
    return-void
.end method

.method public whitelist releaseReference()V
    .registers 4

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "refCountIsZero":Z
    monitor-enter p0

    .line 74
    :try_start_2
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    move v0, v2

    .line 75
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_14

    .line 76
    if-eqz v0, :cond_13

    .line 77
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    .line 79
    :cond_13
    return-void

    .line 75
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist releaseReferenceFromContainer()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "refCountIsZero":Z
    monitor-enter p0

    .line 92
    :try_start_2
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    move v0, v2

    .line 93
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_14

    .line 94
    if-eqz v0, :cond_13

    .line 95
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    .line 97
    :cond_13
    return-void

    .line 93
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method
