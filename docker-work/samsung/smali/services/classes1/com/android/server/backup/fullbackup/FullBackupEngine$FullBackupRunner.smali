.class public Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/fullbackup/FullBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullBackupRunner"
.end annotation


# instance fields
.field public final mAgent:Landroid/app/IBackupAgent;

.field public mExtraFlag:I

.field public final mFilesDir:Ljava/io/File;

.field public final mIncludeApks:Z

.field public final mPackage:Landroid/content/pm/PackageInfo;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPipe:Landroid/os/ParcelFileDescriptor;

.field public mSmartSwitchBackupPath:[Ljava/lang/String;

.field public final mToken:I

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZI[Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    .line 103
    invoke-static {p1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 104
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 105
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 106
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 107
    iput p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    .line 108
    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    .line 109
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    .line 111
    iput p8, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mExtraFlag:I

    .line 112
    iput-object p9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSmartSwitchBackupPath:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-string v0, "BackupManagerService"

    .line 118
    :try_start_2
    new-instance v1, Landroid/app/backup/FullBackupDataOutput;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    const-wide/16 v3, -0x1

    iget-object v5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v5}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmTransportFlags(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    .line 120
    new-instance v2, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;

    iget-object v3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v1, v3}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;-><init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V

    .line 123
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.sharedstoragebackup"

    .line 124
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 125
    iget-object v4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    .line 126
    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->shouldWriteApk(Landroid/content/pm/ApplicationInfo;ZZ)Z

    move-result v4

    if-nez v3, :cond_5f

    .line 133
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const-string v7, "_manifest"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    invoke-virtual {v2, v6, v5, v7, v4}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Z)V

    .line 136
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 139
    iget v5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    .line 140
    invoke-static {v1, v5}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v5

    if-eqz v5, :cond_5f

    .line 141
    array-length v6, v5

    if-lez v6, :cond_5f

    .line 142
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const-string v8, "_meta"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    iget-object v7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    invoke-virtual {v2, v7, v6, v8, v5}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupWidget(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;[B)V

    .line 145
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_5f
    if-eqz v4, :cond_6d

    .line 151
    iget-object v4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v2, v4}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupApk(Landroid/content/pm/PackageInfo;)V

    .line 152
    iget v4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    iget-object v5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupObb(ILandroid/content/pm/PackageInfo;)V

    .line 156
    :cond_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling doFullBackup() on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8e

    .line 161
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v1

    goto :goto_98

    .line 162
    :cond_8e
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v1

    :goto_98
    move-wide v5, v1

    .line 163
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v3

    iget v4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmTimeoutMonitor(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupRestoreTask;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 168
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSmartSwitchBackupPath:[Ljava/lang/String;

    if-eqz v1, :cond_d1

    .line 169
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmQuota(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmTransportFlags(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 169
    invoke-interface/range {v2 .. v9}, Landroid/app/IBackupAgent;->doFullBackupPath(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I[Ljava/lang/String;)V

    goto :goto_f0

    .line 177
    :cond_d1
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmQuota(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$fgetmTransportFlags(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v8

    .line 177
    invoke-interface/range {v2 .. v8}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f0} :catch_126
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f0} :catch_f8
    .catchall {:try_start_2 .. :try_end_f0} :catchall_f6

    .line 205
    :cond_f0
    :goto_f0
    :try_start_f0
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f5} :catch_154

    goto :goto_154

    :catchall_f6
    move-exception v0

    goto :goto_155

    :catch_f8
    move-exception v1

    .line 193
    :try_start_f9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote agent vanished during full backup of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    invoke-static {}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$sfgetmBackupManagerYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    if-eqz v0, :cond_f0

    .line 199
    invoke-static {}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$sfgetmBackupManagerYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 200
    invoke-static {}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$sfgetmBackupManagerYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    goto :goto_f0

    :catch_126
    move-exception v1

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running full backup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    invoke-static {}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$sfgetmBackupManagerYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    if-eqz v0, :cond_f0

    .line 188
    invoke-static {}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$sfgetmBackupManagerYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 189
    invoke-static {}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->-$$Nest$sfgetmBackupManagerYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_153
    .catchall {:try_start_f9 .. :try_end_153} :catchall_f6

    goto :goto_f0

    :catch_154
    :goto_154
    return-void

    .line 205
    :goto_155
    :try_start_155
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_15a} :catch_15a

    .line 208
    :catch_15a
    throw v0
.end method

.method public final shouldWriteApk(Landroid/content/pm/ApplicationInfo;ZZ)Z
    .registers 6

    .line 216
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    move p1, v1

    goto :goto_b

    :cond_a
    move p1, v0

    :goto_b
    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_11

    move p0, v1

    goto :goto_12

    :cond_11
    move p0, v0

    :goto_12
    if-eqz p2, :cond_1b

    if-nez p3, :cond_1b

    if-eqz p1, :cond_1a

    if-eqz p0, :cond_1b

    :cond_1a
    move v0, v1

    :cond_1b
    return v0
.end method
