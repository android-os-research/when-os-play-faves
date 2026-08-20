.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# static fields
.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public mAgent:Landroid/app/IBackupAgent;

.field public mAgentPackage:Ljava/lang/String;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mAllowApks:Z

.field public final mApkCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mAppVersion:J

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBuffer:[B

.field public final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field public final mEphemeralOpToken:I

.field public final mIsAdbRestore:Z

.field public final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field public final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field public final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field public mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field public mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field public final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field public mPipes:[Landroid/os/ParcelFileDescriptor;

.field public mPipesClosed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPipesLock"
        }
    .end annotation
.end field

.field public final mPipesLock:Ljava/lang/Object;

.field public mPrivilegeApp:Z

.field public mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

.field public final mSessionFlag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mSessionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mTargetApp:Landroid/content/pm/ApplicationInfo;

.field public final mUserId:I

.field public mWidgetData:[B

.field public restorePass:Z


# direct methods
.method public static synthetic $r8$lambda$9EmAUEe9_epChT2y0OzArtH8-H8(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->lambda$restoreOneFile$0(J)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 192
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 88
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 133
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 139
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 140
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 143
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 154
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    const/4 v1, 0x0

    .line 157
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 194
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 195
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 196
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 197
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 198
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 199
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 200
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 201
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 202
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 203
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 204
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 13

    .line 166
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 88
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 133
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 139
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 140
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 143
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 154
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    .line 167
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 169
    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 170
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 171
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 172
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 173
    iput-object p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 174
    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    const p2, 0x8000

    new-array p2, p2, [B

    .line 175
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 177
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p2

    const-string p3, "Timeout parameters cannot be null"

    .line 176
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 179
    iput-boolean p9, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 180
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 181
    iput-object p10, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 184
    invoke-static {}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result p0

    if-eqz p0, :cond_92

    const-string p0, "BackupManagerService"

    const-string p1, "Backup Manager Yuva is Supported"

    .line 185
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object p0

    sput-object p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_92
    return-void
.end method

.method public static getPathWithTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 733
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_18

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_18
    return-object p0
.end method

.method public static isCanonicalFilePath(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ".."

    .line 837
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .registers 5

    .line 738
    iget v0, p0, Lcom/android/server/backup/FileMetadata;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-wide v0, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    sget p0, Landroid/system/OsConstants;->S_IWUSR:I

    int-to-long v2, p0

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static isValidParent(Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/FileMetadata;)Z
    .registers 4

    if-eqz p0, :cond_26

    .line 726
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 728
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 729
    invoke-static {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->getPathWithTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public static synthetic lambda$restoreOneFile$0(J)V
    .registers 2

    return-void
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object p0
.end method

.method public getRestorePass()Z
    .registers 1

    .line 214
    iget-boolean p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    return p0
.end method

.method public getWidgetData()[B
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object p0
.end method

.method public handleTimeout()V
    .registers 2

    .line 802
    invoke-virtual {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    const/4 v0, -0x2

    .line 803
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    const/4 v0, 0x0

    .line 804
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    return-void
.end method

.method public final isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .registers 5

    .line 808
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    .line 812
    :cond_a
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v1, "c"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_16

    return v1

    .line 819
    :cond_16
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v2, "r"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 824
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo p1, "no_backup/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    return v1

    :cond_2d
    return v0
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .registers 40

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/RestoreEngine;->isRunning()Z

    move-result v4

    const-string v12, "BackupManagerService"

    const/4 v13, 0x0

    if-nez v4, :cond_17

    const-string v1, "Restore engine used after halting"

    .line 229
    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 233
    :cond_17
    new-instance v9, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;-><init>()V

    .line 235
    new-instance v11, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v4, p7

    invoke-direct {v11, v8, v9, v4}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    const/4 v10, -0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 243
    :try_start_26
    invoke-virtual {v11}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v5

    if-eqz v5, :cond_63e

    .line 245
    iput-boolean v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    .line 250
    iget-object v4, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 251
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_36} :catch_656
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_36} :catch_643

    if-nez v14, :cond_9c

    if-eqz v3, :cond_65

    .line 255
    :try_start_3a
    iget-object v14, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_65

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected data for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but saw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v1, v10}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    .line 258
    invoke-virtual {v1, v13}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    return v13

    .line 265
    :cond_65
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_74

    .line 266
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v15, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v14, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_74
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v14, :cond_9c

    const-string v14, "Saw new package; finalizing old one"

    .line 273
    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 277
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-virtual {v1, v14, v15}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 278
    iput-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 279
    iput-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_8b} :catch_94
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_8b} :catch_8c

    goto :goto_9c

    :catch_8c
    move-exception v0

    move-object v2, v0

    move/from16 v27, v6

    move-object v5, v7

    move-object v3, v12

    goto/16 :goto_649

    :catch_94
    move-exception v0

    move-object v2, v0

    move/from16 v27, v6

    move-object v5, v7

    move-object v3, v12

    goto/16 :goto_65c

    .line 283
    :cond_9c
    :goto_9c
    :try_start_9c
    iget-object v14, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v15, "_manifest"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a4} :catch_656
    .catch Ljava/lang/NullPointerException; {:try_start_9c .. :try_end_a4} :catch_643

    if-eqz v14, :cond_112

    .line 284
    :try_start_a6
    invoke-virtual {v11, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 288
    iget-wide v8, v5, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    .line 289
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/content/pm/PackageManagerInternal;

    .line 291
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 292
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    iget v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-boolean v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    move-object v14, v11

    move/from16 v16, p5

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move/from16 v20, v3

    move-object/from16 v21, v8

    move/from16 v22, v9

    .line 291
    invoke-virtual/range {v14 .. v22}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/backup/utils/BackupEligibilityRules;Z)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v3

    .line 294
    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v9, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v3, v5, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v2, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v6, :cond_103

    .line 299
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    iget v3, v5, Lcom/android/server/backup/FileMetadata;->splitCount:I

    add-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_103
    iget-wide v2, v5, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 308
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v2, v4}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_110} :catch_94
    .catch Ljava/lang/NullPointerException; {:try_start_a6 .. :try_end_110} :catch_8c

    goto/16 :goto_63e

    .line 309
    :cond_112
    :try_start_112
    iget-object v14, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v15, "_meta"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_11a} :catch_656
    .catch Ljava/lang/NullPointerException; {:try_start_112 .. :try_end_11a} :catch_643

    if-eqz v14, :cond_12f

    .line 311
    :try_start_11c
    invoke-virtual {v11, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 317
    invoke-virtual {v11}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 319
    invoke-virtual {v11}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    .line 321
    iget-wide v2, v5, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_12d} :catch_94
    .catch Ljava/lang/NullPointerException; {:try_start_11c .. :try_end_12d} :catch_8c

    goto/16 :goto_63e

    .line 326
    :cond_12f
    :try_start_12f
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/backup/restore/RestorePolicy;

    .line 327
    sget-object v15, Lcom/android/server/backup/restore/FullRestoreEngine$1;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v14, v15, v14
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_13f} :catch_656
    .catch Ljava/lang/NullPointerException; {:try_start_12f .. :try_end_13f} :catch_643

    const/4 v15, 0x3

    if-eq v14, v6, :cond_2ac

    const/4 v7, 0x2

    const-string v10, "a"

    if-eq v14, v7, :cond_17c

    if-eq v14, v15, :cond_15b

    :try_start_149
    const-string v7, "Invalid policy from manifest"

    .line 413
    invoke-static {v12, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v9, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v7, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_155
    move-object v14, v4

    move-object v4, v5

    move/from16 v27, v6

    move v6, v13

    goto :goto_16d

    .line 397
    :cond_15b
    iget-object v7, v5, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_169

    const-string v7, "apk present but ACCEPT"

    .line 399
    invoke-static {v12, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_168} :catch_176
    .catch Ljava/lang/NullPointerException; {:try_start_149 .. :try_end_168} :catch_170

    goto :goto_155

    :cond_169
    move-object v14, v4

    move-object v4, v5

    move/from16 v27, v6

    :goto_16d
    move-object v13, v11

    goto/16 :goto_2b2

    :catch_170
    move-exception v0

    move-object v2, v0

    move/from16 v27, v6

    goto/16 :goto_2a0

    :catch_176
    move-exception v0

    move-object v2, v0

    move/from16 v27, v6

    goto/16 :goto_2a8

    .line 335
    :cond_17c
    :try_start_17c
    iget-object v7, v5, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28f

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK file; installing; copying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 341
    iget-boolean v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    invoke-static {v2}, Lcom/android/server/backup/utils/RestoreUtils;->setPrivilegeApp(Z)V

    .line 344
    sget-object v2, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v6, :cond_261

    .line 346
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_1bc} :catch_2a4
    .catch Ljava/lang/NullPointerException; {:try_start_17c .. :try_end_1bc} :catch_29c

    if-nez v2, :cond_1d8

    .line 347
    :try_start_1be
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/android/server/backup/utils/RestoreUtils;->createSession(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 348
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1d8} :catch_176
    .catch Ljava/lang/NullPointerException; {:try_start_1be .. :try_end_1d8} :catch_170

    .line 352
    :cond_1d8
    :try_start_1d8
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    .line 353
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_1ea
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1ea} :catch_2a4
    .catch Ljava/lang/NullPointerException; {:try_start_1d8 .. :try_end_1ea} :catch_29c

    move-object/from16 v3, p1

    move-object v14, v4

    move-object v4, v5

    move-object v15, v5

    move-object v5, v10

    move/from16 v27, v6

    move-object v6, v9

    .line 352
    :try_start_1f3
    invoke-static/range {v2 .. v7}, Lcom/android/server/backup/utils/RestoreUtils;->writeSession(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v2

    .line 354
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_21b

    const-string v2, "APK file; copy error"

    .line 357
    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25f

    .line 359
    :cond_21b
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_25f

    .line 361
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 362
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    .line 365
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v2, p1

    move/from16 v18, v7

    move-object v7, v15

    move-object v8, v10

    move/from16 v10, v18

    move-object v13, v11

    move/from16 v11, v17

    .line 361
    invoke-static/range {v2 .. v11}, Lcom/android/server/backup/utils/RestoreUtils;->installApkSplitSupport(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;II)Z

    move-result v2

    .line 367
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_259

    .line 368
    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_25b

    .line 369
    :cond_259
    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 367
    :goto_25b
    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_289

    :cond_25f
    :goto_25f
    move-object v13, v11

    goto :goto_289

    :cond_261
    move-object v14, v4

    move-object v15, v5

    move/from16 v27, v6

    move-object v13, v11

    .line 372
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 373
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    iget v11, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    move-object/from16 v2, p1

    move-object v7, v15

    move-object v8, v10

    move v10, v11

    .line 372
    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v2

    .line 378
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_284

    .line 379
    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_286

    .line 380
    :cond_284
    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 378
    :goto_286
    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :goto_289
    iget-wide v2, v15, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    return v27

    :cond_28f
    move-object v14, v4

    move-object v4, v5

    move/from16 v27, v6

    move-object v13, v11

    .line 391
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29b
    .catch Ljava/io/IOException; {:try_start_1f3 .. :try_end_29b} :catch_2c3
    .catch Ljava/lang/NullPointerException; {:try_start_1f3 .. :try_end_29b} :catch_2c1

    goto :goto_2b1

    :catch_29c
    move-exception v0

    move/from16 v27, v6

    :goto_29f
    move-object v2, v0

    :goto_2a0
    move-object v3, v12

    :goto_2a1
    const/4 v5, 0x0

    goto/16 :goto_649

    :catch_2a4
    move-exception v0

    move/from16 v27, v6

    :goto_2a7
    move-object v2, v0

    :goto_2a8
    move-object v3, v12

    :goto_2a9
    const/4 v5, 0x0

    goto/16 :goto_65c

    :cond_2ac
    move-object v14, v4

    move-object v4, v5

    move/from16 v27, v6

    move-object v13, v11

    :goto_2b1
    const/4 v6, 0x0

    .line 420
    :goto_2b2
    :try_start_2b2
    invoke-virtual {v1, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v5
    :try_end_2b6
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_2b6} :catch_63a
    .catch Ljava/lang/NullPointerException; {:try_start_2b2 .. :try_end_2b6} :catch_636

    if-eqz v5, :cond_2c5

    :try_start_2b8
    iget-object v5, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v5
    :try_end_2be
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_2be} :catch_2c3
    .catch Ljava/lang/NullPointerException; {:try_start_2b8 .. :try_end_2be} :catch_2c1

    if-nez v5, :cond_2c6

    goto :goto_2c5

    :catch_2c1
    move-exception v0

    goto :goto_29f

    :catch_2c3
    move-exception v0

    goto :goto_2a7

    :cond_2c5
    :goto_2c5
    const/4 v6, 0x0

    :cond_2c6
    const-string/jumbo v5, "k"

    if-eqz v6, :cond_34e

    .line 429
    :try_start_2cb
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_2cd
    .catch Ljava/io/IOException; {:try_start_2cb .. :try_end_2cd} :catch_2c3
    .catch Ljava/lang/NullPointerException; {:try_start_2cb .. :try_end_2cd} :catch_2c1

    if-nez v7, :cond_34e

    .line 435
    :try_start_2cf
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 436
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    const/4 v10, 0x0

    .line 437
    invoke-virtual {v7, v14, v10, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 441
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_305

    .line 448
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v7

    .line 450
    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v9, :cond_2f6

    if-eqz v7, :cond_300

    :cond_2f6
    const-string v7, "Clearing app data preparatory to full restore"

    .line 452
    invoke-static {v12, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v14}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    .line 462
    :cond_300
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_305
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 472
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 473
    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_315

    const/4 v15, 0x0

    .line 475
    :cond_315
    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 476
    invoke-virtual {v10}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v10

    .line 472
    invoke-virtual {v7, v9, v15, v10}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 477
    iput-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_323
    .catch Ljava/io/IOException; {:try_start_2cf .. :try_end_323} :catch_324
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2cf .. :try_end_323} :catch_324
    .catch Ljava/lang/NullPointerException; {:try_start_2cf .. :try_end_323} :catch_2c1

    goto :goto_32b

    .line 480
    :catch_324
    :try_start_324
    sget-object v7, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v7, :cond_32b

    .line 481
    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    .line 485
    :cond_32b
    :goto_32b
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v7, :cond_34e

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create agent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 489
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v6, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    :cond_34e
    if-eqz v6, :cond_377

    .line 495
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_377

    .line 496
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restoring data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " but agent is for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_376
    .catch Ljava/io/IOException; {:try_start_324 .. :try_end_376} :catch_2c3
    .catch Ljava/lang/NullPointerException; {:try_start_324 .. :try_end_376} :catch_2c1

    const/4 v6, 0x0

    .line 501
    :cond_377
    :try_start_377
    invoke-virtual {v1, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v7

    if-eqz v7, :cond_37e

    const/4 v6, 0x0

    :cond_37e
    if-eqz v6, :cond_5fc

    .line 512
    iget-wide v9, v4, Lcom/android/server/backup/FileMetadata;->size:J

    const-string v7, "com.android.sharedstoragebackup"

    .line 513
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_388
    .catch Ljava/io/IOException; {:try_start_377 .. :try_end_388} :catch_63a
    .catch Ljava/lang/NullPointerException; {:try_start_377 .. :try_end_388} :catch_636

    if-eqz v7, :cond_393

    .line 515
    :try_start_38a
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v15
    :try_end_390
    .catch Ljava/io/IOException; {:try_start_38a .. :try_end_390} :catch_2c3
    .catch Ljava/lang/NullPointerException; {:try_start_38a .. :try_end_390} :catch_2c1

    :goto_390
    move-wide/from16 v19, v15

    goto :goto_39e

    .line 516
    :cond_393
    :try_start_393
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget-object v11, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v11}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    move-result-wide v15
    :try_end_39d
    .catch Ljava/io/IOException; {:try_start_393 .. :try_end_39d} :catch_63a
    .catch Ljava/lang/NullPointerException; {:try_start_393 .. :try_end_39d} :catch_636

    goto :goto_390

    .line 519
    :goto_39e
    :try_start_39e
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_3a0
    .catch Ljava/io/IOException; {:try_start_39e .. :try_end_3a0} :catch_536
    .catch Landroid/os/RemoteException; {:try_start_39e .. :try_end_3a0} :catch_516
    .catch Ljava/lang/NullPointerException; {:try_start_39e .. :try_end_3a0} :catch_2c1

    :try_start_3a0
    iget-object v11, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v22, 0x1

    move-object/from16 v17, v7

    move/from16 v18, p6

    move-object/from16 v21, v11

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    const-string/jumbo v7, "obb"

    .line 524
    iget-object v11, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3b6
    .catch Ljava/io/IOException; {:try_start_3a0 .. :try_end_3b6} :catch_50e
    .catch Landroid/os/RemoteException; {:try_start_3a0 .. :try_end_3b6} :catch_516
    .catch Ljava/lang/NullPointerException; {:try_start_3a0 .. :try_end_3b6} :catch_2c1

    const-string v11, " : "

    if-eqz v7, :cond_41b

    .line 526
    :try_start_3ba
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restoring OBB file for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v11, 0x0

    aget-object v16, v7, v11

    move/from16 p5, v6

    iget-wide v6, v4, Lcom/android/server/backup/FileMetadata;->size:J

    iget v11, v4, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v15, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_3e5
    .catch Ljava/io/IOException; {:try_start_3ba .. :try_end_3e5} :catch_536
    .catch Landroid/os/RemoteException; {:try_start_3ba .. :try_end_3e5} :catch_516
    .catch Ljava/lang/NullPointerException; {:try_start_3ba .. :try_end_3e5} :catch_2c1

    move-wide/from16 v28, v9

    :try_start_3e7
    iget-wide v9, v4, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v2, v4, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_3eb
    .catch Ljava/io/IOException; {:try_start_3e7 .. :try_end_3eb} :catch_538
    .catch Landroid/os/RemoteException; {:try_start_3e7 .. :try_end_3eb} :catch_518
    .catch Ljava/lang/NullPointerException; {:try_start_3e7 .. :try_end_3eb} :catch_2c1

    move-object/from16 v17, v14

    :try_start_3ed
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 532
    invoke-virtual {v14}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v26
    :try_end_3f3
    .catch Ljava/io/IOException; {:try_start_3ed .. :try_end_3f3} :catch_414
    .catch Landroid/os/RemoteException; {:try_start_3ed .. :try_end_3f3} :catch_40c
    .catch Ljava/lang/NullPointerException; {:try_start_3ed .. :try_end_3f3} :catch_2c1

    move-object/from16 p7, v17

    move-object v14, v5

    move-object v5, v15

    move-object/from16 v15, p7

    move-wide/from16 v17, v6

    move/from16 v19, v11

    move-object/from16 v20, v5

    move-wide/from16 v21, v9

    move-wide/from16 v23, v2

    move/from16 v25, p6

    .line 529
    :try_start_405
    invoke-virtual/range {v14 .. v26}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_408
    .catch Ljava/io/IOException; {:try_start_405 .. :try_end_408} :catch_473
    .catch Landroid/os/RemoteException; {:try_start_405 .. :try_end_408} :catch_502
    .catch Ljava/lang/NullPointerException; {:try_start_405 .. :try_end_408} :catch_2c1

    move-object/from16 v31, p7

    goto/16 :goto_4b1

    :catch_40c
    move-object/from16 v30, v12

    move-object/from16 p7, v13

    move-object/from16 v31, v17

    goto/16 :goto_51e

    :catch_414
    move-object v3, v12

    move-object/from16 p7, v13

    move-object/from16 v31, v17

    goto/16 :goto_53d

    :cond_41b
    move/from16 p5, v6

    move-wide/from16 v28, v9

    move-object/from16 p7, v14

    .line 533
    :try_start_421
    iget-object v2, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_427
    .catch Ljava/io/IOException; {:try_start_421 .. :try_end_427} :catch_509
    .catch Landroid/os/RemoteException; {:try_start_421 .. :try_end_427} :catch_502
    .catch Ljava/lang/NullPointerException; {:try_start_421 .. :try_end_427} :catch_2c1

    if-eqz v2, :cond_47a

    .line 537
    :try_start_429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring key-value file for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_433
    .catch Ljava/io/IOException; {:try_start_429 .. :try_end_433} :catch_473
    .catch Landroid/os/RemoteException; {:try_start_429 .. :try_end_433} :catch_502
    .catch Ljava/lang/NullPointerException; {:try_start_429 .. :try_end_433} :catch_2c1

    move-object/from16 v3, p7

    :try_start_435
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-wide v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v5, v4, Lcom/android/server/backup/FileMetadata;->version:J

    .line 542
    new-instance v2, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 545
    invoke-virtual {v15}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v16

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v18, v5, v6

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object v14, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move/from16 v20, p6

    invoke-direct/range {v14 .. v20}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 547
    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-key-value-runner"

    invoke-direct {v5, v2, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_46f
    .catch Ljava/io/IOException; {:try_start_435 .. :try_end_46f} :catch_470
    .catch Landroid/os/RemoteException; {:try_start_435 .. :try_end_46f} :catch_4fc
    .catch Ljava/lang/NullPointerException; {:try_start_435 .. :try_end_46f} :catch_2c1

    goto :goto_4af

    :catch_470
    move-object/from16 v31, v3

    goto :goto_475

    :catch_473
    move-object/from16 v31, p7

    :goto_475
    move-object v3, v12

    move-object/from16 p7, v13

    goto/16 :goto_53d

    :cond_47a
    move-object/from16 v3, p7

    .line 556
    :try_start_47c
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v5, "system"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_487
    .catch Ljava/io/IOException; {:try_start_47c .. :try_end_487} :catch_4ff
    .catch Landroid/os/RemoteException; {:try_start_47c .. :try_end_487} :catch_4fc
    .catch Ljava/lang/NullPointerException; {:try_start_47c .. :try_end_487} :catch_2c1

    if-eqz v2, :cond_4b6

    :try_start_489
    const-string/jumbo v2, "system process agent - spinning a thread"

    .line 557
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v2, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v18, v6, v7

    move-object v14, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move/from16 v19, p6

    invoke-direct/range {v14 .. v19}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 560
    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-sys-runner"

    invoke-direct {v5, v2, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_4af
    .catch Ljava/io/IOException; {:try_start_489 .. :try_end_4af} :catch_470
    .catch Landroid/os/RemoteException; {:try_start_489 .. :try_end_4af} :catch_4fc
    .catch Ljava/lang/NullPointerException; {:try_start_489 .. :try_end_4af} :catch_2c1

    :goto_4af
    move-object/from16 v31, v3

    :goto_4b1
    move-object/from16 v30, v12

    move-object/from16 p7, v13

    goto :goto_4e6

    .line 562
    :cond_4b6
    :try_start_4b6
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v15, v2, v5

    iget-wide v5, v4, Lcom/android/server/backup/FileMetadata;->size:J

    iget v2, v4, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v7, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v10, v4, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_4c7
    .catch Ljava/io/IOException; {:try_start_4b6 .. :try_end_4c7} :catch_4ff
    .catch Landroid/os/RemoteException; {:try_start_4b6 .. :try_end_4c7} :catch_4fc
    .catch Ljava/lang/NullPointerException; {:try_start_4b6 .. :try_end_4c7} :catch_2c1

    move-object/from16 v30, v12

    move-object/from16 p7, v13

    :try_start_4cb
    iget-wide v12, v4, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_4cd
    .catch Ljava/io/IOException; {:try_start_4cb .. :try_end_4cd} :catch_4f7
    .catch Landroid/os/RemoteException; {:try_start_4cb .. :try_end_4cd} :catch_4f4
    .catch Ljava/lang/NullPointerException; {:try_start_4cb .. :try_end_4cd} :catch_4ee

    move-object/from16 v31, v3

    :try_start_4cf
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 564
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v26

    move-wide/from16 v16, v5

    move/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-wide/from16 v21, v10

    move-wide/from16 v23, v12

    move/from16 v25, p6

    .line 562
    invoke-interface/range {v14 .. v26}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_4e6
    .catch Ljava/io/IOException; {:try_start_4cf .. :try_end_4e6} :catch_4f9
    .catch Landroid/os/RemoteException; {:try_start_4cf .. :try_end_4e6} :catch_51e
    .catch Ljava/lang/NullPointerException; {:try_start_4cf .. :try_end_4e6} :catch_4ee

    :goto_4e6
    move/from16 v2, p5

    move/from16 v6, v27

    move-object/from16 v3, v30

    goto/16 :goto_544

    :catch_4ee
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v30

    goto/16 :goto_2a1

    :catch_4f4
    move-object/from16 v31, v3

    goto :goto_51e

    :catch_4f7
    move-object/from16 v31, v3

    :catch_4f9
    move-object/from16 v3, v30

    goto :goto_53d

    :catch_4fc
    move-object/from16 v31, v3

    goto :goto_504

    :catch_4ff
    move-object/from16 v31, v3

    goto :goto_50b

    :catch_502
    move-object/from16 v31, p7

    :goto_504
    move-object/from16 v30, v12

    move-object/from16 p7, v13

    goto :goto_51e

    :catch_509
    move-object/from16 v31, p7

    :goto_50b
    move-object/from16 p7, v13

    goto :goto_514

    :catch_50e
    move-wide/from16 v28, v9

    move-object/from16 p7, v13

    move-object/from16 v31, v14

    :goto_514
    move-object v3, v12

    goto :goto_53d

    :catch_516
    move-wide/from16 v28, v9

    :catch_518
    move-object/from16 v30, v12

    move-object/from16 p7, v13

    move-object/from16 v31, v14

    :catch_51e
    :goto_51e
    :try_start_51e
    const-string v2, "Agent crashed during full restore"
    :try_end_520
    .catch Ljava/io/IOException; {:try_start_51e .. :try_end_520} :catch_530
    .catch Ljava/lang/NullPointerException; {:try_start_51e .. :try_end_520} :catch_52a

    move-object/from16 v3, v30

    .line 575
    :try_start_522
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_525
    .catch Ljava/io/IOException; {:try_start_522 .. :try_end_525} :catch_528
    .catch Ljava/lang/NullPointerException; {:try_start_522 .. :try_end_525} :catch_526

    goto :goto_542

    :catch_526
    move-exception v0

    goto :goto_52d

    :catch_528
    move-exception v0

    goto :goto_533

    :catch_52a
    move-exception v0

    move-object/from16 v3, v30

    :goto_52d
    move-object v2, v0

    goto/16 :goto_2a1

    :catch_530
    move-exception v0

    move-object/from16 v3, v30

    :goto_533
    move-object v2, v0

    goto/16 :goto_2a9

    :catch_536
    move-wide/from16 v28, v9

    :catch_538
    move-object v3, v12

    move-object/from16 p7, v13

    move-object/from16 v31, v14

    :goto_53d
    :try_start_53d
    const-string v2, "Couldn\'t establish restore"

    .line 569
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_542
    .catch Ljava/io/IOException; {:try_start_53d .. :try_end_542} :catch_5fa
    .catch Ljava/lang/NullPointerException; {:try_start_53d .. :try_end_542} :catch_5f8

    :goto_542
    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_544
    if-eqz v2, :cond_5a6

    .line 586
    :try_start_546
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v6, v6, v27

    .line 587
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move/from16 v6, v27

    move-wide/from16 v9, v28

    :cond_557
    :goto_557
    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-lez v7, :cond_594

    move-object/from16 v7, p3

    .line 589
    array-length v11, v7

    int-to-long v11, v11

    cmp-long v11, v9, v11

    if-lez v11, :cond_567

    .line 590
    array-length v11, v7

    goto :goto_568

    :cond_567
    long-to-int v11, v9

    :goto_568
    const/4 v12, 0x0

    .line 591
    invoke-virtual {v8, v7, v12, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v11
    :try_end_56d
    .catch Ljava/io/IOException; {:try_start_546 .. :try_end_56d} :catch_528
    .catch Ljava/lang/NullPointerException; {:try_start_546 .. :try_end_56d} :catch_526

    if-gtz v11, :cond_570

    goto :goto_596

    :cond_570
    int-to-long v13, v11

    sub-long/2addr v9, v13

    if-eqz v6, :cond_557

    .line 601
    :try_start_574
    invoke-virtual {v5, v7, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_577
    .catch Ljava/io/IOException; {:try_start_574 .. :try_end_577} :catch_578
    .catch Ljava/lang/NullPointerException; {:try_start_574 .. :try_end_577} :catch_526

    goto :goto_557

    :catch_578
    move-exception v0

    move-object v6, v0

    .line 603
    :try_start_57a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to write to restore pipe: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 603
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_557

    :cond_594
    move-object/from16 v7, p3

    .line 612
    :goto_596
    iget-wide v5, v4, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v9, p7

    invoke-virtual {v9, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 616
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move/from16 v6, p6

    invoke-virtual {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v6
    :try_end_5a5
    .catch Ljava/io/IOException; {:try_start_57a .. :try_end_5a5} :catch_528
    .catch Ljava/lang/NullPointerException; {:try_start_57a .. :try_end_5a5} :catch_526

    goto :goto_5a8

    :cond_5a6
    move-object/from16 v7, p3

    :goto_5a8
    if-nez v6, :cond_5f5

    .line 622
    :try_start_5aa
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Agent failure restoring "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v31

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; ending restore"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v9, 0x12

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 626
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v9}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_5d9
    .catch Ljava/io/IOException; {:try_start_5aa .. :try_end_5d9} :catch_5fa
    .catch Ljava/lang/NullPointerException; {:try_start_5aa .. :try_end_5d9} :catch_5f8

    const/4 v5, 0x0

    .line 627
    :try_start_5da
    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 628
    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v10, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v6, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v6, :cond_5ea

    .line 630
    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    :cond_5ea
    if-eqz p4, :cond_5f6

    const/4 v2, -0x2

    .line 635
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    const/4 v2, 0x0

    .line 636
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    return v2

    :cond_5f5
    const/4 v5, 0x0

    :cond_5f6
    move v6, v2

    goto :goto_601

    :catch_5f8
    move-exception v0

    goto :goto_638

    :catch_5fa
    move-exception v0

    goto :goto_63c

    :cond_5fc
    move-object v7, v2

    move/from16 p5, v6

    move-object v3, v12

    const/4 v5, 0x0

    :goto_601
    if-nez v6, :cond_641

    .line 649
    iget-wide v9, v4, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v11, 0x1ff

    add-long/2addr v9, v11

    const-wide/16 v11, -0x200

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    :goto_60d
    cmp-long v2, v9, v11

    if-lez v2, :cond_62a

    .line 651
    array-length v2, v7

    int-to-long v11, v2

    cmp-long v2, v9, v11

    if-lez v2, :cond_619

    .line 652
    array-length v2, v7

    goto :goto_61a

    :cond_619
    long-to-int v2, v9

    :goto_61a
    const/4 v6, 0x0

    .line 653
    invoke-virtual {v8, v7, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    int-to-long v11, v2

    const-wide/16 v13, 0x0

    cmp-long v2, v11, v13

    if-gtz v2, :cond_627

    goto :goto_62a

    :cond_627
    sub-long/2addr v9, v11

    move-wide v11, v13

    goto :goto_60d

    .line 659
    :cond_62a
    :goto_62a
    sget-object v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_641

    .line 660
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V
    :try_end_631
    .catch Ljava/io/IOException; {:try_start_5da .. :try_end_631} :catch_634
    .catch Ljava/lang/NullPointerException; {:try_start_5da .. :try_end_631} :catch_632

    goto :goto_641

    :catch_632
    move-exception v0

    goto :goto_648

    :catch_634
    move-exception v0

    goto :goto_65b

    :catch_636
    move-exception v0

    move-object v3, v12

    :goto_638
    const/4 v5, 0x0

    goto :goto_648

    :catch_63a
    move-exception v0

    move-object v3, v12

    :goto_63c
    const/4 v5, 0x0

    goto :goto_65b

    :cond_63e
    :goto_63e
    move-object v4, v5

    move/from16 v27, v6

    :cond_641
    :goto_641
    move-object v7, v4

    goto :goto_681

    :catch_643
    move-exception v0

    move/from16 v27, v6

    move-object v5, v7

    move-object v3, v12

    :goto_648
    move-object v2, v0

    :goto_649
    const-string v4, "NullPointerException  exception on restore "

    .line 678
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    sget-object v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_680

    .line 681
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    goto :goto_680

    :catch_656
    move-exception v0

    move/from16 v27, v6

    move-object v5, v7

    move-object v3, v12

    :goto_65b
    move-object v2, v0

    .line 667
    :goto_65c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "io exception on restore socket read: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sget-object v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_67c

    .line 670
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    :cond_67c
    const/4 v2, -0x3

    .line 672
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    :cond_680
    :goto_680
    move-object v7, v5

    :goto_681
    if-nez v7, :cond_694

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    const/4 v2, 0x0

    .line 694
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    if-eqz p2, :cond_695

    .line 696
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-virtual {v1, v3, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_695

    :cond_694
    const/4 v2, 0x0

    :cond_695
    :goto_695
    if-eqz v7, :cond_69a

    move/from16 v13, v27

    goto :goto_69b

    :cond_69a
    move v13, v2

    :goto_69b
    return v13
.end method

.method public sendOnRestorePackage(Ljava/lang/String;)V
    .registers 3

    .line 867
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_12

    .line 870
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    const-string p1, "BackupManagerService"

    const-string v0, "full restore observer went away: restorePackage"

    .line 872
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 873
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_12
    :goto_12
    return-void
.end method

.method public setPrivilegeApp(Z)V
    .registers 2

    .line 209
    iput-boolean p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    return-void
.end method

.method public final setUpPipes()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 743
    :try_start_3
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    .line 744
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    .line 745
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .registers 4

    .line 854
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 855
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    const-string/jumbo v1, "packages_to_clear_data_before_full_restore"

    .line 854
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 858
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    const-string v0, ";"

    .line 862
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 863
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .registers 4

    .line 703
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    invoke-static {v0, p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->isValidParent(Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 710
    :cond_a
    invoke-static {p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->isReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 713
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 714
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping restore of "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and its contents as read-only dirs are currently not supported."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_30
    const/4 p1, 0x0

    .line 718
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    const/4 p0, 0x0

    return p0
.end method

.method public final tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 10

    .line 767
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_63

    if-eqz p2, :cond_53

    .line 771
    :try_start_6
    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    .line 772
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 773
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v2

    .line 774
    new-instance v6, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    invoke-direct {v6, v0, v1, p2}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;I)V

    .line 776
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v5, 0x1

    move v1, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 778
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 782
    new-instance v0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    .line 784
    new-instance p2, Ljava/lang/Thread;

    const-string/jumbo v1, "restore-sys-finished-runner"

    invoke-direct {p2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_50

    .line 786
    :cond_45
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 787
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 786
    invoke-interface {v0, p2, v1}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 790
    :goto_50
    invoke-virtual {v6}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 793
    :cond_53
    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_58} :catch_59

    goto :goto_60

    :catch_59
    const-string p1, "BackupManagerService"

    const-string p2, "Lost app trying to shut down"

    .line 795
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    const/4 p1, 0x0

    .line 797
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    :cond_63
    return-void
.end method

.method public final tearDownPipes()V
    .registers 4

    .line 752
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_26

    if-eqz v1, :cond_24

    const/4 v2, 0x0

    .line 755
    :try_start_c
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 756
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 758
    iput-boolean v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_1c
    .catchall {:try_start_c .. :try_end_1b} :catchall_26

    goto :goto_24

    :catch_1c
    move-exception p0

    :try_start_1d
    const-string v1, "BackupManagerService"

    const-string v2, "Couldn\'t close agent pipes"

    .line 760
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_26

    throw p0
.end method
