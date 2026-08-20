.class public Lcom/android/server/location/contexthub/NanoAppStateManager;
.super Ljava/lang/Object;
.source "NanoAppStateManager.java"


# static fields
.field public static final ENABLE_LOG_DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "NanoAppStateManager"


# instance fields
.field public final mNanoAppHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mNextHandle:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNextHandle:I

    return-void
.end method


# virtual methods
.method public declared-synchronized addNanoAppInstance(IJI)V
    .registers 18

    move-object v1, p0

    monitor-enter p0

    .line 112
    :try_start_2
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->removeNanoAppInstance(IJ)V

    .line 113
    iget-object v0, v1, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_19

    const-string v0, "NanoAppStateManager"

    const-string v2, "Error adding nanoapp instance: max limit exceeded"

    .line 114
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_89

    .line 115
    monitor-exit p0

    return-void

    .line 118
    :cond_19
    :try_start_19
    iget v0, v1, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNextHandle:I

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-gt v4, v2, :cond_50

    .line 120
    iget-object v5, v1, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 121
    iget-object v10, v1, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Landroid/hardware/location/NanoAppInstanceInfo;

    move-object v4, v12

    move v5, v0

    move-wide v6, p2

    move/from16 v8, p4

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>(IJII)V

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v0, v2, :cond_42

    goto :goto_44

    :cond_42
    add-int/lit8 v3, v0, 0x1

    .line 123
    :goto_44
    iput v3, v1, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNextHandle:I

    goto :goto_50

    :cond_47
    if-ne v0, v2, :cond_4b

    move v0, v3

    goto :goto_4d

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    :goto_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_50
    :goto_50
    const-string v2, "NanoAppStateManager"

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added app instance with handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to hub "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": ID=0x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", version=0x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_19 .. :try_end_87} :catchall_89

    .line 134
    monitor-exit p0

    return-void

    :catchall_89
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 80
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1d

    goto :goto_b

    .line 82
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNanoAppHandle(IJ)I
    .registers 8

    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 92
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v2

    if-ne v2, p1, :cond_b

    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_b

    .line 93
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result p1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2e

    monitor-exit p0

    return p1

    :cond_2b
    const/4 p1, -0x1

    .line 97
    monitor-exit p0

    return p1

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .registers 3

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/location/NanoAppInstanceInfo;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final handleQueryAppEntry(IJI)V
    .registers 14

    .line 182
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v6

    const/4 v0, -0x1

    if-ne v6, v0, :cond_b

    .line 184
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/NanoAppStateManager;->addNanoAppInstance(IJI)V

    goto :goto_66

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 187
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppVersion()I

    move-result v0

    if-eq v0, p4, :cond_66

    .line 188
    iget-object p0, p0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/hardware/location/NanoAppInstanceInfo;

    move-object v0, v8

    move v1, v6

    move-wide v2, p2

    move v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>(IJII)V

    invoke-virtual {p0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updated app instance with handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at hub "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": ID=0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", version=0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NanoAppStateManager"

    .line 191
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    return-void
.end method

.method public declared-synchronized removeNanoAppInstance(IJ)V
    .registers 4

    monitor-enter p0

    .line 143
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result p1

    .line 144
    iget-object p2, p0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 145
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateCache(ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 155
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppState;

    .line 158
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    move-result-wide v2

    .line 159
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppVersion()J

    move-result-wide v4

    long-to-int v4, v4

    .line 157
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/server/location/contexthub/NanoAppStateManager;->handleQueryAppEntry(IJI)V

    .line 160
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 163
    :cond_2e
    iget-object p2, p0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 164
    :cond_38
    :goto_38
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 165
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 166
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v2

    if-ne v2, p1, :cond_38

    .line 167
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 168
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5e

    goto :goto_38

    .line 171
    :cond_5c
    monitor-exit p0

    return-void

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
