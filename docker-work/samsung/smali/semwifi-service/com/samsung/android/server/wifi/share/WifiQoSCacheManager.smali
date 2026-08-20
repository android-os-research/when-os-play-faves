.class Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;
.super Ljava/lang/Object;
.source "WifiQoSCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;,
        Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;,
        Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$ConfigKeyProvider;
    }
.end annotation


# static fields
.field private static final LIFE_TIME:J = 0xdbba00L

.field private static final LIFE_TIME_FOR_SPECIAL_NETWORK:J = 0x1b77400L

.field private static final REPLACE_MIN_TIME:J = 0x1d4c0L

.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.Cache"


# instance fields
.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-void
.end method

.method static getQoSSpeedInt([I)[I
    .registers 4

    if-eqz p0, :cond_2f

    .line 147
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2f

    new-array v0, v1, [I

    const/4 v1, 0x0

    .line 149
    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 150
    aget v2, p0, v1

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 151
    aget v2, p0, v1

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 152
    aget p0, p0, v1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    aput p0, v0, v1

    return-object v0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method static printCachedScores(Ljava/util/Map;Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$ConfigKeyProvider;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$ConfigKeyProvider;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_87

    const-string v1, "WifiProfileShare.Cache"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ScoreData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "\n"

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p1, :cond_40

    .line 132
    invoke-interface {p1, v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$ConfigKeyProvider;->getConfigKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    const-string v3, " ("

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") -"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v2, Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 137
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, " "

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 143
    :cond_87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method declared-synchronized addOrUpdateScore(Ljava/lang/String;[I)V
    .registers 11

    monitor-enter p0

    if-eqz p1, :cond_a2

    if-eqz p2, :cond_a2

    .line 72
    :try_start_5
    array-length v0, p2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    goto/16 :goto_a2

    .line 76
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v0, :cond_5c

    .line 78
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    aget v5, p2, v4

    invoke-static {v5}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->from(I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    move-result-object v5

    new-array v6, v3, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    aget v7, p2, v2

    .line 79
    invoke-static {v7}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object v7

    aput-object v7, v6, v4

    aget v4, p2, v1

    .line 80
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object v4

    aput-object v4, v6, v2

    aget p2, p2, v3

    .line 81
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object p2

    aput-object p2, v6, v1

    const/4 p2, 0x0

    invoke-direct {v0, v5, v6, p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;-><init>(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData-IA;)V

    const-string p2, "WifiProfileShare.Cache"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add network score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 84
    :cond_5c
    aget v5, p2, v4

    invoke-static {v5}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->from(I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    move-result-object v5

    new-array v6, v3, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    aget v7, p2, v2

    .line 85
    invoke-static {v7}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object v7

    aput-object v7, v6, v4

    aget v4, p2, v1

    .line 86
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object v4

    aput-object v4, v6, v2

    aget p2, p2, v3

    .line 87
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object p2

    aput-object p2, v6, v1

    .line 84
    invoke-static {v0, v5, v6}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->-$$Nest$mupdate(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V

    const-string p2, "WifiProfileShare.Cache"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update network score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_9b
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a0
    .catchall {:try_start_5 .. :try_end_a0} :catchall_ab

    .line 91
    monitor-exit p0

    return-void

    :cond_a2
    :goto_a2
    :try_start_a2
    const-string p1, "WifiProfileShare.Cache"

    const-string p2, "addOrUpdateScore - invalid score data"

    .line 73
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_ab

    .line 74
    monitor-exit p0

    return-void

    :catchall_ab
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getScores(Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_32

    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->-$$Nest$mgetRealNetworkScores(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 55
    :cond_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_62

    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->-$$Nest$mgetNetworkScores(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 60
    :cond_62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_66
    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 62
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->-$$Nest$mgetNetworkScores(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    :cond_8a
    const-string v1, "WifiProfileShare.Cache"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScores req:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " return:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_1 .. :try_end_b0} :catchall_b2

    .line 68
    :cond_b0
    monitor-exit p0

    return-object v0

    :catchall_b2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeAll()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "WifiProfileShare.Cache"

    const-string v1, "remove all cached score data"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 96
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeOldItems()V
    .registers 10

    monitor-enter p0

    .line 99
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 100
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 101
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 104
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    if-eqz v3, :cond_f

    .line 106
    iget-wide v5, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0xdbba00

    cmp-long v7, v5, v7

    if-lez v7, :cond_64

    .line 107
    iget-object v7, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    sget-object v8, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NORMAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    if-ne v7, v8, :cond_64

    const-string v5, "WifiProfileShare.Cache"

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove old qos data of normal network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-virtual {v7, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " created at "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_64
    const-wide/32 v7, 0x1b77400

    cmp-long v5, v5, v7

    if-lez v5, :cond_f

    const-string v5, "WifiProfileShare.Cache"

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove old qos data of special network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-virtual {v7, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " created at "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_94
    .catchall {:try_start_1 .. :try_end_94} :catchall_98

    goto/16 :goto_f

    .line 118
    :cond_96
    monitor-exit p0

    return-void

    :catchall_98
    move-exception v0

    monitor-exit p0

    throw v0
.end method
