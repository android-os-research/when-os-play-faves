.class public Lcom/android/server/backup/transport/TransportStats;
.super Ljava/lang/Object;
.source "TransportStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/transport/TransportStats$Stats;
    }
.end annotation


# instance fields
.field public final mStatsLock:Ljava/lang/Object;

.field public final mTransportStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/backup/transport/TransportStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mStatsLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    return-void
.end method

.method public static dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/backup/transport/TransportStats$Stats;)V
    .registers 11

    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-wide v4, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 77
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "%sAverage connection time: %.2f ms"

    .line 76
    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 78
    iget-wide v6, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "%sMax connection time: %d ms"

    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 79
    iget-wide v6, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "%sMin connection time: %d ms"

    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 80
    iget p1, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "%sNumber of connections: %d "

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 57
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    .line 59
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/backup/transport/TransportStats$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/backup/transport/TransportStats$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, ""

    .line 61
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/transport/TransportStats$Stats;

    invoke-static {p1, v2, v1}, Lcom/android/server/backup/transport/TransportStats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/backup/transport/TransportStats$Stats;)V

    .line 63
    :cond_27
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "Per transport:"

    .line 64
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 66
    iget-object v3, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/transport/TransportStats$Stats;

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        "

    .line 68
    invoke-static {p1, v2, v3}, Lcom/android/server/backup/transport/TransportStats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/backup/transport/TransportStats$Stats;)V

    goto :goto_3e

    .line 71
    :cond_70
    monitor-exit v0

    return-void

    :catchall_72
    move-exception p0

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw p0
.end method

.method public getStatsForTransport(Landroid/content/ComponentName;)Lcom/android/server/backup/transport/TransportStats$Stats;
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/transport/TransportStats$Stats;

    const/4 p1, 0x0

    if-nez p0, :cond_10

    .line 50
    monitor-exit v0

    return-object p1

    .line 52
    :cond_10
    new-instance v1, Lcom/android/server/backup/transport/TransportStats$Stats;

    invoke-direct {v1, p0, p1}, Lcom/android/server/backup/transport/TransportStats$Stats;-><init>(Lcom/android/server/backup/transport/TransportStats$Stats;Lcom/android/server/backup/transport/TransportStats$Stats-IA;)V

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public registerConnectionTime(Landroid/content/ComponentName;J)V
    .registers 6

    .line 34
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/transport/TransportStats$Stats;

    if-nez v1, :cond_17

    .line 37
    new-instance v1, Lcom/android/server/backup/transport/TransportStats$Stats;

    invoke-direct {v1}, Lcom/android/server/backup/transport/TransportStats$Stats;-><init>()V

    .line 38
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_17
    invoke-static {v1, p2, p3}, Lcom/android/server/backup/transport/TransportStats$Stats;->-$$Nest$mregister(Lcom/android/server/backup/transport/TransportStats$Stats;J)V

    .line 41
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method
