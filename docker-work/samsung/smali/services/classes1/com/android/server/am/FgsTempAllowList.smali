.class public Lcom/android/server/am/FgsTempAllowList;
.super Ljava/lang/Object;
.source "FgsTempAllowList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_SIZE:I = 0x64


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mMaxSize:I

.field public final mTempAllowList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    const/16 v0, 0x64

    .line 49
    iput v0, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    const/16 v0, 0x64

    .line 49
    iput v0, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    if-gtz p1, :cond_38

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid FgsTempAllowList maxSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", force default maxSize:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput v0, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    goto :goto_3a

    .line 67
    :cond_38
    iput p1, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    :goto_3a
    return-void
.end method


# virtual methods
.method public add(IJLjava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJTE;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_29

    :try_start_9
    const-string p0, "ActivityManager"

    .line 79
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FgsTempAllowList bad duration:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " key: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-exit v0

    return-void

    .line 85
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 86
    iget-object v3, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 87
    iget v4, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    if-le v3, v4, :cond_77

    const-string v4, "ActivityManager"

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FgsTempAllowList length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " exceeds maxSize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, -0x1

    :goto_59
    if-ltz v3, :cond_77

    .line 91
    iget-object v4, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-gez v4, :cond_74

    .line 92
    iget-object v4, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_74
    add-int/lit8 v3, v3, -0x1

    goto :goto_59

    .line 96
    :cond_77
    iget-object v3, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    add-long/2addr v1, p2

    if-eqz v3, :cond_8e

    .line 98
    iget-object p2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    cmp-long p2, p2, v1

    if-gez p2, :cond_9c

    .line 99
    :cond_8e
    iget-object p0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    new-instance p2, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p2, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    :cond_9c
    monitor-exit v0

    return-void

    :catchall_9e
    move-exception p0

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9 .. :try_end_a0} :catchall_9e

    throw p0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "TE;>;>;)V"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 162
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 163
    iget-object v2, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 164
    iget-object v3, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-eqz v3, :cond_23

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 169
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public get(I)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "TE;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_e

    .line 114
    monitor-exit v0

    return-object v1

    .line 115
    :cond_e
    iget-object v2, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2d

    .line 116
    iget-object p0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 117
    monitor-exit v0

    return-object v1

    .line 119
    :cond_2d
    iget-object p0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    monitor-exit v0

    return-object p0

    :catchall_37
    move-exception p0

    .line 121
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public isAllowed(I)Z
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/server/am/FgsTempAllowList;->get(I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public removeAppId(I)V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_21

    .line 149
    iget-object v2, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 150
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v2, p1, :cond_1e

    .line 151
    iget-object v2, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 154
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public removeUid(I)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 139
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
