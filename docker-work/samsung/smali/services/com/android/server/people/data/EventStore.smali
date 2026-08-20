.class public Lcom/android/server/people/data/EventStore;
.super Ljava/lang/Object;
.source "EventStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/EventStore$EventCategory;
    }
.end annotation


# static fields
.field public static final CATEGORY_CALL:I = 0x2

.field public static final CATEGORY_CLASS_BASED:I = 0x4

.field public static final CATEGORY_LOCUS_ID_BASED:I = 0x1

.field public static final CATEGORY_SHORTCUT_BASED:I = 0x0

.field public static final CATEGORY_SMS:I = 0x3


# instance fields
.field public final mEventHistoryMaps:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/EventHistoryImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mEventsCategoryDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static synthetic $r8$lambda$hIr_vqLjIPHbScqy2vjg16Ts_G4(Lcom/android/server/people/data/EventStore;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/EventStore;->lambda$getOrCreateEventHistory$0(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 11

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    .line 73
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/4 v4, 0x1

    invoke-interface {v0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/4 v5, 0x2

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/4 v6, 0x3

    invoke-interface {v0, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/4 v7, 0x4

    invoke-interface {v0, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v2, "event"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    new-instance p1, Ljava/io/File;

    const-string/jumbo v2, "shortcut"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    new-instance p1, Ljava/io/File;

    const-string/jumbo v2, "locus"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    new-instance p1, Ljava/io/File;

    const-string v2, "call"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 83
    new-instance p1, Ljava/io/File;

    const-string/jumbo v2, "sms"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v6, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    new-instance p1, Ljava/io/File;

    const-string v2, "class"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v7, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 86
    iput-object p2, p0, Lcom/android/server/people/data/EventStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private synthetic lambda$getOrCreateEventHistory$0(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;
    .registers 6

    .line 138
    new-instance p3, Lcom/android/server/people/data/EventHistoryImpl;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    .line 139
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/people/data/EventStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p3, v0, p0}, Lcom/android/server/people/data/EventHistoryImpl;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object p3
.end method


# virtual methods
.method public declared-synchronized deleteEventHistories(I)V
    .registers 4

    monitor-enter p0

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/EventHistoryImpl;

    .line 159
    invoke-virtual {v1}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V

    goto :goto_11

    .line 161
    :cond_21
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 162
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteEventHistory(ILjava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/EventHistoryImpl;

    if-eqz p1, :cond_14

    .line 152
    invoke-virtual {p1}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 154
    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;
    .registers 4

    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/EventHistory;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;
    .registers 5

    monitor-enter p0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/EventStore;ILjava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/EventHistoryImpl;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadFromDisk()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 95
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 97
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 98
    iget-object v2, p0, Lcom/android/server/people/data/EventStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    invoke-static {v1, v2}, Lcom/android/server/people/data/EventHistoryImpl;->eventHistoriesImplFromDisk(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_28

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .registers 4

    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 199
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/EventHistoryImpl;

    .line 200
    invoke-virtual {v2}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    goto :goto_1b

    .line 203
    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pruneOldEvents()V
    .registers 4

    monitor-enter p0

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 167
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/EventHistoryImpl;

    .line 168
    invoke-virtual {v2}, Lcom/android/server/people/data/EventHistoryImpl;->pruneOldEvents()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    goto :goto_1b

    .line 171
    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pruneOrphanEventHistories(ILjava/util/function/Predicate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 188
    :cond_2c
    iget-object p2, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 189
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_38
    :goto_38
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventHistoryImpl;

    if-eqz v0, :cond_38

    .line 192
    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_52

    goto :goto_38

    .line 195
    :cond_50
    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveToDisk()V
    .registers 4

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 110
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/EventHistoryImpl;

    .line 111
    invoke-virtual {v2}, Lcom/android/server/people/data/EventHistoryImpl;->saveToDisk()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    goto :goto_1b

    .line 114
    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
