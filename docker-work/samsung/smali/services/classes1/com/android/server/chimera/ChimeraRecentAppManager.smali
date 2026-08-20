.class public Lcom/android/server/chimera/ChimeraRecentAppManager;
.super Ljava/lang/Object;
.source "ChimeraRecentAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;,
        Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;
    }
.end annotation


# static fields
.field public static final MAX_RECENT_APP_NUM:I = 0xa

.field public static final MSG_CHECK_APP_USAGE_END:I = 0x2

.field public static final MSG_CHECK_APP_USAGE_START:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ChimeraRecentAppManager"


# instance fields
.field public mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

.field public final mProcessObserver:Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mPsiFullTotalList:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mPsiListLock:Ljava/lang/Object;

.field public mPsiSomeTotalList:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mRecentAppList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mRecentAppLock:Ljava/lang/Object;

.field public final mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingRepository(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/SettingRepository;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/SystemRepository;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misRecentAppExist(Lcom/android/server/chimera/ChimeraRecentAppManager;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->isRecentAppExist(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Landroid/os/Looper;)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppLock:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ChimeraRecentAppManager$1;-><init>(Lcom/android/server/chimera/ChimeraRecentAppManager;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mProcessObserver:Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;

    .line 71
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 72
    iput-object p2, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 73
    new-instance p1, Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;-><init>(Lcom/android/server/chimera/ChimeraRecentAppManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 74
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraRecentAppManager;->registerProcessObserver()V

    return-void
.end method


# virtual methods
.method public checkAppUsageEnd(I)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 88
    invoke-static {p1}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAllRunningPackagePids(I)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 89
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_a1

    const-wide/16 v1, 0x0

    .line 94
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v5, v1

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 95
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v2, v1}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v1

    add-long/2addr v5, v1

    goto :goto_13

    .line 99
    :cond_2b
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    move-result-wide v7

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->getPsiInfo(I)Landroid/util/Pair;

    move-result-object v0

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->updatePsiInfo(I)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->getPsiInfo(I)Landroid/util/Pair;

    move-result-object v1

    if-eqz v0, :cond_a1

    if-eqz v1, :cond_a1

    .line 104
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v2, v9

    .line 105
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v11, v1, v3

    .line 110
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_67
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_67 .. :try_end_7a} :catchall_9e

    .line 115
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_7d
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    new-instance v2, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;

    move-object v3, v2

    move v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;-><init>(IJJJJ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_99

    .line 118
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 120
    :cond_99
    monitor-exit v1

    goto :goto_a1

    :catchall_9b
    move-exception p0

    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_7d .. :try_end_9d} :catchall_9b

    throw p0

    :catchall_9e
    move-exception p0

    .line 113
    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw p0

    :cond_a1
    :goto_a1
    return-void
.end method

.method public checkAppUsageStart(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->updatePsiInfo(I)V

    return-void
.end method

.method public final getPsiInfo(I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 127
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz v1, :cond_25

    if-eqz p0, :cond_25

    .line 129
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 131
    :cond_25
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public getRecentAppInfo()Ljava/util/ArrayList;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppLock:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_a
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_6d

    move v3, v4

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    .line 151
    :goto_1e
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_60

    .line 152
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;

    .line 153
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->getAppPss()J

    move-result-wide v19

    .line 154
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->getAvailMem()J

    move-result-wide v21

    .line 155
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->getPsiSomeTotal()J

    move-result-wide v23

    .line 156
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->getPsiFullTotal()J

    move-result-wide v5

    const-wide/16 v17, 0x0

    cmp-long v25, v19, v17

    if-lez v25, :cond_51

    cmp-long v25, v21, v17

    if-lez v25, :cond_51

    add-long v7, v7, v19

    add-long v9, v9, v21

    add-long v11, v11, v23

    add-long/2addr v13, v5

    add-int/lit8 v3, v3, 0x1

    .line 165
    :cond_51
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_5d

    move-wide/from16 v15, v23

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_60
    int-to-long v4, v3

    .line 169
    div-long v6, v7, v4

    .line 170
    div-long v8, v9, v4

    .line 171
    div-long v10, v11, v4

    .line 172
    div-long v4, v13, v4

    move-wide v12, v4

    move-wide v5, v6

    move v4, v3

    goto :goto_75

    :cond_6d
    const-wide/16 v17, 0x0

    move-wide/from16 v5, v17

    move-wide v8, v5

    move-wide v10, v8

    move-wide v12, v10

    move-wide v15, v12

    .line 174
    :goto_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_a .. :try_end_76} :catchall_d3

    .line 175
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v2, "ChimeraRecentAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getRecentAppInfo(): count:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pss:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " avaiMem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " avgPsiSomeTotal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " avgPsiFullTotal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :catchall_d3
    move-exception v0

    .line 174
    :try_start_d4
    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v0
.end method

.method public final isRecentAppExist(I)Z
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final registerProcessObserver()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mProcessObserver:Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;

    invoke-interface {v0, p0}, Lcom/android/server/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V

    return-void
.end method

.method public updatePsiInfo(I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 192
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->MEMORY:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    sget-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    invoke-static {v0, v1}, Lcom/android/server/chimera/ChimeraCommonUtil;->getPsiFile(Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;)Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1b

    .line 196
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "ChimeraRecentAppManager"

    const-string v4, "No permission - psi memory"

    invoke-interface {v0, v1, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_23

    .line 198
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getPsiSomeTotal()J

    move-result-wide v2

    .line 199
    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getPsiFullTotal()J

    move-result-wide v0

    .line 201
    :goto_23
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v5, "ChimeraRecentAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " psiSomeTotal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " psiFullTotal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    monitor-enter v4

    .line 204
    :try_start_4f
    iget-object v5, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v4

    return-void

    :catchall_6b
    move-exception p0

    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_4f .. :try_end_6d} :catchall_6b

    throw p0
.end method
