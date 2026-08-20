.class public Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;
.super Ljava/lang/Object;
.source "SemWifiUsabilityStatsMonitor.java"


# static fields
.field private static final ENTRY_COUNT_LIMIT:I = 0x960

.field private static final TAG:Ljava/lang/String; = "SemWifiUsabilityStatsMonitor"


# instance fields
.field private final mWifiUsabilityStatsHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Lj7zSffRb3fBDj2TgfYGgNVVPSo(Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->lambda$new$0(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->mWifiUsabilityStatsHistory:Ljava/util/LinkedList;

    .line 34
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;)V

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 10

    const-string v0, "SemWifiUsabilityStatsMonitor"

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiUsabilityStats - seqNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isSameBssidAndFreq "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :try_start_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTimeStampMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p3}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p3}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkSpeedMbps()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p3}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalBeaconRx()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p3}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxSuccess()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p3}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxBad()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p3}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxRetries()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p3}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalCcaBusyFreqTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p3}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalRadioOnFreqTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_ad
    .catch Ljava/util/IllegalFormatException; {:try_start_1e .. :try_end_ad} :catch_ca

    .line 52
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->mWifiUsabilityStatsHistory:Ljava/util/LinkedList;

    monitor-enter p2

    .line 53
    :try_start_b0
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->mWifiUsabilityStatsHistory:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_b5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->mWifiUsabilityStatsHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 p3, 0x960

    if-le p1, p3, :cond_c5

    .line 55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->mWifiUsabilityStatsHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_b5

    .line 57
    :cond_c5
    monitor-exit p2

    return-void

    :catchall_c7
    move-exception p0

    monitor-exit p2
    :try_end_c9
    .catchall {:try_start_b0 .. :try_end_c9} :catchall_c7

    throw p0

    :catch_ca
    move-exception p0

    const-string p1, "SemWifiUsabilityStatsMonitor"

    const-string p2, "format problem"

    .line 49
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getWifiUsabilityStatsEntry(I)Ljava/lang/String;
    .registers 6

    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->mWifiUsabilityStatsHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 68
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->mWifiUsabilityStatsHistory:Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 69
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3c

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TimeStamp,Rssi,LinkSpeed,BcnCnt,TxGood,TxBad,TxRetry,CcaBusyTime,RadioOnTime"

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_16
    if-gt v0, p1, :cond_34

    .line 74
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-gt v0, v2, :cond_34

    .line 75
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 79
    :cond_34
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3c
    move-exception p0

    .line 69
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method
