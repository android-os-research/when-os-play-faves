.class Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;
.super Ljava/lang/Object;
.source "BackOffStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/BackOffStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TriggerInfo"
.end annotation


# static fields
.field static final LOG_SIZE_LIMIT:I = 0x14


# instance fields
.field private backOffDuration:J

.field private final backOffModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;",
            ">;"
        }
    .end annotation
.end field

.field private backOffStartAt:J

.field private backoffHistoricalDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final startAt:J


# direct methods
.method public static synthetic $r8$lambda$A4ZOu1Eylh0Gv4ENZepth8xQuWI(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;)Z
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->lambda$toString$6(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EXI7Ne3TmX-aKYH7StVDu9BNEMQ(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PCxEVgoV7kpM0YP1iQCiby-2AFE(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->lambda$stopAll$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W_DVi37y3-GYyvW2LBD01309DlY(ILjava/lang/Integer;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->lambda$new$1(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XOwmIenZfYADEEVNtF2pt3AoSAQ(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->lambda$merge$5(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$foQe99J4ZdHSXcM0Kn02jSIlzzY(Ljava/lang/StringBuilder;Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->lambda$toString$7(Ljava/lang/StringBuilder;Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-LxEsTi6-YDr9xY6W3pUvg9tJw(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Integer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->lambda$stop$3(ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y4VW6_rnKnBRoSd14BbUYLvS7V8(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->lambda$getTotalTriggerCount$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>()V
    .registers 6

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backoffHistoricalDumpLogs:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->mLock:Ljava/lang/Object;

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->startAt:J

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const/16 v0, 0x8

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 108
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    .line 114
    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;-><init>()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda7;-><init>(I)V

    .line 120
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;)V

    .line 121
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$getTotalTriggerCount$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;)V
    .registers 3

    .line 130
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTriggerCount(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method private synthetic lambda$merge$5(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Ljava/lang/Integer;)V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    .line 221
    iget-object p1, p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->merge(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;)V

    .line 222
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .registers 4

    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;-><init>(I)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$new$1(ILjava/lang/Integer;)Z
    .registers 2

    .line 120
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private synthetic lambda$stop$3(ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Integer;)V
    .registers 4

    .line 186
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    .line 187
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p1, :cond_12

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->stop()V

    goto :goto_1c

    .line 189
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    .line 190
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private synthetic lambda$stopAll$4(Ljava/lang/Integer;)V
    .registers 2

    .line 205
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->stop()V

    :cond_11
    return-void
.end method

.method private static synthetic lambda$toString$6(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;)Z
    .registers 1

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$toString$7(Ljava/lang/StringBuilder;Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;)V
    .registers 3

    const-string v0, " "

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method addBackoffHistoryToDump(IZ)V
    .registers 8

    .line 163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backoffHistoricalDumpLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_13

    .line 165
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backoffHistoricalDumpLogs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 167
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backoffHistoricalDumpLogs:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yy/MM/dd kk:mm:ss "

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setPowerBackoff("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") enable="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public getBackoffHistoryDump()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backoffHistoricalDumpLogs:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 159
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method getLifeTime()J
    .registers 5

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->startAt:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalDuration()J
    .registers 5

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->isTriggered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffStartAt:J

    sub-long/2addr v0, v2

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x0

    .line 139
    :goto_10
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffDuration:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getTotalTriggerCount()I
    .registers 4

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 131
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getTriggerCount(I)I
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 144
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->getCount()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public getTriggerDuration(I)J
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 151
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->getDuration()J

    move-result-wide p0

    return-wide p0

    :cond_1d
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method isTriggered()Z
    .registers 5

    .line 215
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffStartAt:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method merge(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;)V
    .registers 6

    .line 219
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 224
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffDuration:J

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTotalDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffDuration:J

    return-void
.end method

.method start(I)V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->start()V

    .line 177
    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->isTriggered()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffStartAt:J

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->addBackoffHistoryToDump(IZ)V

    :cond_2b
    return-void
.end method

.method stop(I)V
    .registers 6

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 185
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;ILjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 193
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_27

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTotalDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffDuration:J

    const-wide/16 v2, 0x0

    .line 195
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffStartAt:J

    .line 196
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->addBackoffHistoryToDump(IZ)V

    :cond_27
    return-void
.end method

.method stopAll()V
    .registers 3

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->isTriggered()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 204
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTotalDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffDuration:J

    const-wide/16 v0, 0x0

    .line 211
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffStartAt:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->backOffModes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda2;-><init>()V

    .line 231
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo$$ExternalSyntheticLambda3;-><init>(Ljava/lang/StringBuilder;)V

    .line 232
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getBackoffHistoryDump()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
