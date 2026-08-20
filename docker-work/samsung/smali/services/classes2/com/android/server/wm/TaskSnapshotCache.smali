.class public Lcom/android/server/wm/TaskSnapshotCache;
.super Ljava/lang/Object;
.source "TaskSnapshotCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;
    }
.end annotation


# static fields
.field public static final SPLIT_MODE_SNAPSHOT_CACHE_THRESHOLD:I = 0x3

.field public static sMaxSnapshotCache:I = 0x5

.field public static sSplitModeMaxCacheSize:I


# instance fields
.field public final mAppTaskMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

.field public final mRunningCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mTaskIdsInSplitMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$rWWsM1UY9S7w3zH-L4BtknjEDK0(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->lambda$updateSplitModeSnapshotCache$0(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mAppTaskMap:Landroid/util/ArrayMap;

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 80
    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    return-void
.end method

.method public static synthetic lambda$updateSplitModeSnapshotCache$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 4

    .line 284
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static setMaxSnapshot(I)V
    .registers 2

    .line 209
    sput p0, Lcom/android/server/wm/TaskSnapshotCache;->sMaxSnapshotCache:I

    const/4 v0, 0x3

    if-gt p0, v0, :cond_a

    mul-int/lit8 p0, p0, 0x2

    .line 213
    sput p0, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    goto :goto_d

    :cond_a
    const/4 p0, 0x0

    .line 215
    sput p0, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    :goto_d
    return-void
.end method


# virtual methods
.method public clearRunningCache()V
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SnapshotCache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3c
    if-ltz v2, :cond_9a

    .line 171
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Entry taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "topApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "snapshot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3c

    .line 178
    :cond_9a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "MaxSnapshotCache="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/android/server/wm/TaskSnapshotCache;->sMaxSnapshotCache:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 181
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "SplitModeMaxCacheSize="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getSnapshot(IIZZ)Landroid/window/TaskSnapshot;
    .registers 8

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;

    if-eqz v1, :cond_1d

    .line 112
    iget-object p0, v1, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 114
    :cond_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-nez p3, :cond_25

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_25
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/TaskSnapshotCache;->tryRestoreFromDisk(IIZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0

    :catchall_2a
    move-exception p0

    .line 114
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mAppTaskMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_11

    .line 150
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeRunningEntry(I)V

    :cond_11
    return-void
.end method

.method public onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mAppTaskMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_11

    .line 140
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeRunningEntry(I)V

    :cond_11
    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 2

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeRunningEntry(I)V

    return-void
.end method

.method public putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .registers 7

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;

    if-eqz v0, :cond_17

    .line 90
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mAppTaskMap:Landroid/util/ArrayMap;

    iget-object v0, v0, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mAppTaskMap:Landroid/util/ArrayMap;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;

    invoke-direct {v3, p2, v0}, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;-><init>(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeOldestCacheIfNeeded(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public final removeOldestCacheIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 13

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sget v1, Lcom/android/server/wm/TaskSnapshotCache;->sMaxSnapshotCache:I

    if-gt v0, v1, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotCache;->shouldApplySplitModeSnapshotPolicy()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 230
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    .line 232
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 235
    :cond_22
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, -0x1

    move v4, v3

    .line 240
    :cond_33
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 241
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 242
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;

    if-eqz v6, :cond_33

    if-eqz v0, :cond_76

    .line 244
    iget-object v7, v6, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_76

    .line 246
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-static {v7}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 247
    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v9, v6, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->timestamp:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v8, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 250
    :cond_76
    iget-object v7, v6, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_7f

    iget-boolean v7, v7, Lcom/android/server/wm/ActivityRecord;->mKeepSnapshotCache:Z

    if-eqz v7, :cond_7f

    goto :goto_33

    .line 253
    :cond_7f
    iget-wide v6, v6, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->timestamp:J

    cmp-long v8, v6, v1

    if-gez v8, :cond_33

    move v4, v5

    move-wide v1, v6

    goto :goto_33

    :cond_88
    if-eq v4, v3, :cond_8d

    .line 261
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskSnapshotCache;->removeRunningEntry(I)V

    :cond_8d
    if-eqz v0, :cond_92

    .line 264
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotCache;->updateSplitModeSnapshotCache()V

    :cond_92
    return-void
.end method

.method public removeRunningEntry(I)V
    .registers 4

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;

    if-eqz v0, :cond_1e

    .line 161
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mAppTaskMap:Landroid/util/ArrayMap;

    iget-object v0, v0, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method public final shouldApplySplitModeSnapshotPolicy()Z
    .registers 1

    .line 271
    sget p0, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final tryRestoreFromDisk(IIZ)Landroid/window/TaskSnapshot;
    .registers 4

    .line 127
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method public final updateSplitModeSnapshotCache()V
    .registers 3

    .line 279
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotCache;->shouldApplySplitModeSnapshotPolicy()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    .line 280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    if-gt v0, v1, :cond_11

    goto :goto_3c

    .line 284
    :cond_11
    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotCache$$ExternalSyntheticLambda0;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 286
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    .line 285
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 287
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotCache;->removeRunningEntry(I)V

    :cond_3c
    :goto_3c
    return-void
.end method
