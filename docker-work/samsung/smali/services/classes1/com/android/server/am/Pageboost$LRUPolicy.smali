.class public final Lcom/android/server/am/Pageboost$LRUPolicy;
.super Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LRUPolicy"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1040
    invoke-direct {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;-><init>(Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy-IA;)V

    return-void
.end method


# virtual methods
.method public appFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;
    .registers 12

    .line 1045
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    .line 1046
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1049
    :try_start_d
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    if-eqz v3, :cond_65

    .line 1050
    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_6b

    .line 1051
    :try_start_16
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1052
    iget-object v5, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1053
    :cond_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_62

    .line 1054
    :try_start_2d
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_6b

    .line 1055
    :try_start_34
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :cond_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1060
    invoke-virtual {p1, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->contains(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-virtual {v7}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->alive()Z

    move-result v8

    if-nez v8, :cond_3e

    .line 1061
    invoke-virtual {v0, v7, v5}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    add-int/lit8 v6, v6, 0x1

    if-ne v6, p2, :cond_3e

    .line 1067
    :cond_5d
    monitor-exit v3

    goto :goto_65

    :catchall_5f
    move-exception p0

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_34 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_6b

    :catchall_62
    move-exception p0

    .line 1053
    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    :try_start_64
    throw p0

    .line 1069
    :cond_65
    :goto_65
    iput-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 1070
    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 1071
    monitor-exit v2

    return-object v0

    :catchall_6b
    move-exception p0

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public judgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
    .registers 7

    .line 1078
    iget-object p2, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1079
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 1080
    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2d

    .line 1081
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    if-ne v3, p1, :cond_11

    const/4 p1, 0x1

    move v1, p1

    .line 1087
    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    :try_start_25
    throw p0

    :cond_26
    :goto_26
    const/4 p1, 0x0

    .line 1090
    iput-object p1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 1091
    iput-object p1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 1092
    monitor-exit p2

    return v1

    :catchall_2d
    move-exception p0

    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_2d

    throw p0
.end method
