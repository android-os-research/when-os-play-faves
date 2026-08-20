.class public Lcom/android/server/notification/NotificationUsageStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationUsageStats$Aggregate;,
        Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;,
        Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;,
        Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEVICE_GLOBAL_STATS:Ljava/lang/String; = "__global"

.field public static final EMIT_PERIOD:J = 0xdbba00L

.field public static final EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field public static final ENABLE_AGGREGATED_IN_MEMORY_STATS:Z = true

.field public static final ENABLE_SQLITE_LOG:Z = true

.field public static final FOUR_HOURS:I = 0xdbba00

.field public static final MSG_EMIT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "NotificationUsageStats"

.field public static final TEN_SECONDS:I = 0x2710


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mLastEmitTime:J

.field public mStatExpiredkeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field

.field public final mStatsArrays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 67
    sput-object v0, Lcom/android/server/notification/NotificationUsageStats;->EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    .line 85
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    .line 87
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationUsageStats$1;-><init>(Lcom/android/server/notification/NotificationUsageStats;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const/4 p0, 0x1

    const-wide/32 v1, 0xdbba00

    .line 100
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7

    monitor-enter p0

    .line 332
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    if-eqz p3, :cond_22

    .line 333
    iget-object v2, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_b

    .line 335
    :cond_22
    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_b

    .line 337
    :cond_26
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mStatsArrays.size(): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mStats.size(): "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_64

    .line 340
    monitor-exit p0

    return-void

    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 7

    monitor-enter p0

    .line 300
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3b

    .line 303
    :try_start_6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 304
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    if-eqz p1, :cond_2c

    .line 305
    iget-object v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_15

    .line 307
    :cond_2c
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dumpJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_15

    :cond_34
    const-string p1, "current"

    .line 309
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_39} :catch_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_3b

    .line 314
    :catch_39
    monitor-exit p0

    return-object v0

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized emit()V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "__global"

    .line 343
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->emit()V

    .line 345
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xdbba00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 347
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 348
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-wide v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mLastAccessTime:J

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    .line 349
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 352
    :cond_44
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 355
    :cond_5c
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_69

    .line 357
    monitor-exit p0

    return-void

    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 2

    .line 262
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p0

    return-object p0
.end method

.method public final getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    if-nez v0, :cond_d

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    :cond_d
    const/4 v1, 0x0

    const-string v2, "__global"

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public declared-synchronized getAppEnqueueRate(Ljava/lang/String;)F
    .registers 4

    monitor-enter p0

    .line 107
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate(J)F

    move-result p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    monitor-exit p0

    return p1

    :cond_11
    const/4 p1, 0x0

    .line 111
    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    if-nez v0, :cond_16

    .line 292
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mLastAccessTime:J

    return-object v0
.end method

.method public declared-synchronized isAlertRateLimited(Ljava/lang/String;)Z
    .registers 2

    monitor-enter p0

    .line 119
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 121
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->isAlertRateLimited()Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return p1

    :cond_d
    const/4 p1, 0x0

    .line 123
    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerBlocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    monitor-enter p0

    .line 220
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 221
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 222
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 224
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 225
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8

    monitor-enter p0

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "note_click_longevity"

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    .line 195
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 197
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onClick()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 198
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8

    monitor-enter p0

    .line 186
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "note_dismiss_longevity"

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    .line 186
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 188
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onDismiss()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 189
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerEnqueuedByApp(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 131
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 132
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 133
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 135
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 136
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerImageRemoved(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 254
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 255
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 256
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 258
    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerOverCountQuota(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 243
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 244
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 245
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 247
    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerOverRateQuota(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 236
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 237
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 238
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 240
    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V
    .registers 9

    monitor-enter p0

    .line 202
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 203
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2d

    aget-object v2, p1, v1

    if-eqz p2, :cond_13

    .line 205
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    :cond_13
    if-eqz p3, :cond_1b

    .line 208
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    :cond_1b
    if-eqz p4, :cond_24

    .line 211
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    goto :goto_2a

    .line 213
    :cond_24
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 216
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 217
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .registers 12

    monitor-enter p0

    .line 142
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 143
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput-wide v0, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    .line 146
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v3, :cond_30

    aget-object v6, v2, v5

    .line 147
    iget v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 148
    invoke-virtual {v6, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->updateInterarrivalEstimate(J)V

    .line 149
    invoke-virtual {v6, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    .line 150
    iget v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUndecoratedRemoteViews:I

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasUndecoratedRemoteView()Z

    move-result v9

    if-eqz v9, :cond_29

    goto :goto_2a

    :cond_29
    move v8, v4

    :goto_2a
    add-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUndecoratedRemoteViews:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 152
    :cond_30
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 153
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    monitor-enter p0

    .line 174
    :try_start_1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onRemoved()V

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 176
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_19

    aget-object v2, p1, v1

    .line 177
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 179
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 180
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    monitor-enter p0

    .line 228
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 229
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 230
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 232
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 233
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .registers 8

    monitor-enter p0

    .line 160
    :try_start_1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-object p2, p2, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateFrom(Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p2

    .line 162
    array-length v0, p2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_25

    aget-object v2, p2, v1

    .line 163
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->updateInterarrivalEstimate(J)V

    .line 165
    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 167
    :cond_25
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 168
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    .registers 4

    const/4 v0, 0x0

    .line 282
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_a

    const/4 v1, 0x0

    .line 283
    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 285
    :cond_a
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;
    .registers 6

    .line 319
    new-instance p3, Lcom/android/server/notification/PulledStats;

    invoke-direct {p3, p1, p2}, Lcom/android/server/notification/PulledStats;-><init>(J)V

    .line 320
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 321
    iget p2, p1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUndecoratedRemoteViews:I

    if-lez p2, :cond_f

    .line 322
    iget-object p2, p1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->-$$Nest$fgetmCreated(Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lcom/android/server/notification/PulledStats;->addUndecoratedPackage(Ljava/lang/String;J)V

    goto :goto_f

    :cond_29
    return-object p3
.end method
