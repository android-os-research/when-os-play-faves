.class public Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;,
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public mBackupObserver:Landroid/app/backup/IBackupObserver;

.field public mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field public final mBackupRunnerOpToken:I

.field public volatile mCancelAll:Z

.field public final mCancelLock:Ljava/lang/Object;

.field public final mCurrentOpToken:I

.field public mCurrentPackage:Landroid/content/pm/PackageInfo;

.field public volatile mIsDoingBackup:Z

.field public mJob:Lcom/android/server/backup/FullBackupJob;

.field public mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field public mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public mUpdateSchedule:Z

.field public mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mUserId:I

.field public mUserInitiated:Z


# direct methods
.method public static synthetic $r8$lambda$onI225cSjT-QmdBaKRSdSYIKWqU(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->lambda$newWithCurrentTransport$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmInternal(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackupEligibilityRules(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMonitor(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserBackupManagerService(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAmInternal(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/app/ActivityManagerInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMonitor(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/app/backup/IBackupManagerMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 14

    .line 188
    invoke-direct {p0, p4}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 154
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 189
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 190
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 191
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 192
    iput-boolean p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 193
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 194
    iput-object p7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 195
    new-instance p2, Ljava/util/ArrayList;

    array-length p3, p5

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 196
    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 197
    iput-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    if-eqz p11, :cond_25

    goto :goto_27

    .line 198
    :cond_25
    sget-object p11, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_27
    iput-object p11, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 199
    iput-boolean p12, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 200
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 201
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 203
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p2

    const-string p3, "Timeout parameters cannot be null"

    .line 202
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 205
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 206
    iput-object p13, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 208
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result p2

    const-string p3, "PFTBT"

    if-eqz p2, :cond_5e

    const-string p1, "Skipping full backup. A backup is already in progress."

    .line 210
    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    return-void

    .line 216
    :cond_5e
    array-length p2, p5

    const/4 p4, 0x0

    :goto_60
    if-ge p4, p2, :cond_f7

    aget-object p6, p5, p4

    const/4 p7, 0x0

    const/4 p8, 0x3

    .line 218
    :try_start_66
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p9

    const/high16 p10, 0x8000000

    .line 219
    iget p11, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {p9, p6, p10, p11}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p9

    .line 221
    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 222
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object p11, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p10, p11}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result p10

    const/16 p11, -0x7d1

    if-nez p10, :cond_92

    .line 230
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p10, 0x9

    iget-object p12, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {p9, p10, p12, p8, p7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p9

    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 235
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p6, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_f3

    .line 238
    :cond_92
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {p10, p9}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result p10

    if-nez p10, :cond_ac

    .line 245
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p10, 0xa

    iget-object p12, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {p9, p10, p12, p8, p7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p9

    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 250
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p6, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_f3

    .line 253
    :cond_ac
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object p12, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p10, p12}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result p10

    if-eqz p10, :cond_c8

    .line 260
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p10, 0xb

    iget-object p12, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {p9, p10, p12, p8, p7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p9

    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 265
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p6, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_f3

    .line 269
    :cond_c8
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {p10, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_66 .. :try_end_cd} :catch_ce

    goto :goto_f3

    .line 271
    :catch_ce
    new-instance p9, Ljava/lang/StringBuilder;

    invoke-direct {p9}, Ljava/lang/StringBuilder;-><init>()V

    const-string p10, "Requested package "

    invoke-virtual {p9, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " not found; ignoring"

    invoke-virtual {p9, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p3, p6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p9, 0xc

    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {p6, p9, p10, p8, p7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p6

    iput-object p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :goto_f3
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_60

    .line 280
    :cond_f7
    iget-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 282
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p7

    .line 283
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_109
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    .line 284
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p7, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_109

    .line 287
    :cond_11b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "backupmanager pftbt token="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object p4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    const/4 p6, 0x0

    const/4 p9, 0x2

    move-object p8, p0

    invoke-interface/range {p4 .. p9}, Lcom/android/server/backup/OperationStorage;->registerOperationForPackages(IILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V

    return-void
.end method

.method public static synthetic lambda$newWithCurrentTransport$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method public static newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 27

    .line 125
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    move-object/from16 v1, p10

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 131
    new-instance v12, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0, v4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 135
    new-instance v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v13, p9

    move-object/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v0

    .line 129
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No TransportConnection available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .registers 6

    if-eqz p1, :cond_23

    const/4 p0, 0x0

    .line 696
    aget-object v0, p1, p0

    const-string v1, "Unable to close pipe!"

    const-string v2, "PFTBT"

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    .line 698
    aput-object v3, p1, p0

    .line 700
    :try_start_e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_15

    .line 702
    :catch_12
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    const/4 p0, 0x1

    .line 705
    aget-object v0, p1, p0

    if-eqz v0, :cond_23

    .line 707
    aput-object v3, p1, p0

    .line 709
    :try_start_1c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_23

    .line 711
    :catch_20
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_23
    return-void
.end method

.method public execute()V
    .registers 1

    return-void
.end method

.method public handleCancel(Z)V
    .registers 5

    .line 304
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_c

    :try_start_5
    const-string v1, "PFTBT"

    const-string v2, "Expected cancelAll to be true."

    .line 311
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_19

    const-string p0, "PFTBT"

    const-string p1, "Ignoring duplicate cancel call."

    .line 315
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    monitor-exit v0

    return-void

    :cond_19
    const/4 v1, 0x1

    .line 319
    iput-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 320
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v1, :cond_4a

    .line 321
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_4c

    .line 324
    :try_start_27
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string p1, "PFTBT.handleCancel()"

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->getConnectedTransport(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object p0

    .line 326
    invoke-virtual {p0}, Lcom/android/server/backup/transport/BackupTransportClient;->cancelFullBackup()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_33
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_27 .. :try_end_32} :catch_33
    .catchall {:try_start_27 .. :try_end_32} :catchall_4c

    goto :goto_4a

    :catch_33
    move-exception p0

    :try_start_34
    const-string p1, "PFTBT"

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling cancelFullBackup() on transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_4a
    :goto_4a
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public operationComplete(J)V
    .registers 3

    return-void
.end method

.method public run()V
    .registers 32

    move-object/from16 v10, p0

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 353
    :try_start_6
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_6a0
    .catchall {:try_start_6 .. :try_end_c} :catchall_695

    if-eqz v1, :cond_5d7

    :try_start_e
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 354
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_5d7

    .line 377
    :cond_18
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v2, "PFTBT.run()"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v6
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_20} :catch_5cb
    .catchall {:try_start_e .. :try_end_20} :catchall_5c0

    const/4 v7, 0x1

    if-nez v6, :cond_bd

    :try_start_23
    const-string v1, "PFTBT"

    const-string v2, "Transport not present; full data backup not performed"

    .line 379
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_b4
    .catchall {:try_start_23 .. :try_end_2a} :catchall_ac

    .line 381
    :try_start_2a
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v2, 0xf

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_36} :catch_b4
    .catchall {:try_start_2a .. :try_end_36} :catchall_a3

    .line 657
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_3d

    const/16 v14, -0x7d3

    goto :goto_3f

    :cond_3d
    const/16 v14, -0x3e8

    :goto_3f
    const-string v1, "PFTBT"

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v14}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 666
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 667
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 671
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_6c

    .line 672
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 675
    :cond_6c
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 676
    :try_start_73
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v8}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 677
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_9f

    .line 679
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 681
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 685
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_8e

    .line 686
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v12, v13}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_8e
    :goto_8e
    const-string v1, "PFTBT"

    const-string v2, "Full data backup pass finished."

    .line 689
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void

    :catchall_9f
    move-exception v0

    move-object v2, v0

    .line 677
    :try_start_a1
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_9f

    throw v2

    :catchall_a3
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    const/16 v4, -0x7d3

    const/16 v14, -0x3e8

    goto/16 :goto_737

    :catchall_ac
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    move v14, v9

    const/16 v4, -0x7d3

    goto/16 :goto_737

    :catch_b4
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    goto/16 :goto_6a9

    .line 389
    :cond_bd
    :try_start_bd
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v1, 0x2000

    new-array v4, v1, [B
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c7} :catch_5cb
    .catchall {:try_start_bd .. :try_end_c7} :catchall_5c0

    move-object v1, v8

    move-object v2, v1

    move v3, v9

    move-wide/from16 v16, v12

    :goto_cc
    if-ge v3, v5, :cond_55f

    .line 392
    :try_start_ce
    iput-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 393
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 394
    iget-object v14, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v15, "PFTBT"

    .line 396
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Initiating full-data transport backup of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " token: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0xb18

    .line 399
    invoke-static {v11, v14}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 401
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v11
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_103} :catch_553
    .catchall {:try_start_ce .. :try_end_103} :catchall_549

    .line 404
    :try_start_103
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    if-eqz v2, :cond_109

    move v2, v7

    goto :goto_10a

    :cond_109
    move v2, v9

    .line 407
    :goto_10a
    iget-object v15, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_10d} :catch_541
    .catchall {:try_start_103 .. :try_end_10d} :catchall_53b

    .line 408
    :try_start_10d
    iget-boolean v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_10f
    .catchall {:try_start_10d .. :try_end_10f} :catchall_523

    if-eqz v12, :cond_11e

    .line 409
    :try_start_111
    monitor-exit v15
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_115

    move-object v2, v11

    goto/16 :goto_55f

    :catchall_115
    move-exception v0

    move-object v8, v1

    move-object v7, v11

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    goto/16 :goto_52a

    .line 411
    :cond_11e
    :try_start_11e
    aget-object v12, v11, v9

    invoke-virtual {v6, v8, v12, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v12
    :try_end_124
    .catchall {:try_start_11e .. :try_end_124} :catchall_523

    if-nez v12, :cond_17e

    .line 415
    :try_start_126
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v20

    .line 418
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v13
    :try_end_130
    .catchall {:try_start_126 .. :try_end_130} :catchall_115

    .line 419
    :try_start_130
    new-instance v2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    aget-object v22, v13, v7

    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 422
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result v24
    :try_end_13c
    .catchall {:try_start_130 .. :try_end_13c} :catchall_174

    move-object/from16 v25, v1

    move-object v1, v2

    move-object/from16 v26, v14

    move-object v14, v2

    move-object/from16 v2, p0

    move/from16 v27, v3

    move-object/from16 v3, v22

    move-object/from16 v28, v4

    move-object v4, v8

    move/from16 v22, v5

    move-object/from16 v5, v25

    move-object/from16 v29, v6

    move-object/from16 v25, v11

    move v11, v7

    move-wide/from16 v6, v20

    move-object/from16 v30, v8

    move v8, v9

    move/from16 v9, v24

    :try_start_15b
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportConnection;JII)V

    iput-object v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 424
    aget-object v1, v13, v11

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v3, 0x0

    .line 425
    aput-object v3, v13, v11

    .line 427
    iput-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_16a
    .catchall {:try_start_15b .. :try_end_16a} :catchall_16e

    move-object v1, v13

    move-wide/from16 v4, v20

    goto :goto_193

    :catchall_16e
    move-exception v0

    move-object v1, v0

    move-object v8, v13

    move-object/from16 v7, v25

    goto :goto_178

    :catchall_174
    move-exception v0

    move-object v1, v0

    move-object v7, v11

    move-object v8, v13

    :goto_178
    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    goto/16 :goto_52b

    :cond_17e
    move/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 v22, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v25, v11

    move-object/from16 v26, v14

    const/4 v3, 0x0

    move v11, v7

    const-wide v4, 0x7fffffffffffffffL

    .line 429
    :goto_193
    :try_start_193
    monitor-exit v15
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_51f

    if-nez v12, :cond_30b

    const/4 v6, 0x0

    .line 434
    :try_start_197
    aget-object v7, v25, v6

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 435
    aput-object v3, v25, v6

    .line 439
    new-instance v7, Ljava/lang/Thread;

    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v9, "package-backup-bridge"

    invoke-direct {v7, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 444
    new-instance v7, Ljava/io/FileInputStream;

    aget-object v8, v1, v6

    .line 445
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 446
    new-instance v8, Ljava/io/FileOutputStream;

    aget-object v9, v25, v11

    .line 447
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 449
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v13
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1c7} :catch_2ff
    .catchall {:try_start_197 .. :try_end_1c7} :catchall_2f5

    const-wide/16 v18, 0x0

    cmp-long v9, v13, v18

    if-gez v9, :cond_1f4

    .line 457
    :try_start_1cd
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v5, 0x10

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v8, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

    .line 461
    invoke-static {v3, v8, v13, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v8

    const/4 v9, 0x3

    .line 457
    invoke-static {v4, v5, v7, v9, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1e0} :catch_2ff
    .catchall {:try_start_1cd .. :try_end_1e0} :catchall_1e9

    long-to-int v4, v13

    move-object/from16 v6, v26

    move-object/from16 v15, v28

    move-object/from16 v11, v29

    goto/16 :goto_291

    :catchall_1e9
    move-exception v0

    move-object v8, v1

    move v14, v6

    move-wide/from16 v12, v16

    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    goto/16 :goto_69d

    :cond_1f4
    move-object/from16 v15, v28

    const-wide/16 v20, 0x0

    .line 468
    :goto_1f8
    :try_start_1f8
    invoke-virtual {v7, v15}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_237

    .line 473
    invoke-virtual {v8, v15, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 474
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_204} :catch_2ff
    .catchall {:try_start_1f8 .. :try_end_204} :catchall_2f5

    .line 475
    :try_start_204
    iget-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-nez v11, :cond_20f

    move-object/from16 v11, v29

    .line 476
    invoke-virtual {v11, v3}, Lcom/android/server/backup/transport/BackupTransportClient;->sendBackupData(I)I

    move-result v12

    goto :goto_211

    :cond_20f
    move-object/from16 v11, v29

    .line 478
    :goto_211
    monitor-exit v6
    :try_end_212
    .catchall {:try_start_204 .. :try_end_212} :catchall_233

    move-object/from16 v23, v7

    int-to-long v6, v3

    add-long v6, v20, v6

    .line 480
    :try_start_217
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v2, :cond_22c

    if-lez v9, :cond_22c

    move-object/from16 v28, v8

    .line 481
    new-instance v8, Landroid/app/backup/BackupProgress;

    invoke-direct {v8, v13, v14, v6, v7}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    move-wide/from16 v20, v6

    move-object/from16 v6, v26

    .line 482
    invoke-static {v2, v6, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_22b} :catch_2ff
    .catchall {:try_start_217 .. :try_end_22b} :catchall_2f5

    goto :goto_23f

    :cond_22c
    move-wide/from16 v20, v6

    move-object/from16 v28, v8

    move-object/from16 v6, v26

    goto :goto_23f

    :catchall_233
    move-exception v0

    move-object v2, v0

    .line 478
    :try_start_235
    monitor-exit v6
    :try_end_236
    .catchall {:try_start_235 .. :try_end_236} :catchall_233

    :try_start_236
    throw v2

    :cond_237
    move-object/from16 v23, v7

    move-object/from16 v28, v8

    move-object/from16 v6, v26

    move-object/from16 v11, v29

    :goto_23f
    move-wide/from16 v7, v20

    if-lez v3, :cond_253

    if-eqz v12, :cond_246

    goto :goto_253

    :cond_246
    move-object/from16 v26, v6

    move-wide/from16 v20, v7

    move-object/from16 v29, v11

    move-object/from16 v7, v23

    move-object/from16 v8, v28

    const/4 v6, 0x0

    const/4 v11, 0x1

    goto :goto_1f8

    :cond_253
    :goto_253
    const/16 v2, -0x3ed

    if-ne v12, v2, :cond_290

    const-string v2, "PFTBT"

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package hit quota limit in-flight "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " of "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0x12

    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v2, v3, v9, v13, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 497
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v2, v7, v8, v4, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    :cond_290
    move v4, v12

    .line 501
    :goto_291
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v2

    .line 503
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_29a} :catch_2ff
    .catchall {:try_start_236 .. :try_end_29a} :catchall_2f5

    const/4 v5, 0x0

    .line 504
    :try_start_29b
    iput-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 506
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-nez v5, :cond_2ae

    if-nez v2, :cond_2ab

    .line 512
    invoke-virtual {v11}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result v5

    if-nez v4, :cond_2ae

    move v4, v5

    goto :goto_2ae

    .line 517
    :cond_2ab
    invoke-virtual {v11}, Lcom/android/server/backup/transport/BackupTransportClient;->cancelFullBackup()V

    .line 520
    :cond_2ae
    :goto_2ae
    monitor-exit v3
    :try_end_2af
    .catchall {:try_start_29b .. :try_end_2af} :catchall_2f1

    if-nez v4, :cond_2b5

    if-eqz v2, :cond_2b5

    move v12, v2

    goto :goto_2b6

    :cond_2b5
    move v12, v4

    :goto_2b6
    if-eqz v12, :cond_2d6

    :try_start_2b8
    const-string v2, "PFTBT"

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_2d6
    invoke-virtual {v11}, Lcom/android/server/backup/transport/BackupTransportClient;->requestFullBackupTime()J

    move-result-wide v2
    :try_end_2da
    .catch Ljava/lang/Exception; {:try_start_2b8 .. :try_end_2da} :catch_2ff
    .catchall {:try_start_2b8 .. :try_end_2da} :catchall_2f5

    :try_start_2da
    const-string v4, "PFTBT"

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport suggested backoff="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f0
    .catch Ljava/lang/Exception; {:try_start_2da .. :try_end_2f0} :catch_325
    .catchall {:try_start_2da .. :try_end_2f0} :catchall_321

    goto :goto_313

    :catchall_2f1
    move-exception v0

    move-object v2, v0

    .line 520
    :try_start_2f3
    monitor-exit v3
    :try_end_2f4
    .catchall {:try_start_2f3 .. :try_end_2f4} :catchall_2f1

    :try_start_2f4
    throw v2
    :try_end_2f5
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_2f5} :catch_2ff
    .catchall {:try_start_2f4 .. :try_end_2f5} :catchall_2f5

    :catchall_2f5
    move-exception v0

    move-object v8, v1

    move-wide/from16 v12, v16

    :goto_2f9
    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    goto/16 :goto_550

    :catch_2ff
    move-exception v0

    move-object v8, v1

    move-wide/from16 v12, v16

    :goto_303
    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    :goto_307
    const/16 v9, -0x3e8

    goto/16 :goto_55c

    :cond_30b
    move-object/from16 v6, v26

    move-object/from16 v15, v28

    move-object/from16 v11, v29

    move-wide/from16 v2, v16

    .line 565
    :goto_313
    :try_start_313
    iget-boolean v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_313 .. :try_end_315} :catch_515
    .catchall {:try_start_313 .. :try_end_315} :catchall_50d

    if-eqz v4, :cond_329

    .line 566
    :try_start_317
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 566
    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    goto :goto_329

    :catchall_321
    move-exception v0

    move-object v8, v1

    move-wide v12, v2

    goto :goto_2f9

    :catch_325
    move-exception v0

    move-object v8, v1

    move-wide v12, v2

    goto :goto_303

    :cond_329
    :goto_329
    const/16 v4, -0x3ea

    if-ne v12, v4, :cond_36f

    .line 571
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 572
    invoke-static {v5, v6, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string v4, "PFTBT"

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport rejected backup of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", skipping"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb19

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v7, "transport rejected"

    const/4 v8, 0x1

    aput-object v7, v5, v8

    .line 578
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 583
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v4, :cond_36c

    .line 584
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-object/from16 v5, v30

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_39d

    :cond_36c
    move-object/from16 v5, v30

    goto :goto_39d

    :cond_36f
    move-object/from16 v5, v30

    const/16 v4, -0x3ed

    const/4 v8, 0x1

    if-ne v12, v4, :cond_3a5

    .line 589
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 590
    invoke-static {v7, v6, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string v4, "PFTBT"

    .line 593
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transport quota exceeded for package: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb1d

    .line 594
    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 597
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    :goto_39d
    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    :goto_3a1
    const/16 v9, -0x3e8

    goto/16 :goto_4cd

    :cond_3a5
    const/16 v4, -0x3eb

    if-ne v12, v4, :cond_3d1

    .line 600
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 601
    invoke-static {v7, v6, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string v4, "PFTBT"

    .line 603
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application failure for package: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb07

    .line 604
    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 605
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_3d0
    .catch Ljava/lang/Exception; {:try_start_317 .. :try_end_3d0} :catch_325
    .catchall {:try_start_317 .. :try_end_3d0} :catchall_321

    goto :goto_39d

    :cond_3d1
    const/16 v4, -0x7d3

    if-ne v12, v4, :cond_417

    .line 608
    :try_start_3d5
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 609
    invoke-static {v7, v6, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string v7, "PFTBT"

    .line 611
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Backup cancelled. package="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", cancelAll="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xb1e

    .line 613
    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 614
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v9}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_406
    .catch Ljava/lang/Exception; {:try_start_3d5 .. :try_end_406} :catch_410
    .catchall {:try_start_3d5 .. :try_end_406} :catchall_409

    move-object/from16 v7, v25

    goto :goto_3a1

    :catchall_409
    move-exception v0

    move-object v8, v1

    move-wide v12, v2

    move-object/from16 v7, v25

    goto/16 :goto_550

    :catch_410
    move-exception v0

    move-object v8, v1

    move-wide v12, v2

    move-object/from16 v7, v25

    goto/16 :goto_307

    :cond_417
    if-eqz v12, :cond_4b9

    .line 617
    :try_start_419
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;
    :try_end_41b
    .catch Ljava/lang/Exception; {:try_start_419 .. :try_end_41b} :catch_4b5
    .catchall {:try_start_419 .. :try_end_41b} :catchall_4b1

    const/16 v9, -0x3e8

    .line 618
    :try_start_41d
    invoke-static {v7, v6, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string v6, "PFTBT"

    .line 620
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transport failed; aborting backup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xb1a

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    .line 621
    invoke-static {v6, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_43e
    .catch Ljava/lang/Exception; {:try_start_41d .. :try_end_43e} :catch_4ac
    .catchall {:try_start_41d .. :try_end_43e} :catchall_4b1

    .line 624
    :try_start_43e
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_445
    .catch Ljava/lang/Exception; {:try_start_43e .. :try_end_445} :catch_4ac
    .catchall {:try_start_43e .. :try_end_445} :catchall_4a4

    .line 657
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_44b

    move v14, v4

    goto :goto_44c

    :cond_44b
    move v14, v9

    :goto_44c
    const-string v4, "PFTBT"

    .line 662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Full backup completed with status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v4, v14}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    move-object/from16 v7, v25

    .line 666
    invoke-virtual {v10, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 667
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 671
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_47b

    .line 672
    iget v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 675
    :cond_47b
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 676
    :try_start_482
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 677
    monitor-exit v5
    :try_end_489
    .catchall {:try_start_482 .. :try_end_489} :catchall_4a0

    .line 679
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v4, "PFTBT.run()"

    invoke-interface {v1, v4}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 681
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 685
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_8e

    .line 686
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto/16 :goto_8e

    :catchall_4a0
    move-exception v0

    move-object v1, v0

    .line 677
    :try_start_4a2
    monitor-exit v5
    :try_end_4a3
    .catchall {:try_start_4a2 .. :try_end_4a3} :catchall_4a0

    throw v1

    :catchall_4a4
    move-exception v0

    move-object/from16 v7, v25

    move-object v8, v1

    move-wide v12, v2

    move v14, v9

    goto/16 :goto_69d

    :catch_4ac
    move-exception v0

    move-object/from16 v7, v25

    goto/16 :goto_51c

    :catchall_4b1
    move-exception v0

    move-object/from16 v7, v25

    goto :goto_512

    :catch_4b5
    move-exception v0

    move-object/from16 v7, v25

    goto :goto_51a

    :cond_4b9
    move-object/from16 v7, v25

    const/16 v9, -0x3e8

    .line 628
    :try_start_4bd
    iget-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/4 v13, 0x0

    .line 629
    invoke-static {v12, v6, v13}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v12, 0xb1b

    .line 631
    invoke-static {v12, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 632
    iget-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v12, v6}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 634
    :goto_4cd
    invoke-virtual {v10, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 635
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    iget-object v12, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_4f8

    const-string v12, "PFTBT"

    .line 637
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unbinding agent in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4ed
    .catch Ljava/lang/Exception; {:try_start_4bd .. :try_end_4ed} :catch_50b
    .catchall {:try_start_4bd .. :try_end_4ed} :catchall_509

    .line 639
    :try_start_4ed
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v6, v5}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4f8
    .catch Landroid/os/RemoteException; {:try_start_4ed .. :try_end_4f8} :catch_4f8
    .catch Ljava/lang/Exception; {:try_start_4ed .. :try_end_4f8} :catch_50b
    .catchall {:try_start_4ed .. :try_end_4f8} :catchall_509

    :catch_4f8
    :cond_4f8
    add-int/lit8 v5, v27, 0x1

    move-wide/from16 v16, v2

    move v3, v5

    move-object v2, v7

    move v7, v8

    move-object v6, v11

    move-object v4, v15

    move/from16 v5, v22

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    goto/16 :goto_cc

    :catchall_509
    move-exception v0

    goto :goto_512

    :catch_50b
    move-exception v0

    goto :goto_51c

    :catchall_50d
    move-exception v0

    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    :goto_512
    move-object v8, v1

    move-wide v12, v2

    goto :goto_550

    :catch_515
    move-exception v0

    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    :goto_51a
    const/16 v9, -0x3e8

    :goto_51c
    move-object v8, v1

    move-wide v12, v2

    goto :goto_55c

    :catchall_51f
    move-exception v0

    move-object/from16 v7, v25

    goto :goto_525

    :catchall_523
    move-exception v0

    move-object v7, v11

    :goto_525
    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    move-object v8, v1

    :goto_52a
    move-object v1, v0

    .line 429
    :goto_52b
    :try_start_52b
    monitor-exit v15
    :try_end_52c
    .catchall {:try_start_52b .. :try_end_52c} :catchall_539

    :try_start_52c
    throw v1
    :try_end_52d
    .catch Ljava/lang/Exception; {:try_start_52c .. :try_end_52d} :catch_533
    .catchall {:try_start_52c .. :try_end_52d} :catchall_52d

    :catchall_52d
    move-exception v0

    move-object v1, v0

    move-wide/from16 v12, v16

    goto/16 :goto_5c8

    :catch_533
    move-exception v0

    move-object v1, v0

    move-wide/from16 v12, v16

    goto/16 :goto_6a9

    :catchall_539
    move-exception v0

    goto :goto_52a

    :catchall_53b
    move-exception v0

    move-object v7, v11

    const/16 v4, -0x7d3

    move-object v8, v1

    goto :goto_54e

    :catch_541
    move-exception v0

    move-object v7, v11

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    move-object v8, v1

    goto :goto_55a

    :catchall_549
    move-exception v0

    const/16 v4, -0x7d3

    move-object v8, v1

    move-object v7, v2

    :goto_54e
    move-wide/from16 v12, v16

    :goto_550
    const/4 v14, 0x0

    goto/16 :goto_69d

    :catch_553
    move-exception v0

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    move-object v8, v1

    move-object v7, v2

    :goto_55a
    move-wide/from16 v12, v16

    :goto_55c
    move-object v1, v0

    goto/16 :goto_6a9

    :cond_55f
    :goto_55f
    const/16 v4, -0x7d3

    .line 657
    iget-boolean v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v3, :cond_567

    move v15, v4

    goto :goto_568

    :cond_567
    const/4 v15, 0x0

    :goto_568
    const-string v3, "PFTBT"

    .line 662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup completed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v3, v15}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 666
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 667
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 671
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_595

    .line 672
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 675
    :cond_595
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 676
    :try_start_59c
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 677
    monitor-exit v1
    :try_end_5a3
    .catchall {:try_start_59c .. :try_end_5a3} :catchall_5bc

    .line 679
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 681
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 685
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_71f

    .line 686
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-wide/from16 v2, v16

    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto/16 :goto_71f

    :catchall_5bc
    move-exception v0

    move-object v2, v0

    .line 677
    :try_start_5be
    monitor-exit v1
    :try_end_5bf
    .catchall {:try_start_5be .. :try_end_5bf} :catchall_5bc

    throw v2

    :catchall_5c0
    move-exception v0

    const/16 v4, -0x7d3

    move-object v1, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    :goto_5c8
    const/4 v14, 0x0

    goto/16 :goto_737

    :catch_5cb
    move-exception v0

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    move-object v1, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    goto/16 :goto_6a9

    :cond_5d7
    :goto_5d7
    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    :try_start_5db
    const-string v1, "PFTBT"

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "full backup requested but enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 358
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " setupComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 359
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_615

    const/16 v1, 0xd

    goto :goto_617

    :cond_615
    const/16 v1, 0xe

    .line 368
    :goto_617
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 369
    invoke-static {v2, v1, v5, v3, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_621
    .catch Ljava/lang/Exception; {:try_start_5db .. :try_end_621} :catch_68f
    .catchall {:try_start_5db .. :try_end_621} :catchall_688

    const/4 v1, 0x0

    .line 372
    :try_start_622
    iput-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_624
    .catch Ljava/lang/Exception; {:try_start_622 .. :try_end_624} :catch_68f
    .catchall {:try_start_622 .. :try_end_624} :catchall_686

    const/16 v1, -0x7d1

    .line 657
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v2, :cond_62c

    move v15, v4

    goto :goto_62d

    :cond_62c
    move v15, v1

    :goto_62d
    const-string v1, "PFTBT"

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v15}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/4 v1, 0x0

    .line 666
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 667
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 671
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_65b

    .line 672
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 675
    :cond_65b
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 676
    :try_start_662
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 677
    monitor-exit v2
    :try_end_669
    .catchall {:try_start_662 .. :try_end_669} :catchall_682

    .line 679
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 681
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 685
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_8e

    .line 686
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto/16 :goto_8e

    :catchall_682
    move-exception v0

    move-object v1, v0

    .line 677
    :try_start_684
    monitor-exit v2
    :try_end_685
    .catchall {:try_start_684 .. :try_end_685} :catchall_682

    throw v1

    :catchall_686
    move-exception v0

    goto :goto_68a

    :catchall_688
    move-exception v0

    const/4 v1, 0x0

    :goto_68a
    const-wide/16 v5, 0x0

    move v14, v1

    move-wide v12, v5

    goto :goto_69b

    :catch_68f
    move-exception v0

    const-wide/16 v5, 0x0

    move-object v1, v0

    move-wide v12, v5

    goto :goto_6a7

    :catchall_695
    move-exception v0

    move v1, v9

    move-wide v5, v12

    const/16 v4, -0x7d3

    move v14, v1

    :goto_69b
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_69d
    move-object v1, v0

    goto/16 :goto_737

    :catch_6a0
    move-exception v0

    move-wide v5, v12

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    move-object v1, v0

    :goto_6a7
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6a9
    :try_start_6a9
    const-string v2, "PFTBT"

    const-string v3, "Exception trying full transport backup"

    .line 646
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0x13

    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v6, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 653
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    .line 651
    invoke-static {v11, v6, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v6, 0x3

    .line 647
    invoke-static {v2, v3, v5, v6, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_6c8
    .catchall {:try_start_6a9 .. :try_end_6c8} :catchall_734

    .line 657
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_6ce

    move v14, v4

    goto :goto_6cf

    :cond_6ce
    move v14, v9

    :goto_6cf
    const-string v1, "PFTBT"

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v14}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 666
    invoke-virtual {v10, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 667
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 671
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_6fc

    .line 672
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 675
    :cond_6fc
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 676
    :try_start_703
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 677
    monitor-exit v1
    :try_end_70a
    .catchall {:try_start_703 .. :try_end_70a} :catchall_730

    .line 679
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 681
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 685
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_71f

    .line 686
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v12, v13}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_71f
    :goto_71f
    const-string v1, "PFTBT"

    const-string v2, "Full data backup pass finished."

    .line 689
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void

    :catchall_730
    move-exception v0

    move-object v2, v0

    .line 677
    :try_start_732
    monitor-exit v1
    :try_end_733
    .catchall {:try_start_732 .. :try_end_733} :catchall_730

    throw v2

    :catchall_734
    move-exception v0

    move-object v1, v0

    move v14, v9

    .line 657
    :goto_737
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v2, :cond_73d

    move v15, v4

    goto :goto_73e

    :cond_73d
    move v15, v14

    :goto_73e
    const-string v2, "PFTBT"

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full backup completed with status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v2, v15}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 666
    invoke-virtual {v10, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 667
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 671
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v2, :cond_76b

    .line 672
    iget v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 675
    :cond_76b
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 676
    :try_start_772
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 677
    monitor-exit v2
    :try_end_779
    .catchall {:try_start_772 .. :try_end_779} :catchall_79f

    .line 679
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v3, "PFTBT.run()"

    invoke-interface {v2, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 681
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 685
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v2, :cond_78e

    .line 686
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v12, v13}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_78e
    const-string v2, "PFTBT"

    const-string v3, "Full data backup pass finished."

    .line 689
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 691
    throw v1

    :catchall_79f
    move-exception v0

    move-object v1, v0

    .line 677
    :try_start_7a1
    monitor-exit v2
    :try_end_7a2
    .catchall {:try_start_7a1 .. :try_end_7a2} :catchall_79f

    throw v1
.end method

.method public unregisterTask()V
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-interface {v0, p0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    return-void
.end method
