.class public Lcom/android/server/backup/fullbackup/FullBackupEngine;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    }
.end annotation


# static fields
.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public mAgent:Landroid/app/IBackupAgent;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public mExtraFlag:I

.field public mIncludeApks:Z

.field public final mOpToken:I

.field public mOutput:Ljava/io/OutputStream;

.field public mPkg:Landroid/content/pm/PackageInfo;

.field public mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

.field public mPrivilegeApp:Z

.field public final mQuota:J

.field public mSmartSwitchBackupPath:[Ljava/lang/String;

.field public mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

.field public final mTransportFlags:I


# direct methods
.method public static synthetic $r8$lambda$5C9QHzTUUVvzmUMxjpVqc5wgArc(Lcom/android/server/backup/fullbackup/FullBackupEngine;JJLandroid/app/backup/IBackupCallback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->lambda$sendQuotaExceeded$0(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetbackupManagerService(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuota(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeoutMonitor(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupRestoreTask;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransportFlags(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I
    .registers 1

    iget p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmBackupManagerYuva()Lcom/android/server/backup/BackupManagerYuva;
    .registers 1

    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;IZ[Ljava/lang/String;)V
    .registers 15

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 240
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 241
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    .line 242
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 243
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    .line 244
    iput-object p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    .line 245
    iput-wide p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    .line 246
    iput p9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    .line 247
    iput p10, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    .line 249
    iput p12, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mExtraFlag:I

    .line 250
    iput-boolean p13, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPrivilegeApp:Z

    .line 251
    iput-object p14, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p1

    const-string p2, "Timeout parameters cannot be null"

    .line 254
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 257
    iput-object p11, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 258
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object p0

    sput-object p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    return-void
.end method

.method private synthetic lambda$sendQuotaExceeded$0(JJLandroid/app/backup/IBackupCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method


# virtual methods
.method public backupOnePackage()I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    const-string v12, "Error bringing down backup stack"

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    const/16 v13, -0x3eb

    const-string v14, "BackupManagerService"

    if-eqz v0, :cond_10c

    const/16 v15, -0x3e8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 286
    :try_start_16
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v19
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_9d
    .catchall {:try_start_16 .. :try_end_1a} :catchall_9b

    .line 288
    :try_start_1a
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;

    iget-object v3, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v5, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    aget-object v6, v19, v18

    iget v7, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    iget-boolean v8, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    iget v9, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mExtraFlag:I

    iget-object v10, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mSmartSwitchBackupPath:[Ljava/lang/String;

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZI[Ljava/lang/String;)V

    .line 298
    aget-object v1, v19, v18

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 299
    aput-object v16, v19, v18

    .line 300
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "app-data-runner"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 303
    aget-object v0, v19, v17

    iget-object v1, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 305
    iget-object v0, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    if-nez v0, :cond_74

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Full backup failed on package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_76

    .line 308
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_73} :catch_97
    .catchall {:try_start_1a .. :try_end_73} :catchall_93

    goto :goto_76

    :cond_74
    move/from16 v13, v17

    .line 325
    :cond_76
    :goto_76
    :try_start_76
    iget-object v0, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 327
    aget-object v0, v19, v17

    if-eqz v0, :cond_82

    .line 328
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 330
    :cond_82
    aget-object v0, v19, v18

    if-eqz v0, :cond_12b

    .line 331
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_89} :catch_8b

    goto/16 :goto_12b

    .line 335
    :catch_8b
    invoke-static {v14, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_e9

    goto :goto_e6

    :catchall_93
    move-exception v0

    move-object/from16 v16, v19

    goto :goto_eb

    :catch_97
    move-exception v0

    move-object/from16 v16, v19

    goto :goto_9e

    :catchall_9b
    move-exception v0

    goto :goto_eb

    :catch_9d
    move-exception v0

    .line 317
    :goto_9e
    :try_start_9e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error backing up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_c9

    .line 319
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_c9
    .catchall {:try_start_9e .. :try_end_c9} :catchall_9b

    .line 325
    :cond_c9
    :try_start_c9
    iget-object v0, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    if-eqz v16, :cond_12b

    .line 327
    aget-object v0, v16, v17

    if-eqz v0, :cond_d7

    .line 328
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 330
    :cond_d7
    aget-object v0, v16, v18

    if-eqz v0, :cond_12b

    .line 331
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_de} :catch_df

    goto :goto_12b

    .line 335
    :catch_df
    invoke-static {v14, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_e9

    .line 338
    :goto_e6
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    :cond_e9
    move v13, v15

    goto :goto_12b

    .line 325
    :goto_eb
    :try_start_eb
    iget-object v1, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    if-eqz v16, :cond_10b

    .line 327
    aget-object v1, v16, v17

    if-eqz v1, :cond_f9

    .line 328
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 330
    :cond_f9
    aget-object v1, v16, v18

    if-eqz v1, :cond_10b

    .line 331
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_100} :catch_101

    goto :goto_10b

    .line 335
    :catch_101
    invoke-static {v14, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v1, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v1, :cond_10b

    .line 338
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 341
    :cond_10b
    :goto_10b
    throw v0

    .line 343
    :cond_10c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind to full agent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_12b

    .line 345
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 348
    :cond_12b
    :goto_12b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->tearDown()V

    return v13
.end method

.method public final initializeAgent()Z
    .registers 5

    .line 365
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 369
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 372
    invoke-virtual {v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v3

    .line 370
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 374
    :cond_17
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method public preflightCheck()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 268
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 269
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0, v1, p0}, Lcom/android/server/backup/fullbackup/FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result p0

    return p0

    .line 275
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind to full agent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3eb

    return p0
.end method

.method public sendQuotaExceeded(JJ)V
    .registers 12

    .line 353
    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 355
    :try_start_6
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;JJ)V

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 357
    invoke-virtual {p0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide p0

    .line 355
    invoke-static {v0, p0, p1}, Lcom/android/server/backup/remote/RemoteCall;->execute(Lcom/android/server/backup/remote/RemoteCallable;J)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    const-string p0, "BackupManagerService"

    const-string p1, "Remote exception while telling agent about quota exceeded"

    .line 359
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public final tearDown()V
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_b

    .line 379
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    :cond_b
    return-void
.end method
