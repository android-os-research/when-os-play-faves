.class public Landroid/app/usage/StorageStatsManager;
.super Ljava/lang/Object;
.source "StorageStatsManager.java"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/app/usage/IStorageStatsManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/usage/IStorageStatsManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/usage/IStorageStatsManager;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/IStorageStatsManager;

    iput-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    .line 68
    return-void
.end method


# virtual methods
.method public greylist-max-o getCacheBytes(Ljava/lang/String;)J
    .registers 4
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/util/UUID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getCacheBytes(Ljava/util/UUID;)J
    .registers 5
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/usage/IStorageStatsManager;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-wide v0

    .line 168
    :catch_11
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 167
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o getCacheQuotaBytes(Ljava/lang/String;I)J
    .registers 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 350
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    iget-object v1, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/usage/IStorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 351
    :catch_d
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getFreeBytes(Ljava/lang/String;)J
    .registers 4
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/util/UUID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFreeBytes(Ljava/util/UUID;)J
    .registers 5
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/usage/IStorageStatsManager;->getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-wide v0

    .line 150
    :catch_11
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 149
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist getTotalBytes(Ljava/lang/String;)J
    .registers 4
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/util/UUID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTotalBytes(Ljava/util/UUID;)J
    .registers 5
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/usage/IStorageStatsManager;->getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-wide v0

    .line 118
    :catch_11
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 115
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist isQuotaSupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public blacklist isQuotaSupported(Ljava/util/UUID;)Z
    .registers 5
    .param p1, "storageUuid"    # Ljava/util/UUID;

    .line 74
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/usage/IStorageStatsManager;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 75
    :catch_11
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isReservedSupported(Ljava/util/UUID;)Z
    .registers 5
    .param p1, "storageUuid"    # Ljava/util/UUID;

    .line 90
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/usage/IStorageStatsManager;->isReservedSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 91
    :catch_11
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist queryCratesForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/Collection;
    .registers 8
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    .line 408
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/app/usage/IStorageStatsManager;->queryCratesForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 410
    .local v0, "crateInfoList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/os/storage/CrateInfo;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1e
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_1e} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v1

    .line 415
    .end local v0    # "crateInfoList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/os/storage/CrateInfo;>;"
    :catch_1f
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 411
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_25
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 413
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 414
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist queryCratesForUid(Ljava/util/UUID;I)Ljava/util/Collection;
    .registers 6
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "I)",
            "Ljava/util/Collection<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 374
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    .line 375
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    .line 376
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-interface {v0, v1, p2, v2}, Landroid/app/usage/IStorageStatsManager;->queryCratesForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 377
    .local v0, "crateInfoList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/os/storage/CrateInfo;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_1a} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v1

    .line 382
    .end local v0    # "crateInfoList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/os/storage/CrateInfo;>;"
    :catch_1b
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 378
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_21
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 380
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 381
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist queryCratesForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Ljava/util/Collection;
    .registers 7
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    .line 440
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-interface {v0, v1, v2, v3}, Landroid/app/usage/IStorageStatsManager;->queryCratesForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 442
    .local v0, "crateInfoList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/os/storage/CrateInfo;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1e
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_1e} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v1

    .line 447
    .end local v0    # "crateInfoList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/os/storage/CrateInfo;>;"
    :catch_1f
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_25
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 445
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 446
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist queryExternalStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;
    .registers 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryExternalStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;
    .registers 7
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    .line 331
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-interface {v0, v1, v2, v3}, Landroid/app/usage/IStorageStatsManager;->queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_14} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    .line 335
    :catch_15
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 332
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 334
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;
    .registers 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;
    .registers 8
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/app/usage/IStorageStatsManager;->queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_14} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    .line 219
    :catch_15
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 217
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 218
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;
    .registers 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/util/UUID;I)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryStatsForUid(Ljava/util/UUID;I)Landroid/app/usage/StorageStats;
    .registers 6
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-interface {v0, v1, p2, v2}, Landroid/app/usage/IStorageStatsManager;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 260
    :catch_11
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 259
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist queryStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;
    .registers 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;
    .registers 7
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-interface {v0, v1, v2, v3}, Landroid/app/usage/IStorageStatsManager;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_14} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    .line 298
    :catch_15
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 295
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 297
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
