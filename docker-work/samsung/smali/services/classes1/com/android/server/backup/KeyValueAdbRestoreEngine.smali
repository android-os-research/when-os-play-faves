.class public Lcom/android/server/backup/KeyValueAdbRestoreEngine;
.super Ljava/lang/Object;
.source "KeyValueAdbRestoreEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "KeyValueAdbRestoreEngine"


# instance fields
.field public final mAgent:Landroid/app/IBackupAgent;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mDataDir:Ljava/io/File;

.field public final mInFD:Landroid/os/ParcelFileDescriptor;

.field public final mInfo:Lcom/android/server/backup/FileMetadata;

.field public final mToken:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V
    .registers 7

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 52
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    .line 53
    iput-object p3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    .line 54
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    .line 55
    iput-object p5, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 56
    iput p6, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    return-void
.end method


# virtual methods
.method public final copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 127
    :goto_5
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 128
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    if-gez v1, :cond_19

    .line 131
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_5

    .line 134
    :cond_19
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p1, v2, v3, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 136
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 138
    :cond_23
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 142
    array-length v2, v1

    invoke-virtual {p2, v0, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 143
    array-length v0, v1

    invoke-virtual {p2, v1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_33

    :cond_4e
    return-void
.end method

.method public final invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "KeyValueAdbRestoreEngine"

    .line 84
    iget-object v1, p2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 85
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".new"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 88
    :try_start_1e
    invoke-static {p3, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const/high16 p3, 0x3c000000    # 0.0078125f

    .line 89
    invoke-static {v2, p3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 96
    iget-wide v5, p2, Lcom/android/server/backup/FileMetadata;->version:J

    iget v8, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 97
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v9

    move-object v3, p1

    .line 96
    invoke-interface/range {v3 .. v9}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_36} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_36} :catch_37

    goto :goto_62

    :catch_37
    move-exception p0

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception calling doRestore on agent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :catch_4d
    move-exception p0

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception opening file. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    return-void
.end method

.method public final prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 72
    new-instance v10, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    new-instance v11, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".sorted"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    iget v4, p1, Lcom/android/server/backup/FileMetadata;->type:I

    iget-wide v5, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v7, p1, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-object v1, p2

    move-object v9, v10

    invoke-static/range {v1 .. v9}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 78
    invoke-virtual {p0, v10, v11}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->sortKeyValueData(Ljava/io/File;Ljava/io/File;)V

    return-object v11
.end method

.method public run()V
    .registers 4

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public final sortKeyValueData(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2d

    .line 110
    :try_start_6
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_29

    .line 111
    :try_start_b
    new-instance p2, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 112
    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 113
    invoke-virtual {p0, p2, v0}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_27

    .line 116
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 119
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_27
    move-exception p0

    goto :goto_2b

    :catchall_29
    move-exception p0

    move-object p1, v0

    :goto_2b
    move-object v0, v1

    goto :goto_2f

    :catchall_2d
    move-exception p0

    move-object p1, v0

    :goto_2f
    if-eqz v0, :cond_34

    .line 116
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_34
    if-eqz p1, :cond_39

    .line 119
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 121
    :cond_39
    throw p0
.end method
