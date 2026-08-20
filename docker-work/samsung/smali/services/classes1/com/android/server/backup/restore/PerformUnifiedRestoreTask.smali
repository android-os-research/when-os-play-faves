.class public Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.super Ljava/lang/Object;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
    }
.end annotation


# instance fields
.field public backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public mAcceptSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAgent:Landroid/app/IBackupAgent;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mBackupData:Landroid/os/ParcelFileDescriptor;

.field public mBackupDataName:Ljava/io/File;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public mCount:I

.field public mCurrentPackage:Landroid/content/pm/PackageInfo;

.field public mDidLaunch:Z

.field public final mEphemeralOpToken:I

.field public mFinished:Z

.field public mIsSystemRestore:Z

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field public mNewState:Landroid/os/ParcelFileDescriptor;

.field public mNewStateName:Ljava/io/File;

.field public mObserver:Landroid/app/backup/IRestoreObserver;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field public mPmToken:I

.field public mRestoreDescription:Landroid/app/backup/RestoreDescription;

.field public mStageName:Ljava/io/File;

.field public mStartRealtime:J

.field public mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public mStateDir:Ljava/io/File;

.field public mStatus:I

.field public mTargetPackage:Landroid/content/pm/PackageInfo;

.field public mToken:J

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;

.field public final mUserId:I

.field public mWidgetData:[B


# direct methods
.method public static bridge synthetic -$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackupEligibilityRules(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMonitor(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOperationStorage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/OperationStorage;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMonitor(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/backup/IBackupManagerMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 173
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 174
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 175
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 176
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const/4 v1, 0x0

    .line 177
    iput v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 178
    iput v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 179
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 180
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 16

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 199
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 200
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 201
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 202
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 203
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStartRealtime:J

    .line 206
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 207
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 208
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 209
    iput-wide p6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    .line 210
    iput p9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    .line 211
    iput-object p8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 212
    iput-boolean p10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    const/4 p3, 0x0

    .line 213
    iput-boolean p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    .line 214
    iput-boolean p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 215
    iput-object p12, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 217
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p4

    const-string p5, "Timeout parameters cannot be null"

    .line 216
    invoke-static {p4, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p5, p4

    check-cast p5, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 219
    iput-object p13, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    if-eqz p8, :cond_56

    .line 223
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 224
    invoke-interface {p2, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e5

    :cond_56
    if-nez p11, :cond_80

    .line 231
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    .line 230
    invoke-static {p4, p2, p13}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;

    move-result-object p2

    .line 233
    invoke-virtual {p0, p2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->packagesToNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p11

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Full restore; asking about "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p11

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " apps"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "BackupManagerService"

    invoke-static {p4, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_80
    new-instance p2, Ljava/util/ArrayList;

    array-length p4, p11

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move p2, p3

    move p4, p2

    move p5, p4

    .line 246
    :goto_8b
    array-length p6, p11

    const-string p7, "com.android.providers.settings"

    const-string p8, "android"

    if-ge p2, p6, :cond_c3

    const/4 p6, 0x1

    .line 248
    :try_start_93
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p9

    .line 249
    aget-object p10, p11, p2

    iget p12, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-virtual {p9, p10, p3, p12}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p9

    .line 250
    iget-object p10, p9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p8, p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_a9

    move p4, p6

    goto :goto_c0

    .line 254
    :cond_a9
    iget-object p8, p9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p7, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_b3

    move p5, p6

    goto :goto_c0

    .line 259
    :cond_b3
    iget-object p6, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p13, p6}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result p6

    if-eqz p6, :cond_c0

    .line 260
    iget-object p6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {p6, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_93 .. :try_end_c0} :catch_c0

    :catch_c0
    :cond_c0
    :goto_c0
    add-int/lit8 p2, p2, 0x1

    goto :goto_8b

    :cond_c3
    if-eqz p4, :cond_d4

    .line 268
    :try_start_c5
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    iget p6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-virtual {p4, p8, p3, p6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_d4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c5 .. :try_end_d4} :catch_d4

    :catch_d4
    :cond_d4
    if-eqz p5, :cond_e5

    .line 276
    :try_start_d6
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    iget p5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-virtual {p4, p7, p3, p5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d6 .. :try_end_e5} :catch_e5

    .line 284
    :catch_e5
    :cond_e5
    :goto_e5
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final dispatchNextRestore()V
    .registers 18

    move-object/from16 v1, p0

    const-string v2, "BackupManagerService"

    .line 501
    sget-object v3, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    const/16 v4, 0xb0f

    const/4 v5, 0x0

    .line 503
    :try_start_9
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v6, "PerformUnifiedRestoreTask.dispatchNextRestore()"

    .line 504
    invoke-virtual {v0, v6}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    const/4 v6, 0x0

    if-eqz v0, :cond_1f

    .line 508
    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1f
    move-object v0, v6

    :goto_20
    if-nez v0, :cond_30

    const-string v0, "Failure getting next package name"

    .line 510
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v5, [Ljava/lang/Object;

    .line 511
    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2c} :catch_1d8
    .catchall {:try_start_9 .. :try_end_2c} :catchall_1d6

    .line 628
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 514
    :cond_30
    :try_start_30
    iget-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    sget-object v8, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v7, v8, :cond_5e

    const-string v0, "No more packages; finishing restore"

    .line 517
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStartRealtime:J

    sub-long/2addr v6, v11

    long-to-int v0, v6

    const/16 v6, 0xb12

    new-array v7, v9, [Ljava/lang/Object;

    .line 520
    iget v8, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_5a} :catch_1d8
    .catchall {:try_start_30 .. :try_end_5a} :catchall_1d6

    .line 628
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 526
    :cond_5e
    :try_start_5e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next restore package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    .line 530
    iget-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v7, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v7

    const/16 v8, 0xb10

    if-nez v7, :cond_a6

    .line 532
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No metadata for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v5

    const-string v0, "Package metadata missing"

    aput-object v0, v6, v10

    .line 533
    invoke-static {v8, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 535
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_a2} :catch_1d8
    .catchall {:try_start_5e .. :try_end_a2} :catchall_1d6

    .line 628
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    :cond_a6
    const/4 v11, 0x3

    .line 540
    :try_start_a7
    iget-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v12}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/high16 v13, 0x8000000

    iget v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-virtual {v12, v0, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iput-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    :try_end_b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a7 .. :try_end_b7} :catch_1a1
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b7} :catch_1d8
    .catchall {:try_start_a7 .. :try_end_b7} :catchall_1d6

    .line 557
    :try_start_b7
    iget-wide v13, v7, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {v12}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v15

    cmp-long v12, v13, v15

    if-lez v12, :cond_170

    .line 561
    iget-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c7} :catch_1d8
    .catchall {:try_start_b7 .. :try_end_c7} :catchall_1d6

    const/high16 v13, 0x20000

    and-int/2addr v12, v13

    const/16 v13, 0x1b

    const-string v14, "android.app.backup.extra.LOG_RESTORE_ANYWAY"

    const-string v15, "android.app.backup.extra.LOG_RESTORE_VERSION"

    const-string v4, " > installed version "

    const-string v8, "Source version "

    if-nez v12, :cond_136

    .line 563
    :try_start_d6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 564
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 565
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-wide v7, v7, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-static {v6, v15, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v6

    .line 569
    invoke-static {v6, v14, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 572
    iget-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v7, v13, v8, v11, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    const/4 v0, 0x1

    aput-object v4, v6, v0

    const/16 v0, 0xb10

    .line 577
    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 579
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_132} :catch_1d8
    .catchall {:try_start_d6 .. :try_end_132} :catchall_1d6

    .line 628
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 583
    :cond_136
    :try_start_136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v7, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 584
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " but restoreAnyVersion"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-wide v7, v7, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-static {v6, v15, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v0

    const/4 v4, 0x1

    .line 590
    invoke-static {v0, v14, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 593
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v4, v13, v7, v11, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 609
    :cond_170
    iput-object v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 610
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_17e

    .line 612
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_183

    :cond_17e
    const/4 v4, 0x2

    if-ne v0, v4, :cond_187

    .line 614
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_183} :catch_1d8
    .catchall {:try_start_136 .. :try_end_183} :catchall_1d6

    .line 628
    :goto_183
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 617
    :cond_187
    :try_start_187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized restore type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_19d} :catch_1d8
    .catchall {:try_start_187 .. :try_end_19d} :catchall_1d6

    .line 628
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 545
    :catch_1a1
    :try_start_1a1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package not present: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x1a

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v4, v7, v8, v11, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const-string v0, "Package missing on device"

    const/4 v6, 0x1

    aput-object v0, v4, v6

    const/16 v0, 0xb10

    .line 551
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 553
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1d2} :catch_1d8
    .catchall {:try_start_1a1 .. :try_end_1d2} :catchall_1d6

    .line 628
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    :catchall_1d6
    move-exception v0

    goto :goto_1fe

    :catch_1d8
    move-exception v0

    .line 622
    :try_start_1d9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get next restore target from transport; halting: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v5, [Ljava/lang/Object;

    const/16 v2, 0xb0f

    .line 624
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 625
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_1fa
    .catchall {:try_start_1d9 .. :try_end_1fa} :catchall_1d6

    .line 628
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    :goto_1fe
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 629
    throw v0
.end method

.method public execute()V
    .registers 3

    .line 309
    sget-object v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$1;->$SwitchMap$com$android$server$backup$restore$UnifiedRestoreState:[I

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    goto :goto_34

    .line 331
    :pswitch_e
    iget-boolean v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    if-nez v0, :cond_16

    .line 332
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->finalizeRestore()V

    goto :goto_1d

    :cond_16
    const-string v0, "BackupManagerService"

    const-string v1, "Duplicate finish"

    .line 334
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    goto :goto_34

    .line 327
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreFinished()V

    goto :goto_34

    .line 323
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreFull()V

    goto :goto_34

    .line 319
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreKeyValue()V

    goto :goto_34

    .line 315
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->dispatchNextRestore()V

    goto :goto_34

    .line 311
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->startRestore()V

    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_e
    .end packed-switch
.end method

.method public executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    .registers 3

    .line 1356
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1357
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x14

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1359
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public filterExcludedKeys(Ljava/lang/String;Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 813
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 816
    :goto_8
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 817
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    const-string v4, "BackupManagerService"

    if-eqz v0, :cond_38

    .line 820
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping blocked key "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_8

    :cond_38
    const-string/jumbo v5, "\uffed\uffedwidget"

    .line 827
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5e

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring widget state for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 832
    invoke-virtual {p2, v2, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    goto :goto_8

    .line 834
    :cond_5e
    array-length v4, v1

    if-le v3, v4, :cond_63

    .line 835
    new-array v1, v3, [B

    .line 837
    :cond_63
    invoke-virtual {p2, v1, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 838
    invoke-virtual {p3, v2, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 839
    invoke-virtual {p3, v1, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_8

    :cond_6d
    return-void
.end method

.method public final finalizeRestore()V
    .registers 7

    const-string v0, "PerformUnifiedRestoreTask.finalizeRestore()"

    .line 1104
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 1105
    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v1

    .line 1106
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->finishRestore()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v1

    const-string v2, "BackupManagerService"

    const-string v3, "Error finishing restore"

    .line 1108
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1112
    :goto_14
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_25

    .line 1114
    :try_start_18
    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer died at restoreFinished"

    .line 1116
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1125
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    if-lez v1, :cond_42

    .line 1130
    :try_start_34
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManagerBinder()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    iget-boolean v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_41} :catch_51

    goto :goto_51

    .line 1136
    :cond_42
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1137
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    move-result-wide v3

    .line 1138
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1143
    :catch_51
    :goto_51
    iget-boolean v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v1, :cond_5a

    .line 1145
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->systemRestoreFinished(I)V

    .line 1150
    :cond_5a
    iget-boolean v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    if-eqz v1, :cond_82

    .line 1151
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralPackages(Ljava/util/Set;)V

    .line 1152
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-wide v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralToken(J)V

    .line 1153
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 1154
    invoke-virtual {v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v2

    .line 1153
    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralOperationType(I)V

    .line 1155
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 1158
    :cond_82
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 1159
    :try_start_89
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_be

    const-string v2, "BackupManagerService"

    const-string v3, "Starting next pending restore."

    .line 1161
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 1164
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1165
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1164
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c4

    .line 1169
    :cond_be
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRestoreInProgress(Z)V

    .line 1174
    :goto_c4
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_89 .. :try_end_c5} :catchall_d2

    const-string v1, "BackupManagerService"

    const-string v2, "Restore complete."

    .line 1176
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {p0, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    return-void

    :catchall_d2
    move-exception p0

    .line 1174
    :try_start_d3
    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw p0
.end method

.method public getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 807
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getExcludedRestoreKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public handleCancel(Z)V
    .registers 6

    .line 1339
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    invoke-interface {p1, v0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    .line 1340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timeout restoring application "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    new-array p1, v2, [Ljava/lang/Object;

    .line 1344
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string/jumbo v0, "restore timeout"

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const/16 v0, 0xb10

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1347
    invoke-virtual {p0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 1348
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void
.end method

.method public final initiateOneRestore(Landroid/content/pm/PackageInfo;J)V
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 700
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initiateOneRestore packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "BackupManagerService"

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v1, Ljava/io/File;

    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".restore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 708
    new-instance v1, Ljava/io/File;

    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".stage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 709
    new-instance v1, Ljava/io/File;

    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 711
    invoke-virtual {v7, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->shouldStageBackupData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 713
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    goto :goto_7e

    :cond_7c
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    :goto_7e
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 717
    :try_start_80
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v4, "PerformUnifiedRestoreTask.initiateOneRestore()"

    .line 718
    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v3

    const/high16 v4, 0x3c000000    # 0.0078125f

    .line 722
    invoke-static {v2, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 727
    invoke-virtual {v3, v5}, Lcom/android/server/backup/transport/BackupTransportClient;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    if-eqz v3, :cond_bb

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting restore data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb0f

    new-array v1, v11, [Ljava/lang/Object;

    .line 731
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 732
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 733
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 734
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    :cond_bb
    const/high16 v3, 0x10000000

    if-eqz v1, :cond_ea

    .line 742
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 743
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 746
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 751
    new-instance v1, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 752
    new-instance v2, Landroid/app/backup/BackupDataOutput;

    iget-object v6, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 753
    invoke-virtual {v7, v8, v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->filterExcludedKeys(Ljava/lang/String;Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V

    .line 755
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 759
    :cond_ea
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 761
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 764
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 772
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    move-result-wide v3

    .line 774
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    const/4 v6, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_111} :catch_137

    .line 777
    :try_start_111
    iget-object v12, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v13, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 778
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v18

    new-instance v2, Ljava/util/ArrayList;

    .line 779
    invoke-virtual {v7, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-wide/from16 v14, p2

    move-object/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v19, v2

    .line 777
    invoke-interface/range {v12 .. v19}, Landroid/app/IBackupAgent;->doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_133} :catch_134

    goto :goto_165

    :catch_134
    move-exception v0

    move v1, v10

    goto :goto_139

    :catch_137
    move-exception v0

    move v1, v11

    .line 781
    :goto_139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to call app for restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v11

    .line 783
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    .line 782
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 785
    invoke-virtual {v7, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 790
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    :goto_165
    return-void
.end method

.method public keyValueAgentCleanup()V
    .registers 4

    .line 1197
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1198
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1200
    :try_start_a
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_11

    .line 1201
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_11

    .line 1206
    :catch_11
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_18

    .line 1207
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    const/4 v0, 0x0

    .line 1211
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 1226
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1229
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_87

    .line 1232
    :try_start_28
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1248
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1249
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1250
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 1251
    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_51

    const/high16 v0, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_53

    :cond_51
    const/4 v0, 0x1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    .line 1255
    :goto_54
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_87

    if-eqz v0, :cond_87

    const-string v0, "BackupManagerService"

    .line 1257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore complete, killing host process of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_87} :catch_87

    .line 1271
    :catch_87
    :cond_87
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public keyValueAgentErrorCleanup(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1189
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1192
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    return-void
.end method

.method public operationComplete(J)V
    .registers 7

    .line 1276
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    invoke-interface {p1, p2}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    .line 1284
    sget-object p1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$1;->$SwitchMap$com$android$server$backup$restore$UnifiedRestoreState:[I

    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3b

    .line 1326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected restore callback into state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-virtual {p0, p2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 1328
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_6f

    .line 1304
    :cond_3b
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int p1, v0

    const/16 v0, 0xb11

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1305
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    .line 1305
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 1314
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    if-eqz p1, :cond_67

    .line 1315
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->restoreWidgetData(Ljava/lang/String;[B)V

    .line 1319
    :cond_67
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_6f

    .line 1297
    :cond_6a
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_6f

    .line 1289
    :cond_6d
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1333
    :goto_6f
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void
.end method

.method public final packagesToNames(Ljava/util/List;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 296
    new-array v0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p0, :cond_16

    .line 298
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return-object v0
.end method

.method public final restoreFinished()V
    .registers 9

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreFinished packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 881
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentFinishedTimeoutMillis()J

    move-result-wide v4

    .line 882
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    const/4 v7, 0x1

    move-object v6, p0

    .line 883
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 886
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 887
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v3

    .line 886
    invoke-interface {v0, v2, v3}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_37} :catch_38

    goto :goto_6b

    :catch_38
    move-exception v0

    .line 891
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to finalize restore of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 894
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    .line 893
    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 895
    invoke-virtual {p0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 896
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    :goto_6b
    return-void
.end method

.method public final restoreFull()V
    .registers 4

    .line 856
    :try_start_0
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;

    invoke-direct {v0, p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V

    .line 861
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "unified-stream-feeder"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_1d

    :catch_11
    const-string v0, "BackupManagerService"

    const-string v1, "Unable to construct pipes for stream restore!"

    .line 869
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    :goto_1d
    return-void
.end method

.method public final restoreKeyValue()V
    .registers 13

    .line 637
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 640
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/16 v2, 0xb10

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_dc

    const-string v7, ""

    .line 641
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_dc

    .line 655
    :cond_1a
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v0

    .line 656
    const-class v7, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 657
    iget-object v8, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v8, v9, v7}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v7

    const/4 v8, 0x3

    const-string v9, "BackupManagerService"

    if-nez v7, :cond_66

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature mismatch restoring "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x1d

    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v7, v9, v8, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    const-string v1, "Signature mismatch"

    aput-object v1, v0, v5

    .line 662
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 664
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 669
    :cond_66
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 672
    invoke-virtual {v11}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v11

    .line 669
    invoke-virtual {v7, v10, v6, v11}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v7, :cond_ab

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find backup agent for "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x1e

    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v7, v9, v8, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    const-string v1, "Restore agent missing"

    aput-object v1, v0, v5

    .line 678
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 680
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 685
    :cond_ab
    iput-boolean v5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 689
    :try_start_ad
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-wide v2, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    .line 690
    iget v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b9} :catch_ba

    goto :goto_db

    :catch_ba
    move-exception v0

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when attempting restore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p0, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 694
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    :goto_db
    return-void

    .line 646
    :cond_dc
    :goto_dc
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x1c

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v7, v8, v4, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    const-string v1, "Package has no agent"

    aput-object v1, v0, v5

    .line 649
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 651
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void
.end method

.method public sendEndRestore()V
    .registers 3

    .line 1386
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_14

    .line 1388
    :try_start_4
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_14

    :catch_a
    const-string v0, "BackupManagerService"

    const-string v1, "Restore observer went away: endRestore"

    .line 1390
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1391
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    :cond_14
    :goto_14
    return-void
.end method

.method public sendOnRestorePackage(Ljava/lang/String;)V
    .registers 4

    .line 1375
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_14

    .line 1377
    :try_start_4
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_14

    :catch_a
    const-string p1, "BackupManagerService"

    const-string v0, "Restore observer died in onUpdate"

    .line 1379
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1380
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    :cond_14
    :goto_14
    return-void
.end method

.method public sendStartRestore(I)V
    .registers 3

    .line 1364
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_12

    .line 1366
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    const-string p1, "BackupManagerService"

    const-string v0, "Restore observer went away: startRestore"

    .line 1368
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1369
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    :cond_12
    :goto_12
    return-void
.end method

.method public shouldStageBackupData(Ljava/lang/String;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "android"

    .line 801
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 802
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public final startRestore()V
    .registers 12

    const-string v0, "@pm@"

    const-string v1, "BackupManagerService"

    .line 385
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->sendStartRestore(I)V

    .line 388
    iget-boolean v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v2, :cond_16

    .line 389
    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-static {v2}, Lcom/android/server/AppWidgetBackupBridge;->systemRestoreStarting(I)V

    :cond_16
    const/16 v2, 0x14

    const/4 v3, 0x1

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    .line 393
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 395
    invoke-virtual {v7}, Lcom/android/server/backup/transport/TransportConnection;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 394
    invoke-virtual {v6, v7}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    .line 396
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 399
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 400
    iput-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 401
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 403
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    new-array v7, v8, [Landroid/content/pm/PackageInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/PackageInfo;

    .line 405
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v9, "PerformUnifiedRestoreTask.startRestore()"

    .line 406
    invoke-virtual {v7, v9}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v7

    .line 408
    iget-wide v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    invoke-virtual {v7, v9, v10, v6}, Lcom/android/server/backup/transport/BackupTransportClient;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v6

    iput v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    if-eqz v6, :cond_81

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport error "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; no restore possible"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 412
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 416
    :cond_81
    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v6

    const/4 v7, 0x3

    if-nez v6, :cond_a1

    const-string v0, "No restore metadata available; halting"

    .line 418
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x16

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v6, v8, v7, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 423
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 424
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 428
    :cond_a1
    invoke-virtual {v6}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 427
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d7

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required package metadata but got "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v6}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x17

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v6, v8, v7, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 435
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 436
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 441
    :cond_d7
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 442
    iput-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 443
    new-instance v9, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v9}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 444
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v9, 0x3e8

    iput v9, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 445
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgent(Ljava/util/List;)Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 446
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 450
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-wide/16 v9, 0x0

    invoke-virtual {p0, v6, v9, v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    .line 458
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v9, 0x12

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v6

    if-nez v6, :cond_14a

    const-string v6, "PM agent has no metadata, so not restoring"

    .line 465
    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x18

    iget-object v10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v6, v9, v10, v7, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0xb10

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    const-string v0, "Package manager restore metadata missing"

    aput-object v0, v7, v3

    .line 470
    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 473
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 474
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_14a} :catch_14b

    :cond_14a
    return-void

    :catch_14b
    move-exception v0

    .line 485
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to contact transport for restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v1, 0x19

    invoke-static {v0, v1, v5, v3, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 490
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 491
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 493
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void
.end method
