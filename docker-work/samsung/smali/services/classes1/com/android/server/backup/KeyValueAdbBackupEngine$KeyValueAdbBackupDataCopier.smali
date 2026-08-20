.class public Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
.super Ljava/lang/Object;
.source "KeyValueAdbBackupEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/KeyValueAdbBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyValueAdbBackupDataCopier"
.end annotation


# instance fields
.field public final mPackage:Landroid/content/pm/PackageInfo;

.field public final mPipe:Landroid/os/ParcelFileDescriptor;

.field public final mToken:I

.field public final synthetic this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/KeyValueAdbBackupEngine;Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    .line 201
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 202
    iput p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mToken:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const-string v0, "KeyValueAdbBackupEngine"

    .line 208
    :try_start_2
    new-instance v6, Landroid/app/backup/FullBackupDataOutput;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v6, v1}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 209
    new-instance v7, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmPackageManager(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v7, v6, v1}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;-><init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V

    .line 216
    iget-object v8, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmManifestFile(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v9

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmDataDir(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v10

    const-string/jumbo v11, "k"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmManifestFile(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 228
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "k"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v4}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmDataDir(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v4

    .line 229
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v5}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmBackupDataName(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v5

    .line 230
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_52} :catch_7d
    .catchall {:try_start_2 .. :try_end_52} :catchall_7b

    .line 235
    :try_start_52
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 237
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_63} :catch_64
    .catchall {:try_start_52 .. :try_end_63} :catchall_7b

    goto :goto_69

    :catch_64
    :try_start_64
    const-string v1, "Unable to finalize backup stream!"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_69} :catch_7d
    .catchall {:try_start_64 .. :try_end_69} :catchall_7b

    .line 243
    :goto_69
    :try_start_69
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->-$$Nest$fgetmBackupManagerService(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mToken:I

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_7a} :catch_9e
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_7a} :catch_7d
    .catchall {:try_start_69 .. :try_end_7a} :catchall_7b

    goto :goto_9e

    :catchall_7b
    move-exception v0

    goto :goto_a4

    :catch_7d
    move-exception v1

    .line 249
    :try_start_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running full backup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_7e .. :try_end_9e} :catchall_7b

    .line 251
    :catch_9e
    :goto_9e
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_a4
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 252
    throw v0
.end method
