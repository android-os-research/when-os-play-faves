.class public Lcom/android/server/backup/KeyValueAdbBackupEngine;
.super Ljava/lang/Object;
.source "KeyValueAdbBackupEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
    }
.end annotation


# static fields
.field public static final BACKUP_KEY_VALUE_BACKUP_DATA_FILENAME_SUFFIX:Ljava/lang/String; = ".data"

.field public static final BACKUP_KEY_VALUE_BLANK_STATE_FILENAME:Ljava/lang/String; = "blank_state"

.field public static final BACKUP_KEY_VALUE_DIRECTORY_NAME:Ljava/lang/String; = "key_value_dir"

.field public static final BACKUP_KEY_VALUE_NEW_STATE_FILENAME_SUFFIX:Ljava/lang/String; = ".new"

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "KeyValueAdbBackupEngine"


# instance fields
.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mBackupData:Landroid/os/ParcelFileDescriptor;

.field public final mBackupDataName:Ljava/io/File;

.field public mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBlankStateName:Ljava/io/File;

.field public final mCurrentPackage:Landroid/content/pm/PackageInfo;

.field public final mDataDir:Ljava/io/File;

.field public final mManifestFile:Ljava/io/File;

.field public mNewState:Landroid/os/ParcelFileDescriptor;

.field public final mNewStateName:Ljava/io/File;

.field public final mOutput:Ljava/io/OutputStream;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mSavedState:Landroid/os/ParcelFileDescriptor;

.field public final mStateDir:Ljava/io/File;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBackupDataName(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackupManagerService(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataDir(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmManifestFile(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public constructor <init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V
    .registers 8

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 74
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 75
    iput-object p3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 76
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 78
    iput-object p6, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    .line 79
    new-instance p1, Ljava/io/File;

    const-string/jumbo p4, "key_value_dir"

    invoke-direct {p1, p5, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 82
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 84
    new-instance p4, Ljava/io/File;

    const-string p5, "blank_state"

    invoke-direct {p4, p1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    .line 85
    new-instance p4, Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".data"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p6, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    .line 87
    new-instance p4, Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".new"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    .line 90
    new-instance p1, Ljava/io/File;

    const-string p2, "_manifest"

    invoke-direct {p1, p6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;

    .line 92
    invoke-virtual {p3}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p1

    const-string p2, "Timeout parameters cannot be null"

    .line 91
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-void
.end method


# virtual methods
.method public backupOnePackage()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "KeyValueAdbBackupEngine"

    .line 97
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 100
    :try_start_6
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->prepareBackupFiles(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->bindToAgent(Landroid/content/pm/ApplicationInfo;)Landroid/app/IBackupAgent;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed binding to BackupAgent for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_29} :catch_5c
    .catchall {:try_start_6 .. :try_end_29} :catchall_5a

    .line 125
    invoke-virtual {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    return-void

    .line 112
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->invokeAgentForAdbBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup Failed for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_4f} :catch_5c
    .catchall {:try_start_2d .. :try_end_4f} :catchall_5a

    .line 125
    invoke-virtual {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    return-void

    .line 119
    :cond_53
    :try_start_53
    invoke-virtual {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->writeBackupData()V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_56} :catch_5c
    .catchall {:try_start_53 .. :try_end_56} :catchall_5a

    .line 125
    :goto_56
    invoke-virtual {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    goto :goto_7e

    :catchall_5a
    move-exception v0

    goto :goto_7f

    :catch_5c
    move-exception v1

    .line 121
    :try_start_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed creating files for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " will ignore package. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_5d .. :try_end_7d} :catchall_5a

    goto :goto_56

    :goto_7e
    return-void

    .line 125
    :goto_7f
    invoke-virtual {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 126
    throw v0
.end method

.method public final bindToAgent(Landroid/content/pm/ApplicationInfo;)Landroid/app/IBackupAgent;
    .registers 4

    .line 149
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error in binding to agent for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueAdbBackupEngine"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final cleanup()V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 303
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 304
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 305
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final invokeAgentForAdbBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "KeyValueAdbBackupEngine"

    .line 161
    iget-object v3, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v3

    .line 162
    iget-object v4, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v6

    const/4 v10, 0x0

    .line 164
    :try_start_13
    iget-object v4, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 167
    new-instance v4, Lcom/android/server/backup/remote/ServiceBackupCallback;

    iget-object v5, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 169
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/server/backup/remote/ServiceBackupCallback;-><init>(Landroid/app/backup/IBackupManager;I)V

    .line 171
    iget-object v12, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v13, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v14, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewState:Landroid/os/ParcelFileDescriptor;

    const-wide v15, 0x7fffffffffffffffL

    const/16 v18, 0x0

    move-object/from16 v11, p2

    move-object/from16 v17, v4

    invoke-interface/range {v11 .. v18}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    .line 178
    iget-object v0, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    if-nez v0, :cond_57

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key-value backup failed on package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_56} :catch_59

    return v10

    :cond_57
    const/4 v0, 0x1

    return v0

    :catch_59
    move-exception v0

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error invoking agent for backup on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method public final prepareBackupFiles(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 133
    iget-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    const/high16 v0, 0x18000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 136
    iget-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    const/high16 v0, 0x3c000000    # 0.0078125f

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 139
    iget-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-static {p1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELinux restorecon failed on "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyValueAdbBackupEngine"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_34
    iget-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewState:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public final writeBackupData()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "KeyValueAdbBackupEngine"

    .line 257
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    .line 258
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 262
    :try_start_11
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v11
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_74
    .catchall {:try_start_11 .. :try_end_15} :catchall_72

    .line 264
    :try_start_15
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 272
    new-instance v2, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    aget-object v4, v11, v10

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;-><init>(Lcom/android/server/backup/KeyValueAdbBackupEngine;Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)V

    .line 274
    aget-object v3, v11, v10

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 275
    aput-object v8, v11, v10

    .line 276
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "key-value-app-data-runner"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 280
    aget-object v2, v11, v9

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-static {v2, v3}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 282
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full backup failed on package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_5f} :catch_6f
    .catchall {:try_start_15 .. :try_end_5f} :catchall_6c

    .line 293
    :cond_5f
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 295
    aget-object p0, v11, v9

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 296
    aget-object p0, v11, v10

    goto :goto_a3

    :catchall_6c
    move-exception v0

    move-object v8, v11

    goto :goto_a7

    :catch_6f
    move-exception v1

    move-object v8, v11

    goto :goto_75

    :catchall_72
    move-exception v0

    goto :goto_a7

    :catch_74
    move-exception v1

    .line 290
    :goto_75
    :try_start_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error backing up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_75 .. :try_end_95} :catchall_72

    .line 293
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    if-eqz v8, :cond_a6

    .line 295
    aget-object p0, v8, v9

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 296
    aget-object p0, v8, v10

    :goto_a3
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_a6
    return-void

    .line 293
    :goto_a7
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    if-eqz v8, :cond_b8

    .line 295
    aget-object p0, v8, v9

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 296
    aget-object p0, v8, v10

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 298
    :cond_b8
    throw v0
.end method
