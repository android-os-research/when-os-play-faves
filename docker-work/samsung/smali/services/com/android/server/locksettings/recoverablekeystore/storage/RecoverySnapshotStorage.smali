.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
.super Ljava/lang/Object;
.source "RecoverySnapshotStorage.java"


# static fields
.field public static final ROOT_PATH:Ljava/lang/String; = "system"

.field public static final STORAGE_PATH:Ljava/lang/String; = "recoverablekeystore/snapshots/"

.field public static final TAG:Ljava/lang/String; = "RecoverySnapshotStorage"


# instance fields
.field public final mSnapshotByUid:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/security/keystore/recovery/KeyChainSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public final rootDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    .line 75
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->rootDirectory:Ljava/io/File;

    return-void
.end method

.method public static newInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .registers 4

    .line 69
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    new-instance v1, Ljava/io/File;

    .line 70
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 8

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/recovery/KeyChainSnapshot;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2e

    if-eqz v0, :cond_d

    .line 100
    monitor-exit p0

    return-object v0

    .line 104
    :cond_d
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->readFromDisk(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_13
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_d .. :try_end_11} :catch_13
    .catchall {:try_start_d .. :try_end_11} :catchall_2e

    monitor-exit p0

    return-object p1

    :catch_13
    move-exception v0

    :try_start_14
    const-string v1, "RecoverySnapshotStorage"

    .line 106
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Error reading snapshot for %d from disk"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_2e

    const/4 p1, 0x0

    .line 107
    monitor-exit p0

    return-object p1

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getSnapshotFile(I)Ljava/io/File;
    .registers 3

    .line 164
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getStorageFolder()Ljava/io/File;

    move-result-object v0

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFileName(I)Ljava/lang/String;

    move-result-object p0

    .line 166
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getSnapshotFileName(I)Ljava/lang/String;
    .registers 4

    .line 170
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%d.xml"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStorageFolder()Ljava/io/File;
    .registers 3

    .line 174
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->rootDirectory:Ljava/io/File;

    const-string/jumbo v1, "recoverablekeystore/snapshots/"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public declared-synchronized put(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V
    .registers 8

    monitor-enter p0

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    .line 85
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->writeToDisk(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_6 .. :try_end_9} :catch_a
    .catchall {:try_start_6 .. :try_end_9} :catchall_24

    goto :goto_22

    :catch_a
    move-exception p2

    :try_start_b
    const-string v0, "RecoverySnapshotStorage"

    .line 87
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Error persisting snapshot for %d to disk"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_24

    .line 91
    :goto_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final readFromDisk(I)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    move-result-object p0

    .line 152
    :try_start_4
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_1b
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_4 .. :try_end_9} :catch_1b

    .line 154
    :try_start_9
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->deserialize(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 155
    :try_start_d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1b
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_d .. :try_end_10} :catch_1b

    return-object v0

    :catchall_11
    move-exception v0

    .line 151
    :try_start_12
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    :try_start_17
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1b
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_17 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception p1

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 159
    throw p1
.end method

.method public declared-synchronized remove(I)V
    .registers 3

    monitor-enter p0

    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 117
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final writeToDisk(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    move-result-object p0

    .line 129
    :try_start_4
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_1a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_9} :catch_1a

    .line 131
    :try_start_9
    invoke-static {p2, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->serialize(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    .line 132
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_1a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_f} :catch_1a

    return-void

    :catchall_10
    move-exception p2

    .line 128
    :try_start_11
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception p1

    :try_start_16
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw p2
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_1a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_16 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception p1

    .line 135
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 136
    throw p1
.end method
