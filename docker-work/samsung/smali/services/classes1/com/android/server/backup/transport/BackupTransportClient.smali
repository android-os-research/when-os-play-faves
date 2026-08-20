.class public Lcom/android/server/backup/transport/BackupTransportClient;
.super Ljava/lang/Object;
.source "BackupTransportClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;,
        Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BackupTransportClient"


# instance fields
.field public final mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

.field public final mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

.field public final mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;


# direct methods
.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 55
    new-instance p1, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;-><init>(Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool-IA;)V

    iput-object p1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 56
    new-instance p1, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-direct {p1, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;-><init>(Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures-IA;)V

    iput-object p1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    return-void
.end method


# virtual methods
.method public abortFullRestore()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 348
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 349
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 351
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return v1

    :catchall_15
    move-exception v1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 352
    throw v1
.end method

.method public cancelFullBackup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 301
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 302
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_14

    .line 304
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return-void

    :catchall_14
    move-exception v1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 305
    throw v1
.end method

.method public checkFullBackupSize(J)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 275
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/backup/IBackupTransport;->checkFullBackupSize(JLcom/android/internal/backup/ITransportStatusCallback;)V

    .line 276
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 278
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return p1

    :catchall_15
    move-exception p1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 279
    throw p1
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 133
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 134
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 136
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return p1

    :catchall_15
    move-exception p1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 137
    throw p1
.end method

.method public configurationIntent()Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent(Lcom/android/internal/infra/AndroidFuture;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString(Lcom/android/internal/infra/AndroidFuture;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent(Lcom/android/internal/infra/AndroidFuture;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public dataManagementIntentLabel()Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntentLabel(Lcom/android/internal/infra/AndroidFuture;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public finishBackup()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 146
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->finishBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 147
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 149
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return v1

    :catchall_15
    move-exception v1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 150
    throw v1
.end method

.method public finishRestore()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 238
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->finishRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 239
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_14

    .line 241
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return-void

    :catchall_14
    move-exception v1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 242
    throw v1
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets(Lcom/android/internal/infra/AndroidFuture;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto :goto_1e

    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/app/backup/RestoreSet;

    .line 184
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/app/backup/RestoreSet;

    :goto_1e
    return-object p0
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;ZLcom/android/internal/infra/AndroidFuture;)V

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_16

    const-wide/16 p0, -0x3e8

    goto :goto_1a

    .line 326
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_1a
    return-wide p0
.end method

.method public getCurrentRestoreSet()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet(Lcom/android/internal/infra/AndroidFuture;)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_16

    const-wide/16 v0, -0x3e8

    goto :goto_1a

    .line 194
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1a
    return-wide v0
.end method

.method public final getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x258

    .line 377
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_8} :catch_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_8} :catch_10
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_8} :catch_10
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_8} :catch_10
    .catchall {:try_start_2 .. :try_end_8} :catchall_e

    .line 383
    :goto_8
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->remove(Lcom/android/internal/infra/AndroidFuture;)V

    return-object v0

    :catchall_e
    move-exception v0

    goto :goto_1a

    :catch_10
    move-exception v0

    :try_start_11
    const-string v1, "BackupTransportClient"

    const-string v2, "Failed to get result from transport:"

    .line 380
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_e

    const/4 v0, 0x0

    goto :goto_8

    .line 383
    :goto_1a
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->remove(Lcom/android/internal/infra/AndroidFuture;)V

    .line 384
    throw v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 335
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 336
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 338
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return p1

    :catchall_15
    move-exception p1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 339
    throw p1
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 225
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 226
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 228
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return p1

    :catchall_15
    move-exception p1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 229
    throw p1
.end method

.method public getTransportFlags()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags(Lcom/android/internal/infra/AndroidFuture;)V

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_16

    const/16 p0, -0x3e8

    goto :goto_1a

    .line 362
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1a
    return p0
.end method

.method public initializeDevice()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 120
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 121
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 123
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return v1

    :catchall_15
    move-exception v1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 124
    throw v1
.end method

.method public isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;ZLcom/android/internal/infra/AndroidFuture;)V

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1b

    .line 316
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public name()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->name(Lcom/android/internal/infra/AndroidFuture;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/backup/RestoreDescription;

    return-object p0
.end method

.method public onBecomingUnusable()V
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->cancelActiveCallbacks()V

    .line 372
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {p0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->cancelActiveFutures()V

    return-void
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 170
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 171
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 173
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return p1

    :catchall_15
    move-exception p1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 174
    throw p1
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 262
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 263
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 265
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return p1

    :catchall_15
    move-exception p1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 266
    throw p1
.end method

.method public requestBackupTime()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_16

    const-wide/16 v0, -0x3e8

    goto :goto_1a

    .line 160
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1a
    return-wide v0
.end method

.method public requestFullBackupTime()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_16

    const-wide/16 v0, -0x3e8

    goto :goto_1a

    .line 252
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1a
    return-wide v0
.end method

.method public sendBackupData(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 289
    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_15

    .line 291
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return p1

    :catchall_15
    move-exception p1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 292
    throw p1
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v0

    .line 203
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 204
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 206
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    return p1

    :catchall_15
    move-exception p1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 207
    throw p1
.end method

.method public transportDirName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->transportDirName(Lcom/android/internal/infra/AndroidFuture;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
