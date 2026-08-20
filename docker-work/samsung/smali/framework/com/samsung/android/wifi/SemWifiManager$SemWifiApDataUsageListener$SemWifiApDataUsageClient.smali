.class Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
.super Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback$Stub;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemWifiApDataUsageClient"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 1403
    invoke-direct {p0}, Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback$Stub;-><init>()V

    .line 1397
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mLock:Ljava/lang/Object;

    .line 1404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1405
    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mListener:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

    .line 1406
    return-void
.end method

.method static synthetic blacklist lambda$onDataUsageChanged$0(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;Ljava/lang/String;)V
    .registers 2
    .param p0, "listener"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;
    .param p1, "value"    # Ljava/lang/String;

    .line 1441
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;->onDataUsageChanged(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist cleanUp()V
    .registers 3

    .line 1417
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1418
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1419
    iput-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mListener:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

    .line 1420
    monitor-exit v0

    .line 1421
    return-void

    .line 1420
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method blacklist init(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

    .line 1410
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1412
    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mListener:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

    .line 1413
    monitor-exit v0

    .line 1414
    return-void

    .line 1413
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public blacklist onDataUsageChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 1430
    const-string v0, "SemWifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataUsageChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1434
    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1435
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->mListener:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

    .line 1436
    .local v2, "listener":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_32

    .line 1437
    if-eqz v2, :cond_31

    if-nez v1, :cond_25

    goto :goto_31

    .line 1440
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1441
    new-instance v0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1442
    return-void

    .line 1438
    :cond_31
    :goto_31
    return-void

    .line 1436
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "listener":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method
