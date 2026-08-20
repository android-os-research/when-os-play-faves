.class public Lcom/android/internal/telephony/ClientWakelockTracker;
.super Ljava/lang/Object;
.source "ClientWakelockTracker.java"


# static fields
.field public static final blacklist LOG_TAG:Ljava/lang/String; = "ClientWakelockTracker"

.field private static final blacklist TIME_UPDATE_MILLIS:J


# instance fields
.field public blacklist mActiveClients:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/ClientWakelockAccountant;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mClients:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/ClientWakelockAccountant;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private blacklist mLastUpdateTime:J

.field private blacklist mReqCount:I

.field private blacklist mTimeStats:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/ClientWakelockTracker;->TIME_UPDATE_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mLastUpdateTime:J

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mReqCount:I

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mLastClientMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mTimeStats:Ljava/util/Deque;

    return-void
.end method

.method private blacklist appendTimeStat(Ljava/lang/Long;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .line 63
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 64
    :goto_4
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mTimeStats:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->size()I

    move-result p2

    const/16 v0, 0x18

    if-lt p2, v0, :cond_14

    .line 65
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mTimeStats:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_4

    .line 67
    :cond_14
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mTimeStats:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist dumpRequestHistory(Ljava/io/PrintWriter;)V
    .registers 9

    .line 247
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mTimeStats:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 249
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_47

    .line 250
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v2}, Lcom/android/internal/telephony/ClientWakelockTracker;->getCalculateTime(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->dumpTimeStats(Lcom/android/internal/telephony/IndentingPrintWriter;Ljava/util/HashMap;)V

    goto :goto_d

    .line 255
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 256
    iget-wide v5, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mLastUpdateTime:J

    sub-long/2addr v3, v5

    .line 258
    sget-wide v5, Lcom/android/internal/telephony/ClientWakelockTracker;->TIME_UPDATE_MILLIS:J

    cmp-long p1, v3, v5

    if-ltz p1, :cond_55

    sub-long/2addr v3, v5

    .line 264
    :cond_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/ClientWakelockTracker;->getCurrentDiffTime(J)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2}, Lcom/android/internal/telephony/ClientWakelockTracker;->getCalculateTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mLastClientMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->dumpTimeStats(Lcom/android/internal/telephony/IndentingPrintWriter;Ljava/util/HashMap;)V

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/ClientWakelockTracker;->getCurrentDiffTime(J)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2}, Lcom/android/internal/telephony/ClientWakelockTracker;->getCalculateTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] (dump)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 268
    iget-object p1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter p1

    .line 269
    :try_start_a4
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_ae
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 272
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockAccountant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto :goto_ae

    .line 275
    :cond_e8
    monitor-exit p1
    :try_end_e9
    .catchall {:try_start_a4 .. :try_end_e9} :catchall_f0

    .line 276
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 277
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_f0
    move-exception p0

    .line 275
    :try_start_f1
    monitor-exit p1
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw p0
.end method

.method private blacklist dumpTimeStats(Lcom/android/internal/telephony/IndentingPrintWriter;Ljava/util/HashMap;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/IndentingPrintWriter;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .line 281
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 283
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 284
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v2

    .line 285
    :try_start_20
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ClientWakelockAccountant;->toSimpleString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_ac

    .line 287
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 289
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 290
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 291
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_45
    if-ge v4, v2, :cond_a4

    aget-object v5, v0, v4

    .line 292
    check-cast v5, Ljava/lang/Integer;

    .line 293
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    const-string v7, "id = %5d, [%s ~ %s], min =%5d ms, max =%5d ms, avg =%5d ms, count =%5d"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v3

    .line 294
    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Long;

    aget-object v5, v5, v3

    .line 295
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {p0, v9, v10, v3}, Lcom/android/internal/telephony/ClientWakelockTracker;->getCalculateTime(JZ)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v8, v9

    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Long;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11, v3}, Lcom/android/internal/telephony/ClientWakelockTracker;->getCalculateTime(JZ)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v8, v10

    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [Ljava/lang/Integer;

    aget-object v6, v6, v3

    const/4 v11, 0x3

    aput-object v6, v8, v11

    const/4 v6, 0x4

    move-object v12, v5

    check-cast v12, [Ljava/lang/Integer;

    aget-object v9, v12, v9

    aput-object v9, v8, v6

    const/4 v6, 0x5

    move-object v9, v5

    check-cast v9, [Ljava/lang/Integer;

    aget-object v9, v9, v10

    aput-object v9, v8, v6

    const/4 v6, 0x6

    check-cast v5, [Ljava/lang/Integer;

    aget-object v5, v5, v11

    aput-object v5, v8, v6

    .line 294
    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 296
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 298
    :cond_a4
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 299
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto/16 :goto_8

    :catchall_ac
    move-exception p0

    .line 286
    :try_start_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw p0

    :cond_af
    return-void
.end method

.method private blacklist getCalculateTime(JZ)Ljava/lang/String;
    .registers 7

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x3

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p3, :cond_25

    const/4 p3, 0x6

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p0, p3, v1

    aput-object p0, p3, v0

    aput-object p0, p3, p2

    aput-object p0, p3, p1

    aput-object p0, p3, v2

    const/4 p1, 0x5

    aput-object p0, p3, p1

    const-string p0, "%tm-%td %tH:%tM:%tS.%tL"

    .line 73
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_35

    :cond_25
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p0, p3, v1

    aput-object p0, p3, v0

    aput-object p0, p3, p2

    aput-object p0, p3, p1

    const-string p0, "%tH:%tM:%tS.%tL"

    .line 74
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_35
    return-object p0
.end method

.method private blacklist getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 201
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ClientWakelockAccountant;

    goto :goto_1f

    .line 203
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/ClientWakelockAccountant;-><init>(Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    .line 206
    :goto_1f
    monitor-exit v0

    return-object p0

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method private blacklist getCurrentDiffTime(J)J
    .registers 5

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private blacklist updateConcurrentRequests(IJ)V
    .registers 6

    if-eqz p1, :cond_20

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 213
    :try_start_5
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ClientWakelockAccountant;

    .line 214
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/ClientWakelockAccountant;->changeConcurrentRequests(IJ)V

    goto :goto_b

    .line 216
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw p0

    :cond_20
    :goto_20
    return-void
.end method

.method private blacklist updateLogging(Ljava/lang/String;II)V
    .registers 18

    move-object v7, p0

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 84
    iget-wide v0, v7, Lcom/android/internal/telephony/ClientWakelockTracker;->mLastUpdateTime:J

    sub-long v10, v8, v0

    .line 85
    sget-wide v12, Lcom/android/internal/telephony/ClientWakelockTracker;->TIME_UPDATE_MILLIS:J

    cmp-long v0, v10, v12

    if-gez v0, :cond_1f

    .line 86
    iget-object v1, v7, Lcom/android/internal/telephony/ClientWakelockTracker;->mLastClientMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->updateTime(Ljava/util/HashMap;Ljava/lang/String;IIJ)V

    goto :goto_44

    .line 88
    :cond_1f
    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/ClientWakelockTracker;->getCurrentDiffTime(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/telephony/ClientWakelockTracker;->mLastClientMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->appendTimeStat(Ljava/lang/Long;Ljava/util/HashMap;)V

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v7, Lcom/android/internal/telephony/ClientWakelockTracker;->mLastClientMap:Ljava/util/HashMap;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->updateTime(Ljava/util/HashMap;Ljava/lang/String;IIJ)V

    .line 91
    rem-long/2addr v10, v12

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lcom/android/internal/telephony/ClientWakelockTracker;->mLastUpdateTime:J

    :goto_44
    return-void
.end method

.method private blacklist updateTime(Ljava/util/HashMap;Ljava/lang/String;IIJ)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/String;",
            "IIJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 96
    invoke-virtual/range {p1 .. p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 134
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v4, :cond_e7

    .line 97
    invoke-virtual/range {p1 .. p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 98
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ad

    .line 99
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 100
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Integer;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 101
    iget-object v10, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Integer;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 102
    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Integer;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 103
    iget-object v12, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Integer;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_5f

    move v5, v3

    move v10, v5

    move v12, v9

    goto :goto_71

    :cond_5f
    if-ge v3, v5, :cond_62

    move v5, v3

    :cond_62
    if-le v3, v10, :cond_65

    move v10, v3

    :cond_65
    int-to-long v13, v11

    int-to-long v6, v12

    mul-long/2addr v13, v6

    int-to-long v6, v3

    add-long/2addr v13, v6

    add-int/2addr v12, v9

    int-to-long v6, v12

    .line 118
    div-long/2addr v13, v6

    long-to-int v3, v13

    move v15, v5

    move v5, v3

    move v3, v15

    .line 121
    :goto_71
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Long;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    .line 122
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 123
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v9

    .line 124
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    .line 125
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v3, v6

    .line 126
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e3

    .line 128
    :cond_ad
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Long;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v7, v13

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v7, v9

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v13

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v8

    const/4 v3, 0x3

    aput-object v10, v5, v3

    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget v3, v0, Lcom/android/internal/telephony/ClientWakelockTracker;->mReqCount:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/android/internal/telephony/ClientWakelockTracker;->mReqCount:I

    .line 131
    :goto_e3
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_125

    .line 133
    :cond_e7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 134
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Long;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v7, v13

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v7, v9

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v13

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v8

    const/4 v3, 0x3

    aput-object v10, v5, v3

    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget v3, v0, Lcom/android/internal/telephony/ClientWakelockTracker;->mReqCount:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/android/internal/telephony/ClientWakelockTracker;->mReqCount:I

    .line 136
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_125
    return-void
.end method


# virtual methods
.method blacklist dumpClientRequestTracker(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "-------mClients---------------"

    .line 232
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->dumpRequestHistory(Ljava/io/PrintWriter;)V

    return-void
.end method

.method blacklist getClientRequestStats()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v2

    .line 187
    :try_start_7
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 189
    iget-object v6, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ClientWakelockAccountant;

    .line 190
    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/ClientWakelockAccountant;->updatePendingRequestWakelockTime(J)J

    .line 191
    new-instance v6, Landroid/telephony/ClientRequestStats;

    iget-object v5, v5, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-direct {v6, v5}, Landroid/telephony/ClientRequestStats;-><init>(Landroid/telephony/ClientRequestStats;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 193
    :cond_3e
    monitor-exit v2

    return-object v3

    :catchall_40
    move-exception p0

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public blacklist isClientActive(Ljava/lang/String;)Z
    .registers 3

    .line 221
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 223
    :try_start_7
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    .line 224
    monitor-exit v0

    return p0

    .line 226
    :cond_12
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public blacklist startTracking(Ljava/lang/String;III)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object p1

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, v6

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ClientWakelockAccountant;->startAttributingWakelock(IIIJ)V

    .line 146
    invoke-direct {p0, p4, v6, v7}, Lcom/android/internal/telephony/ClientWakelockTracker;->updateConcurrentRequests(IJ)V

    .line 147
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter p2

    .line 148
    :try_start_16
    iget-object p3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_23

    .line 149
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_23
    monitor-exit p2

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p2
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public blacklist stopTracking(Ljava/lang/String;III)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object v0

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 162
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->stopAttributingWakelockInt(IIJ)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ClientWakelockTracker;->updateLogging(Ljava/lang/String;II)V

    .line 164
    invoke-virtual {v0}, Lcom/android/internal/telephony/ClientWakelockAccountant;->getPendingRequestCount()I

    move-result p1

    if-nez p1, :cond_22

    .line 165
    iget-object p1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter p1

    .line 166
    :try_start_18
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    monitor-exit p1

    goto :goto_22

    :catchall_1f
    move-exception p0

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p0

    .line 169
    :cond_22
    :goto_22
    invoke-direct {p0, p4, v1, v2}, Lcom/android/internal/telephony/ClientWakelockTracker;->updateConcurrentRequests(IJ)V

    return-void
.end method

.method public blacklist stopTrackingAll()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 175
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v2

    .line 176
    :try_start_7
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ClientWakelockAccountant;

    .line 177
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/telephony/ClientWakelockAccountant;->stopAllPendingRequests(J)V

    goto :goto_d

    .line 179
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 180
    monitor-exit v2

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p0
.end method
