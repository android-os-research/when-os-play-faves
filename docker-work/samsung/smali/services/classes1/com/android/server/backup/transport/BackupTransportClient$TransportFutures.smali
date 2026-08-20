.class public Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;
.super Ljava/lang/Object;
.source "BackupTransportClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/transport/BackupTransportClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportFutures"
.end annotation


# instance fields
.field public final mActiveFutures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/infra/AndroidFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final mActiveFuturesLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFuturesLock:Ljava/lang/Object;

    .line 389
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelActiveFutures()V
    .registers 5

    .line 406
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFuturesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_21

    const/4 v3, 0x1

    .line 409
    :try_start_16
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z
    :try_end_19
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16 .. :try_end_19} :catch_9
    .catchall {:try_start_16 .. :try_end_19} :catchall_21

    goto :goto_9

    .line 414
    :cond_1a
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 415
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p0
.end method

.method public newFuture()Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 392
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFuturesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_8
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception p0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public remove(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;)V"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFuturesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_3
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 402
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
