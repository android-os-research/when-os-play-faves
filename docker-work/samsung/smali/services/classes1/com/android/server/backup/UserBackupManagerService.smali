.class public Lcom/android/server/backup/UserBackupManagerService;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    }
.end annotation


# static fields
.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x5

.field public static final BACKUP_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.BACKUP_FINISHED"

.field public static final BACKUP_FINISHED_PACKAGE_EXTRA:Ljava/lang/String; = "packageName"

.field public static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field public static final BACKUP_MANIFEST_VERSION:I = 0x1

.field public static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field public static final BACKUP_METADATA_VERSION:I = 0x1

.field public static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field public static final BIND_TIMEOUT_INTERVAL:J = 0x2710L

.field public static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field public static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field public static final CLEAR_DATA_TIMEOUT_INTERVAL:J = 0x7530L

.field public static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field public static final INITIALIZATION_DELAY_MILLIS:J = 0xbb8L

.field public static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field public static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field public static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field public static final PRIVILEGE_BACKUP_ALLAPPS:I = 0x10

.field public static final PRIVILEGE_BACKUP_ALLSYSTEM:I = 0x20

.field public static final PRIVILEGE_BACKUP_APK:I = 0x1

.field public static final PRIVILEGE_BACKUP_COMPRESS:I = 0x40

.field public static final PRIVILEGE_BACKUP_IGNORE_ALLOW_BACKUP:I = 0x200

.field public static final PRIVILEGE_BACKUP_IGNORE_FORWARD_LOCK:I = 0x400

.field public static final PRIVILEGE_BACKUP_KEY_VALUE:I = 0x800

.field public static final PRIVILEGE_BACKUP_OBB:I = 0x2

.field public static final PRIVILEGE_BACKUP_OBBONLY:I = 0x80

.field public static final PRIVILEGE_BACKUP_SHARED:I = 0x4

.field public static final PRIVILEGE_BACKUP_SIZEONLY:I = 0x100

.field public static final PRIVILEGE_BACKUP_WIDGETS:I = 0x8

.field public static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field public static final SCHEDULE_FILE_VERSION:I = 0x1

.field public static final SERIAL_ID_FILE:Ljava/lang/String; = "serial_id"

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field public static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field public static final SKIP_USER_FACING_PACKAGES:Ljava/lang/String; = "backup_skip_user_facing_packages"

.field public static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field public static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field public static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.android.wallpaperbackup"

.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

.field public static mSplitBackupFlag:Ljava/lang/Boolean;

.field public static mSplitRestoreFlag:Ljava/lang/Boolean;

.field public static final valueCscYuva:Ljava/lang/String;


# instance fields
.field public final DEBUG_BACKUP:Z

.field public mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

.field public final mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation
.end field

.field public mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

.field public final mAgentConnectLock:Ljava/lang/Object;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public volatile mAncestralOperationType:J

.field public mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAncestralSerialNumberFile:Ljava/io/File;

.field public mAncestralToken:J

.field public mAutoRestore:Z

.field public final mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

.field public final mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field public final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

.field public final mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

.field public mBackupRestoreLock:Ljava/lang/Object;

.field public volatile mBackupRunning:Z

.field public final mBaseStateDir:Ljava/io/File;

.field public final mClearDataLock:Ljava/lang/Object;

.field public volatile mClearingData:Z

.field public mConnectedAgent:Landroid/app/IBackupAgent;

.field public volatile mConnecting:Z

.field public final mConstants:Lcom/android/server/backup/BackupManagerConstants;

.field public final mContext:Landroid/content/Context;

.field public mCurrentToken:J

.field public final mDataDir:Ljava/io/File;

.field public mEnabled:Z

.field public mEncPassword:Ljava/lang/String;

.field public mExtraFlag:I

.field public mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final mFullBackupScheduleFile:Ljava/io/File;

.field public mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field public mIsRestoreInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingRestores"
        }
    .end annotation
.end field

.field public mJournal:Lcom/android/server/backup/DataChangedJournal;

.field public final mJournalDir:Ljava/io/File;

.field public volatile mLastBackupPass:J

.field public final mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field public mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

.field public mPassword:Z

.field public final mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/keyvalue/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingInits:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingRestores:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingRestores"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation
.end field

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPrivilegePkgName:[Ljava/lang/String;

.field public mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

.field public final mQueueLock:Ljava/lang/Object;

.field public final mRegisterTransportsRequestedTime:J

.field public final mRng:Ljava/security/SecureRandom;

.field public final mRunInitIntent:Landroid/app/PendingIntent;

.field public final mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field public mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation
.end field

.field public final mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public mSepTimeNormal:I

.field public mSepTimeOut:Z

.field public mSepWakeLock:Z

.field public mSetupComplete:Z

.field public final mSetupObserver:Landroid/database/ContentObserver;

.field public mSmartSwitchBackupPath:[Ljava/lang/String;

.field public mTokenFile:Ljava/io/File;

.field public final mTokenGenerator:Ljava/util/Random;

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;

.field public final mUserId:I

.field public final mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;


# direct methods
.method public static synthetic $r8$lambda$-u0zY1RZBK0F1iiQXSBdZXtowqw(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->lambda$requestBackup$1(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8vqZuKJoGFscF6OlJ1XHsa4I09U(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerService;->lambda$cancelBackups$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GllW-3s8gHePdx5XY-3BK1RvjX8(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->lambda$agentDisconnected$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jdov0CnMW5sgs7050WW4dF0uaaU(Lcom/android/server/backup/UserBackupManagerService;JLcom/android/server/backup/BackupRestoreTask;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->lambda$opComplete$12(JLcom/android/server/backup/BackupRestoreTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KQe6I6ACxL5wHHBaieNGnvSv9E0(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/Set;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->lambda$parseLeftoverJournals$0(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NC_2Qew24Drt2XSGH4evZzWYdKo(Lcom/android/server/backup/UserBackupManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->lambda$handleCancel$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UCstHJZMtZQ4HwPele9tL8L0M9c(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->lambda$initializeTransports$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yv5Oy7vwsTkdFabvZU6JPQlLQ5c(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->lambda$selectBackupTransportAsync$9(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_HFAVC4lYvmKOgBe7pEAkMoITg8(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->lambda$updateStateOnBackupEnabled$8(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dQdNTkT3x-bbcTRJ-qzlv2hKbw8(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->parseLeftoverJournals()V

    return-void
.end method

.method public static synthetic $r8$lambda$eZxJpEqIGBxYseUbln80Bl6F4I0(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->lambda$semSetBackupEnabled$7(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nZ2P1AAJ6rhV0Y0TKdi9PHXolM0(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->lambda$restoreAtInstall$11(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nhDpousXIb-UWNtQnFwKddTYzHQ(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-YmQE0-8KntM3V_xWhWAnw-KhI(Lcom/android/server/backup/UserBackupManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->lambda$waitUntilOperationComplete$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yXm8aPb9UtWbtvE0XGddtFSj3QI(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->lambda$clearBackupData$6(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBackupHandler(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackupParticipants(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFullBackupQueue(Lcom/android/server/backup/UserBackupManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFullBackupScheduleFile(Lcom/android/server/backup/UserBackupManagerService;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/backup/UserBackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQueueLock(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningFullBackupTask(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduledBackupEligibility(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransportManager(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$maddPackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdataChangedImpl(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdequeueFullBackupLocked(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremovePackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteFullBackupScheduleAsync(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 333
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/UserBackupManagerService;->valueCscYuva:Ljava/lang/String;

    .line 337
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/backup/UserBackupManagerService;->mSplitBackupFlag:Ljava/lang/Boolean;

    .line 338
    sput-object v0, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v2, p6

    move-object/from16 v11, p7

    .line 614
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 373
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 376
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 379
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 387
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 395
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 412
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRestoreLock:Ljava/lang/Object;

    const-string v3, ""

    .line 413
    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    const/4 v13, 0x0

    .line 414
    iput v13, v0, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    .line 415
    iput-boolean v13, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 416
    iput-boolean v13, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    const/4 v3, 0x6

    .line 418
    iput v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeNormal:I

    const-string v14, "com.sec.android.easyMover"

    const-string v15, "com.sec.android.Kies"

    const-string v16, "com.samsung.android.da.daagent"

    const-string v17, "com.samsung.memorysaver"

    const-string v18, "com.samsung.knox.bnr"

    const-string v19, "com.samsung.knox.securefolder"

    const-string v20, "com.samsung.android.se.unit"

    .line 422
    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mPrivilegePkgName:[Ljava/lang/String;

    .line 430
    iput-boolean v13, v0, Lcom/android/server/backup/UserBackupManagerService;->DEBUG_BACKUP:Z

    .line 435
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 436
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 450
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 457
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 458
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v14, 0x0

    .line 472
    iput-object v14, v0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    const-wide/16 v4, 0x0

    .line 473
    iput-wide v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 474
    iput-wide v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    const/4 v15, 0x1

    .line 477
    iput-boolean v15, v0, Lcom/android/server/backup/UserBackupManagerService;->mPassword:Z

    .line 1186
    new-instance v4, Lcom/android/server/backup/UserBackupManagerService$1;

    invoke-direct {v4, v0}, Lcom/android/server/backup/UserBackupManagerService$1;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1396
    new-instance v4, Lcom/android/server/backup/UserBackupManagerService$2;

    invoke-direct {v4, v0}, Lcom/android/server/backup/UserBackupManagerService$2;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    .line 615
    iput v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "context cannot be null"

    .line 616
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v8

    check-cast v4, Landroid/content/Context;

    iput-object v8, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 618
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 619
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 620
    const-class v5, Landroid/app/ActivityManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManagerInternal;

    iput-object v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 621
    invoke-static {v4, v1, v13}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRules(Landroid/content/pm/PackageManager;II)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    const-string v4, "alarm"

    .line 624
    invoke-virtual {v8, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v4, "power"

    .line 625
    invoke-virtual {v8, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v4, "parent cannot be null"

    move-object/from16 v5, p3

    .line 627
    invoke-static {v5, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/app/backup/IBackupManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 630
    new-instance v4, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 631
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/server/backup/BackupAgentTimeoutParameters;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 632
    invoke-virtual {v4}, Landroid/util/KeyValueSettingObserver;->start()V

    .line 634
    new-instance v4, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-direct {v4, v1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;-><init>(I)V

    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    const-string/jumbo v5, "userBackupThread cannot be null"

    .line 636
    invoke-static {v9, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 637
    new-instance v7, Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v7, v0, v4, v9}, Lcom/android/server/backup/internal/BackupHandler;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/HandlerThread;)V

    iput-object v7, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 641
    invoke-static {v8, v1}, Lcom/android/server/backup/UserBackupManagerService;->getSetupCompleteSettingForUser(Landroid/content/Context;I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    const-string v5, "backup_auto_restore"

    .line 642
    invoke-static {v4, v5, v15, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_132

    move v5, v15

    goto :goto_133

    :cond_132
    move v5, v13

    :goto_133
    iput-boolean v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 645
    new-instance v5, Lcom/android/server/backup/internal/SetupObserver;

    invoke-direct {v5, v0, v7}, Lcom/android/server/backup/internal/SetupObserver;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/Handler;)V

    iput-object v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    const-string/jumbo v6, "user_setup_complete"

    .line 647
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 646
    invoke-virtual {v4, v6, v13, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v4, "baseStateDir cannot be null"

    .line 652
    invoke-static {v10, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v10

    check-cast v4, Ljava/io/File;

    iput-object v10, v0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    if-nez v1, :cond_175

    .line 656
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->mkdirs()Z

    .line 657
    invoke-static/range {p5 .. p5}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_175

    const-string v4, "BackupManagerService"

    .line 658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELinux restorecon failed on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 660
    invoke-static {v1, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 658
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_175
    const-string v4, "dataDir cannot be null"

    .line 667
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljava/io/File;

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 668
    new-instance v2, Lcom/android/server/backup/BackupPasswordManager;

    invoke-direct {v2, v8, v10, v3}, Lcom/android/server/backup/BackupPasswordManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 671
    new-instance v3, Lcom/android/server/backup/internal/RunInitializeReceiver;

    invoke-direct {v3, v0}, Lcom/android/server/backup/internal/RunInitializeReceiver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 672
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.app.backup.intent.INIT"

    .line 673
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const-string v6, "android.permission.BACKUP"

    const/16 v16, 0x0

    move-object/from16 v2, p2

    move-object v15, v7

    move-object/from16 v7, v16

    .line 674
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 681
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.backup.intent.INIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 682
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    .line 689
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 684
    invoke-static {v8, v13, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 692
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "pending"

    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    .line 693
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 694
    iput-object v14, v0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 696
    new-instance v2, Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v15, v3}, Lcom/android/server/backup/BackupManagerConstants;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 700
    invoke-virtual {v2}, Landroid/util/KeyValueSettingObserver;->start()V

    .line 705
    monitor-enter v12

    .line 706
    :try_start_1dd
    invoke-virtual {v0, v14}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 707
    monitor-exit v12
    :try_end_1e1
    .catchall {:try_start_1dd .. :try_end_1e1} :catchall_25e

    const-string/jumbo v2, "transportManager cannot be null"

    .line 710
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 711
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v11, v2}, Lcom/android/server/backup/TransportManager;->setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V

    .line 712
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    .line 714
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v11}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/backup/TransportManager;)V

    const-wide/16 v3, 0xbb8

    .line 713
    invoke-virtual {v15, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 718
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v15, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    new-instance v2, Lcom/android/server/backup/UserBackupPreferences;

    invoke-direct {v2, v8, v10}, Lcom/android/server/backup/UserBackupPreferences;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    .line 723
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*backup*-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 724
    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;-><init>(Landroid/os/PowerManager$WakeLock;I)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 729
    invoke-static {}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result v1

    if-eqz v1, :cond_251

    const-string v1, "BackupManagerService"

    const-string v2, "Backup Manager Yuva is Supported"

    .line 730
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 736
    :cond_251
    new-instance v1, Ljava/io/File;

    const-string v2, "fb-schedule"

    invoke-direct {v1, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->initPackageTracking()V

    return-void

    :catchall_25e
    move-exception v0

    .line 707
    :try_start_25f
    monitor-exit v12
    :try_end_260
    .catchall {:try_start_25f .. :try_end_260} :catchall_25e

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/backup/internal/LifecycleOperationStorage;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 373
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 376
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 379
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 387
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 395
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 412
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRestoreLock:Ljava/lang/Object;

    const-string v0, ""

    .line 413
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    const/4 v0, 0x0

    .line 414
    iput v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    .line 415
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 416
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    const/4 v1, 0x6

    .line 418
    iput v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeNormal:I

    const-string v2, "com.sec.android.easyMover"

    const-string v3, "com.sec.android.Kies"

    const-string v4, "com.samsung.android.da.daagent"

    const-string v5, "com.samsung.memorysaver"

    const-string v6, "com.samsung.knox.bnr"

    const-string v7, "com.samsung.knox.securefolder"

    const-string v8, "com.samsung.android.se.unit"

    .line 422
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPrivilegePkgName:[Ljava/lang/String;

    .line 430
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->DEBUG_BACKUP:Z

    .line 435
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 436
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 450
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 457
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 458
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    .line 472
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    const-wide/16 v2, 0x0

    .line 473
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 474
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    const/4 v4, 0x1

    .line 477
    iput-boolean v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mPassword:Z

    .line 1186
    new-instance v4, Lcom/android/server/backup/UserBackupManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/backup/UserBackupManagerService$1;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1396
    new-instance v4, Lcom/android/server/backup/UserBackupManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/backup/UserBackupManagerService$2;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    .line 578
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 580
    iput v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 581
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    .line 582
    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 583
    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 585
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 586
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 587
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    .line 588
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 589
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    .line 590
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 591
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 592
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 593
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 594
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 595
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 596
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 597
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 598
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 599
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    .line 600
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 601
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 602
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 603
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 604
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-void
.end method

.method public static addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 4734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UserID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 552
    new-instance v8, Lcom/android/server/backup/UserBackupManagerService;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/UserBackupManagerService;-><init>(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V

    return-object v8
.end method

.method public static createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/BackupManagerService;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Lcom/android/server/backup/UserBackupManagerService;"
        }
    .end annotation

    .line 496
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "backup_transport"

    .line 495
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    .line 502
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting with transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-static {p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    .line 502
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v9, Lcom/android/server/backup/TransportManager;

    invoke-direct {v9, p0, p1, p3, v0}, Lcom/android/server/backup/TransportManager;-><init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 509
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v7

    .line 510
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getDataDir(I)Ljava/io/File;

    move-result-object v8

    .line 512
    new-instance v6, Landroid/os/HandlerThread;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "backup-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0xa

    invoke-direct {v6, p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 514
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 516
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Started thread "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 516
    invoke-static {v2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 521
    invoke-static/range {v3 .. v9}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static getEligibilityRules(Landroid/content/pm/PackageManager;II)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 5

    .line 4567
    new-instance v0, Lcom/android/server/backup/utils/BackupEligibilityRules;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 4568
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;II)V

    return-object v0
.end method

.method public static getSetupCompleteSettingForUser(Landroid/content/Context;I)Z
    .registers 4

    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    .line 567
    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public static isYuvaSupported()Z
    .registers 2

    .line 742
    sget-object v0, Lcom/android/server/backup/UserBackupManagerService;->valueCscYuva:Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v1, "MemorySaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "BackupManagerService"

    const-string v1, "Memory Saver is there"

    .line 743
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$agentDisconnected$10(Ljava/lang/String;)V
    .registers 4

    .line 4254
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->operationTokensForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 4259
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V

    goto :goto_a

    :cond_1f
    return-void
.end method

.method public static synthetic lambda$cancelBackups$2(I)V
    .registers 1

    return-void
.end method

.method private synthetic lambda$clearBackupData$6(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3

    .line 2812
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 2813
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleCancel$4(I)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 2144
    :cond_5
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$initializeTransports$5(Ljava/lang/String;)V
    .registers 2

    .line 2684
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void
.end method

.method private synthetic lambda$opComplete$12(JLcom/android/server/backup/BackupRestoreTask;)V
    .registers 4

    .line 4506
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 4507
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 p3, 0x15

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4508
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic lambda$parseLeftoverJournals$0(Ljava/util/Set;Ljava/lang/String;)V
    .registers 3

    .line 1243
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1244
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$requestBackup$1(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3

    .line 1986
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$restoreAtInstall$11(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 4

    .line 4346
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 4347
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void
.end method

.method private synthetic lambda$selectBackupTransportAsync$9(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 7

    .line 3975
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3976
    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->registerAndSelectTransport(Landroid/content/ComponentName;)I

    move-result v0

    const-string v1, "BackupManagerService"

    const/4 v2, 0x0

    if-nez v0, :cond_21

    .line 3979
    :try_start_b
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3980
    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 3981
    invoke-virtual {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V
    :try_end_14
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_b .. :try_end_14} :catch_15

    goto :goto_21

    .line 3983
    :catch_15
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v0, "Transport got unregistered"

    .line 3985
    invoke-static {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3983
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :cond_21
    :goto_21
    if-eqz v2, :cond_27

    .line 3993
    :try_start_23
    invoke-interface {p2, v2}, Landroid/app/backup/ISelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_36

    .line 3995
    :cond_27
    invoke-interface {p2, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_2b

    goto :goto_36

    .line 3998
    :catch_2b
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string p1, "ISelectBackupTransportCallback listener not available"

    .line 4000
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3998
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    return-void
.end method

.method private synthetic lambda$semSetBackupEnabled$7(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5

    .line 3170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p3}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_6} :catch_d

    .line 3176
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3177
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_d
    move-exception p1

    .line 3173
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string p2, "Unexpected unregistered transport"

    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "BackupManagerService"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic lambda$updateStateOnBackupEnabled$8(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5

    .line 3728
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p3}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_6} :catch_d

    .line 3738
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3739
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_d
    move-exception p1

    .line 3731
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string p2, "Unexpected unregistered transport"

    .line 3733
    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "BackupManagerService"

    .line 3731
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic lambda$waitUntilOperationComplete$3(I)V
    .registers 3

    .line 2133
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static setSplitBackupFlagVal(Z)V
    .registers 1

    .line 753
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/server/backup/UserBackupManagerService;->mSplitBackupFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static setSplitRestoreFlagVal(Z)V
    .registers 1

    .line 759
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 12

    const-string v0, "BackupManagerService"

    .line 3596
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acknowledgeAdbBackupOrRestore : token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " allow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3598
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3596
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3605
    :try_start_27
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/params/AdbParams;

    .line 3606
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_c6

    if-eqz v1, :cond_40

    .line 3610
    iget-boolean v0, v1, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    if-eqz v0, :cond_40

    .line 3611
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "acknowledgeAdbBackupOrRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 3614
    :cond_40
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "acknowledgeAdbBackupOrRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    :goto_49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3622
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_c1

    .line 3623
    :try_start_50
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/params/AdbParams;

    if-eqz v3, :cond_ac

    .line 3625
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3626
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz p2, :cond_9b

    .line 3629
    instance-of p1, v3, Lcom/android/server/backup/params/AdbBackupParams;

    if-eqz p1, :cond_6e

    const/4 p1, 0x2

    goto :goto_70

    :cond_6e
    const/16 p1, 0xa

    .line 3633
    :goto_70
    iput-object p5, v3, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 3634
    iput-object p3, v3, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    .line 3636
    iput-object p4, v3, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    .line 3645
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result p2

    if-eqz p2, :cond_87

    iget-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    if-eqz p2, :cond_87

    .line 3646
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    :cond_87
    const/4 p2, 0x1

    .line 3648
    iput-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 3650
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 3651
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p2, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3652
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b9

    :cond_9b
    const-string p1, "BackupManagerService"

    .line 3654
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string p3, "User rejected full backup/restore operation"

    .line 3656
    invoke-static {p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3654
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    goto :goto_b9

    :cond_ac
    const-string p1, "BackupManagerService"

    .line 3662
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string p2, "Attempted to ack full backup/restore with invalid token"

    .line 3664
    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3662
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    :goto_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_50 .. :try_end_ba} :catchall_be

    .line 3670
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_be
    move-exception p0

    .line 3668
    :try_start_bf
    monitor-exit v2
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    :try_start_c0
    throw p0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    :catchall_c1
    move-exception p0

    .line 3670
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3671
    throw p0

    :catchall_c6
    move-exception p0

    .line 3606
    :try_start_c7
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw p0
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 23

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 3219
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Z)V

    return-void
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Z)V
    .registers 33

    move-object/from16 v1, p0

    move/from16 v0, p4

    move/from16 v8, p6

    move-object/from16 v12, p10

    .line 3234
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "adbBackup"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-nez v2, :cond_27a

    if-nez v8, :cond_29

    if-nez v0, :cond_29

    if-eqz v12, :cond_21

    .line 3247
    array-length v2, v12

    if-eqz v2, :cond_21

    goto :goto_29

    .line 3248
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Backup requested but neither shared nor any apps named"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3253
    :cond_29
    :goto_29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 3256
    :try_start_33
    iget-boolean v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_23b

    if-nez v2, :cond_85

    :try_start_37
    const-string v0, "BackupManagerService"

    .line 3257
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Backup not supported before setup"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_7f

    .line 3344
    :try_start_44
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_6a

    :catch_48
    move-exception v0

    move-object v2, v0

    const-string v0, "BackupManagerService"

    .line 3346
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3350
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3348
    invoke-static {v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3346
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    :goto_6a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "BackupManagerService"

    .line 3353
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Adb backup processing complete."

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    iput-object v14, v1, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 3357
    iput-boolean v13, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    return-void

    :catchall_7f
    move-exception v0

    move-object v2, v0

    move v5, v13

    move-object v4, v14

    goto/16 :goto_23f

    :cond_85
    :try_start_85
    const-string v2, "BackupManagerService"

    .line 3262
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting backup: apks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " obb="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " shared="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " all="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " system="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " includekeyvalue="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p9

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " pkgs="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3264
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3262
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BackupManagerService"

    .line 3281
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Beginning adb backup..."

    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_85 .. :try_end_e6} :catchall_23b

    if-eqz p11, :cond_ee

    const/4 v2, 0x3

    .line 3286
    :try_start_e9
    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v2
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_7f

    goto :goto_f3

    :cond_ee
    const/4 v2, 0x1

    .line 3289
    :try_start_ef
    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v2

    :goto_f3
    move-object/from16 v18, v2

    .line 3292
    new-instance v10, Lcom/android/server/backup/params/AdbBackupParams;

    iget v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;
    :try_end_fb
    .catchall {:try_start_ef .. :try_end_fb} :catchall_23b

    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v19, v4

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move v0, v7

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v20, v10

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, v18

    move v14, v0

    move v0, v15

    move-object/from16 v15, v19

    :try_start_11b
    invoke-direct/range {v2 .. v15}, Lcom/android/server/backup/params/AdbBackupParams;-><init>(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;I[Ljava/lang/String;)V

    move-object/from16 v2, v20

    .line 3296
    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

    .line 3299
    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->isPrivilegeBackupApp(I)Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    .line 3303
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    .line 3304
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_12f
    .catchall {:try_start_11b .. :try_end_12f} :catchall_237

    .line 3305
    :try_start_12f
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3306
    monitor-exit v3
    :try_end_135
    .catchall {:try_start_12f .. :try_end_135} :catchall_22e

    .line 3308
    :try_start_135
    iget-boolean v3, v2, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z
    :try_end_137
    .catchall {:try_start_135 .. :try_end_137} :catchall_237

    if-eqz v3, :cond_158

    const/4 v3, 0x1

    :try_start_13a
    const-string v4, ""

    .line 3309
    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 p2, p0

    move/from16 p3, v0

    move/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    invoke-virtual/range {p2 .. p7}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    :try_end_14e
    .catchall {:try_start_13a .. :try_end_14e} :catchall_152

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_1d9

    :catchall_152
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_23f

    :cond_158
    :try_start_158
    const-string v3, "BackupManagerService"

    .line 3313
    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting backup confirmation UI, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3315
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3313
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "fullback"

    .line 3318
    invoke-virtual {v1, v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1cb

    const-string v2, "BackupManagerService"

    .line 3319
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Unable to launch backup confirmation UI"

    .line 3321
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3319
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V
    :try_end_18e
    .catchall {:try_start_158 .. :try_end_18e} :catchall_237

    .line 3344
    :try_start_18e
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_192

    goto :goto_1b4

    :catch_192
    move-exception v0

    move-object v2, v0

    const-string v0, "BackupManagerService"

    .line 3346
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3350
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3348
    invoke-static {v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3346
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    :goto_1b4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "BackupManagerService"

    .line 3353
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Adb backup processing complete."

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 3355
    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;

    const/4 v5, 0x0

    .line 3357
    iput-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    return-void

    :cond_1cb
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3327
    :try_start_1cd
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v5, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 3332
    invoke-virtual {v1, v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    :goto_1d9
    const-string v0, "BackupManagerService"

    .line 3337
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Waiting for backup completion..."

    invoke-static {v3, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->startSepTimeout(Lcom/android/server/backup/params/AdbParams;)V

    .line 3340
    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 3341
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0x65

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_1f3
    .catchall {:try_start_1cd .. :try_end_1f3} :catchall_233

    .line 3344
    :try_start_1f3
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f6
    .catch Ljava/io/IOException; {:try_start_1f3 .. :try_end_1f6} :catch_1f7

    goto :goto_219

    :catch_1f7
    move-exception v0

    move-object v2, v0

    const-string v0, "BackupManagerService"

    .line 3346
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing output for adb backup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3350
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3348
    invoke-static {v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3346
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    :goto_219
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "BackupManagerService"

    .line 3353
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Adb backup processing complete."

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 3357
    iput-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    return-void

    :catchall_22e
    move-exception v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3306
    :goto_231
    :try_start_231
    monitor-exit v3
    :try_end_232
    .catchall {:try_start_231 .. :try_end_232} :catchall_235

    :try_start_232
    throw v0
    :try_end_233
    .catchall {:try_start_232 .. :try_end_233} :catchall_233

    :catchall_233
    move-exception v0

    goto :goto_23e

    :catchall_235
    move-exception v0

    goto :goto_231

    :catchall_237
    move-exception v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_23e

    :catchall_23b
    move-exception v0

    move v5, v13

    move-object v4, v14

    :goto_23e
    move-object v2, v0

    .line 3344
    :goto_23f
    :try_start_23f
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_242
    .catch Ljava/io/IOException; {:try_start_23f .. :try_end_242} :catch_243

    goto :goto_265

    :catch_243
    move-exception v0

    move-object v3, v0

    const-string v0, "BackupManagerService"

    .line 3346
    iget v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing output for adb backup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3350
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3348
    invoke-static {v6, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3346
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    :goto_265
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "BackupManagerService"

    .line 3353
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Adb backup processing complete."

    invoke-static {v3, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 3357
    iput-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    .line 3358
    throw v2

    .line 3238
    :cond_27a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Backup supported only for the device owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    const/4 v0, 0x1

    .line 3434
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;Z)V

    return-void
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;Z)V
    .registers 14

    .line 3438
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "adbRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3440
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez v0, :cond_18f

    .line 3445
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3449
    :try_start_17
    iget-boolean v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v3, :cond_5a

    const-string p2, "BackupManagerService"

    .line 3450
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Full restore not permitted before setup"

    .line 3452
    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3450
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_15c

    .line 3512
    :try_start_28
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_49

    :catch_2c
    move-exception p1

    const-string p2, "BackupManagerService"

    .line 3514
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_36
    const-string v4, "Error trying to close fd after adb restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3516
    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3514
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :goto_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string p1, "BackupManagerService"

    .line 3520
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string p2, "adb restore processing complete."

    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5a
    :try_start_5a
    const-string v3, "BackupManagerService"

    .line 3456
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Beginning restore..."

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    new-instance v3, Lcom/android/server/backup/params/AdbRestoreParams;

    invoke-direct {v3, p1}, Lcom/android/server/backup/params/AdbRestoreParams;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 3459
    iput-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

    .line 3461
    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->isPrivilegeBackupApp(I)Z

    move-result v0

    iput-boolean v0, v3, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_7a

    .line 3464
    iput-boolean v0, v3, Lcom/android/server/backup/params/AdbParams;->typeMigration:Z

    goto :goto_7d

    :cond_7a
    const/4 p2, 0x1

    .line 3466
    iput-boolean p2, v3, Lcom/android/server/backup/params/AdbParams;->typeMigration:Z

    :goto_7d
    const-string p2, "BackupManagerService"

    .line 3468
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "params.typeMigration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lcom/android/server/backup/params/AdbParams;->typeMigration:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v6

    .line 3471
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_a3
    .catchall {:try_start_5a .. :try_end_a3} :catchall_15c

    .line 3472
    :try_start_a3
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3473
    monitor-exit p2
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_159

    .line 3475
    :try_start_a9
    iget-boolean p2, v3, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    if-eqz p2, :cond_b8

    const/4 v7, 0x1

    const-string v8, ""

    .line 3476
    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    goto :goto_10b

    :cond_b8
    const-string p2, "BackupManagerService"

    .line 3480
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting restore confirmation UI, token="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3482
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3480
    invoke-static {p2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "fullrest"

    .line 3485
    invoke-virtual {p0, v6, p2}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_ff

    const-string p2, "BackupManagerService"

    .line 3486
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Unable to launch restore confirmation"

    .line 3488
    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3486
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->delete(I)V
    :try_end_ee
    .catchall {:try_start_a9 .. :try_end_ee} :catchall_15c

    .line 3512
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f3

    goto/16 :goto_49

    :catch_f3
    move-exception p1

    const-string p2, "BackupManagerService"

    .line 3514
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_36

    .line 3494
    :cond_ff
    :try_start_ff
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5, v0, v0}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 3499
    invoke-virtual {p0, v6, v3}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    :goto_10b
    const-string p2, "BackupManagerService"

    .line 3505
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Waiting for restore completion..."

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->startSepTimeout(Lcom/android/server/backup/params/AdbParams;)V

    .line 3508
    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 3509
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v4, 0x65

    invoke-virtual {p2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_125
    .catchall {:try_start_ff .. :try_end_125} :catchall_15c

    .line 3512
    :try_start_125
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_129

    goto :goto_146

    :catch_129
    move-exception p1

    const-string p2, "BackupManagerService"

    .line 3514
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error trying to close fd after adb restore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3516
    invoke-static {v3, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3514
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :goto_146
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string p1, "BackupManagerService"

    .line 3520
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "adb restore processing complete."

    invoke-static {p2, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    return-void

    :catchall_159
    move-exception v0

    .line 3473
    :try_start_15a
    monitor-exit p2
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_159

    :try_start_15b
    throw v0
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_15c

    :catchall_15c
    move-exception p2

    .line 3512
    :try_start_15d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_160} :catch_161

    goto :goto_17e

    :catch_161
    move-exception p1

    const-string v0, "BackupManagerService"

    .line 3514
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error trying to close fd after adb restore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3516
    invoke-static {v3, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3514
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :goto_17e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string p1, "BackupManagerService"

    .line 3520
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v0, "adb restore processing complete."

    invoke-static {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    throw p2

    .line 3442
    :cond_18f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Restore supported only for the device owner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addPackageParticipantsLocked([Ljava/lang/String;)V
    .registers 6

    .line 1537
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_12

    .line 1545
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p1, v2

    .line 1546
    invoke-virtual {p0, v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    const/4 p1, 0x0

    .line 1552
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    :cond_16
    return-void
.end method

.method public final addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1565
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_1a

    .line 1566
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1567
    :cond_1a
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1568
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-nez v2, :cond_32

    .line 1570
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1571
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1573
    :cond_32
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1583
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0x10

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1584
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1585
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_47
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8

    .line 4202
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4203
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_39

    const-string v1, "BackupManagerService"

    .line 4204
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " agent="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4206
    invoke-static {v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4204
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    const/4 p1, 0x0

    .line 4210
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    goto :goto_5e

    :cond_39
    const-string p1, "BackupManagerService"

    .line 4212
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system process uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " claiming agent connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4214
    invoke-static {p2, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4212
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    :goto_5e
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 4221
    monitor-exit v0

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 7

    .line 4230
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4231
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_12

    const/4 v1, 0x0

    .line 4232
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x0

    .line 4233
    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    goto :goto_37

    :cond_12
    const-string v1, "BackupManagerService"

    .line 4235
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " claiming agent disconnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4237
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4235
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    const-string v1, "BackupManagerService"

    .line 4243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agentDisconnected: the backup agent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " died: cancel current operations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V

    const-string p1, "agent-disconnected"

    .line 4262
    invoke-virtual {p0, p1, v1}, Lcom/android/server/backup/UserBackupManagerService;->getThreadForAsyncOperation(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 4263
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 4265
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4266
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_96

    .line 4268
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

    const/16 v0, 0x65

    if-eqz p1, :cond_7f

    .line 4269
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4270
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4271
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_95

    .line 4272
    :cond_7f
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

    if-eqz p1, :cond_95

    .line 4273
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4274
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4275
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_95
    :goto_95
    return-void

    :catchall_96
    move-exception p0

    .line 4266
    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p0
.end method

.method public final allAgentPackages()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1648
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 1649
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_4d

    .line 1651
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1653
    :try_start_18
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1654
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const v5, 0x8000

    and-int/2addr v5, v4

    if-eqz v5, :cond_43

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v3, :cond_43

    const/high16 v3, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2c

    goto :goto_43

    .line 1662
    :cond_2c
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x400

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1664
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v4, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 1665
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    goto :goto_4a

    .line 1657
    :cond_43
    :goto_43
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_46} :catch_47

    goto :goto_4a

    .line 1668
    :catch_47
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_4d
    return-object v0
.end method

.method public backupNow()V
    .registers 7

    .line 2831
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "backupNow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2835
    :try_start_d
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x5

    .line 2836
    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    .line 2837
    iget-boolean v2, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v2, :cond_2f

    const-string v2, "BackupManagerService"

    .line 2839
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Not running backup while in battery save mode"

    .line 2841
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2839
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v2, v3, p0}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    goto :goto_8d

    :cond_2f
    const-string v2, "BackupManagerService"

    .line 2848
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Scheduling immediate backup pass"

    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_c4

    .line 2852
    :try_start_41
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_c1

    if-lez v3, :cond_6c

    .line 2862
    :try_start_4b
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2863
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_59
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4b .. :try_end_59} :catch_5a
    .catchall {:try_start_4b .. :try_end_59} :catchall_c1

    goto :goto_67

    :catch_5a
    :try_start_5a
    const-string v3, "BackupManagerService"

    .line 2865
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Run init intent cancelled"

    .line 2867
    invoke-static {p0, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2865
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :goto_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_5a .. :try_end_68} :catchall_c1

    .line 2889
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2871
    :cond_6c
    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_c1

    .line 2874
    :try_start_6d
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v2

    if-nez v2, :cond_7a

    goto :goto_91

    .line 2883
    :cond_7a
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2884
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2886
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V
    :try_end_8d
    .catchall {:try_start_6d .. :try_end_8d} :catchall_c4

    .line 2889
    :goto_8d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_91
    :goto_91
    :try_start_91
    const-string v2, "BackupManagerService"

    .line 2875
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup pass but enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2877
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " setupComplete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2878
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2877
    invoke-static {v3, p0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2875
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_91 .. :try_end_bd} :catchall_c4

    .line 2889
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_c1
    move-exception p0

    .line 2871
    :try_start_c2
    monitor-exit v2
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    :try_start_c3
    throw p0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c4

    :catchall_c4
    move-exception p0

    .line 2889
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2890
    throw p0
.end method

.method public backupPasswordMatches(Ljava/lang/String;)Z
    .registers 2

    .line 1284
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupPasswordManager;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 26

    move-object/from16 v13, p0

    .line 2309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2312
    iget-object v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    monitor-enter v2

    .line 2313
    :try_start_9
    iget-object v3, v13, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v3

    .line 2314
    iget-object v5, v13, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v5

    .line 2315
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1f9

    const/4 v2, 0x0

    .line 2319
    iget-boolean v7, v13, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    const/4 v14, 0x0

    if-eqz v7, :cond_1f7

    iget-boolean v7, v13, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v7, :cond_22

    goto/16 :goto_1f7

    .line 2332
    :cond_22
    iget-object v7, v13, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v8, 0x4

    .line 2333
    invoke-virtual {v7, v8}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v7

    .line 2334
    iget-boolean v7, v7, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v7, :cond_44

    const-string v0, "BackupManagerService"

    .line 2336
    iget v1, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Deferring scheduled full backups in battery saver mode"

    .line 2338
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2336
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    iget v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v1, v13, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v1, v5, v6, v2}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    return v14

    :cond_44
    const-string v7, "BackupManagerService"

    .line 2346
    iget v8, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v9, "Beginning scheduled full backup operation"

    .line 2348
    invoke-static {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2346
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    iget-object v15, v13, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2353
    :try_start_54
    iget-object v7, v13, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v7, :cond_67

    const-string v0, "BackupManagerService"

    .line 2354
    iget v1, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Backup triggered but one already/still running!"

    .line 2356
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2354
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    monitor-exit v15

    return v14

    :cond_67
    move-wide v8, v3

    const/4 v7, 0x1

    .line 2370
    :goto_69
    iget-object v10, v13, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_80

    const-string v0, "BackupManagerService"

    .line 2373
    iget v1, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Backup queue empty; doing nothing"

    .line 2375
    invoke-static {v1, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2373
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_160

    .line 2384
    :cond_80
    iget-object v10, v13, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v10}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v10

    .line 2385
    invoke-virtual {v13, v10}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8e

    move-wide v8, v5

    move v7, v14

    :cond_8e
    if-eqz v7, :cond_158

    .line 2400
    iget-object v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 2401
    iget-wide v10, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J
    :try_end_9a
    .catchall {:try_start_54 .. :try_end_9a} :catchall_1f4

    sub-long v10, v0, v10

    cmp-long v7, v10, v3

    if-ltz v7, :cond_a2

    const/4 v7, 0x1

    goto :goto_a3

    :cond_a2
    move v7, v14

    :goto_a3
    if-nez v7, :cond_a9

    sub-long v8, v3, v10

    goto/16 :goto_15f

    .line 2418
    :cond_a9
    :try_start_a9
    iget-object v10, v13, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v11, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    iget v12, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v10, v11, v14, v12}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 2420
    iget-object v11, v13, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v11, v10}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v11
    :try_end_b9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a9 .. :try_end_b9} :catch_145
    .catchall {:try_start_a9 .. :try_end_b9} :catchall_1f4

    if-nez v11, :cond_ce

    .line 2434
    :try_start_bb
    iget-object v10, v13, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bb .. :try_end_c0} :catch_c7
    .catchall {:try_start_bb .. :try_end_c0} :catchall_1f4

    move-wide/from16 v18, v0

    move-wide/from16 v20, v5

    const/4 v10, 0x1

    goto/16 :goto_15d

    :catch_c7
    move-wide/from16 v18, v0

    move-wide/from16 v20, v5

    move v10, v14

    goto/16 :goto_14a

    .line 2439
    :cond_ce
    :try_start_ce
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_d2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ce .. :try_end_d2} :catch_145
    .catchall {:try_start_ce .. :try_end_d2} :catchall_1f4

    and-int/lit16 v11, v11, 0x2000

    if-nez v11, :cond_e2

    .line 2440
    :try_start_d6
    iget-object v11, v13, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2441
    invoke-virtual {v11, v10}, Landroid/app/ActivityManagerInternal;->isAppForeground(I)Z

    move-result v10
    :try_end_de
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d6 .. :try_end_de} :catch_c7
    .catchall {:try_start_d6 .. :try_end_de} :catchall_1f4

    if-eqz v10, :cond_e2

    const/4 v10, 0x1

    goto :goto_e3

    :cond_e2
    move v10, v14

    :goto_e3
    if-eqz v10, :cond_140

    .line 2445
    :try_start_e5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v17, 0x36ee80

    add-long v11, v11, v17

    iget-object v14, v13, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;
    :try_end_f0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e5 .. :try_end_f0} :catch_13b
    .catchall {:try_start_e5 .. :try_end_f0} :catchall_1f4

    move-wide/from16 v18, v0

    const v0, 0x6ddd00

    .line 2447
    :try_start_f5
    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v11, v0

    .line 2449
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "BackupManagerService"

    .line 2450
    iget v14, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_107
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f5 .. :try_end_107} :catch_13d
    .catchall {:try_start_f5 .. :try_end_107} :catchall_1f4

    move-wide/from16 v20, v5

    :try_start_109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Full backup time but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is busy; deferring to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 2457
    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2452
    invoke-static {v14, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2450
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    iget-object v0, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    sub-long/2addr v11, v3

    invoke-virtual {v13, v0, v11, v12}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_13a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_109 .. :try_end_13a} :catch_14a
    .catchall {:try_start_109 .. :try_end_13a} :catchall_1f4

    goto :goto_15d

    :catch_13b
    move-wide/from16 v18, v0

    :catch_13d
    move-wide/from16 v20, v5

    goto :goto_14a

    :cond_140
    move-wide/from16 v18, v0

    move-wide/from16 v20, v5

    goto :goto_15d

    :catch_145
    move-wide/from16 v18, v0

    move-wide/from16 v20, v5

    const/4 v10, 0x0

    .line 2469
    :catch_14a
    :goto_14a
    :try_start_14a
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_155

    const/4 v0, 0x1

    goto :goto_156

    :cond_155
    const/4 v0, 0x0

    :goto_156
    move v7, v0

    goto :goto_15d

    :cond_158
    move-wide/from16 v18, v0

    move-wide/from16 v20, v5

    const/4 v10, 0x0

    :goto_15d
    if-nez v10, :cond_1eb

    :goto_15f
    move v14, v7

    :goto_160
    move-wide v11, v8

    if-eqz v14, :cond_1a4

    .line 2475
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v10, 0x1

    invoke-direct {v7, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v4, v10, [Ljava/lang/String;

    .line 2476
    iget-object v0, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v4, v1
    :try_end_170
    .catchall {:try_start_14a .. :try_end_170} :catchall_1f4

    .line 2478
    :try_start_170
    iget-object v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    const-string v16, "BMS.beginFullBackup()"

    const/4 v1, 0x0

    .line 2490
    invoke-virtual {v13, v1}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v18
    :try_end_17e
    .catch Ljava/lang/IllegalStateException; {:try_start_170 .. :try_end_17e} :catch_196
    .catchall {:try_start_170 .. :try_end_17e} :catchall_1f4

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v19, v10

    move v10, v0

    move-wide/from16 v22, v11

    move-object/from16 v11, v16

    move/from16 v16, v19

    move-object/from16 v12, v18

    .line 2478
    :try_start_18d
    invoke-static/range {v1 .. v12}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_end_193
    .catch Ljava/lang/IllegalStateException; {:try_start_18d .. :try_end_193} :catch_194
    .catchall {:try_start_18d .. :try_end_193} :catchall_1f4

    goto :goto_1a8

    :catch_194
    move-exception v0

    goto :goto_19b

    :catch_196
    move-exception v0

    move/from16 v16, v10

    move-wide/from16 v22, v11

    :goto_19b
    :try_start_19b
    const-string v1, "BackupManagerService"

    const-string v2, "Failed to start backup"

    .line 2492
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v14, 0x0

    goto :goto_1a8

    :cond_1a4
    move-wide/from16 v22, v11

    const/16 v16, 0x1

    :goto_1a8
    if-nez v14, :cond_1d4

    const-string v0, "BackupManagerService"

    .line 2499
    iget v1, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing pending full backup or failed to start the operation; rescheduling +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v22

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2501
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2499
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    iget v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v1, v13, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v1, v8, v9, v2}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2508
    monitor-exit v15

    const/4 v1, 0x0

    return v1

    .line 2512
    :cond_1d4
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2514
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2515
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, v13, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2516
    monitor-exit v15

    return v16

    :cond_1eb
    const/16 v16, 0x1

    move-wide/from16 v0, v18

    move-wide/from16 v5, v20

    const/4 v14, 0x0

    goto/16 :goto_69

    :catchall_1f4
    move-exception v0

    monitor-exit v15
    :try_end_1f6
    .catchall {:try_start_19b .. :try_end_1f6} :catchall_1f4

    throw v0

    :cond_1f7
    :goto_1f7
    move v1, v14

    return v1

    :catchall_1f9
    move-exception v0

    .line 2315
    :try_start_1fa
    monitor-exit v2
    :try_end_1fb
    .catchall {:try_start_1fa .. :try_end_1fb} :catchall_1f9

    throw v0
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 8

    const-string v0, "BackupManagerService"

    .line 4396
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginRestoreSession: pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " transport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4398
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4396
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_7b

    .line 4405
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_7b

    .line 4410
    :try_start_30
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_38} :catch_43

    .line 4419
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v2, v3, :cond_7b

    goto :goto_7c

    :catch_43
    const-string p2, "BackupManagerService"

    .line 4412
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asked to restore nonexistent pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4414
    invoke-static {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4412
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    move v0, v1

    :goto_7c
    if-eqz v0, :cond_88

    .line 4429
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "beginRestoreSession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    :cond_88
    const-string v0, "BackupManagerService"

    .line 4433
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string/jumbo v2, "restoring self on current transport; no permission needed"

    .line 4435
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4433
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_96
    const/4 v0, 0x0

    .line 4444
    :try_start_97
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v2, "BMS.beginRestoreSession"

    invoke-virtual {v1, p2, v2}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v1
    :try_end_9f
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_97 .. :try_end_9f} :catch_f6
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_97 .. :try_end_9f} :catch_f6
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9f} :catch_f6
    .catchall {:try_start_97 .. :try_end_9f} :catchall_f4

    .line 4446
    :try_start_9f
    invoke-virtual {p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->getOperationTypeFromTransport(Lcom/android/server/backup/transport/TransportConnection;)I

    move-result v2
    :try_end_a3
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_9f .. :try_end_a3} :catch_f2
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9f .. :try_end_a3} :catch_f2
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a3} :catch_f2
    .catchall {:try_start_9f .. :try_end_a3} :catchall_118

    if-eqz v1, :cond_ac

    .line 4453
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v4, "BMS.beginRestoreSession"

    invoke-virtual {v3, v1, v4}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 4458
    :cond_ac
    monitor-enter p0

    .line 4459
    :try_start_ad
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eqz v1, :cond_c0

    const-string p1, "BackupManagerService"

    .line 4460
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "Restore session requested but one already active"

    .line 4462
    invoke-static {p2, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4460
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    monitor-exit p0

    return-object v0

    .line 4466
    :cond_c0
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    if-eqz v1, :cond_d3

    const-string p1, "BackupManagerService"

    .line 4467
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "Restore session requested but currently running backups"

    .line 4469
    invoke-static {p2, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4467
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    monitor-exit p0

    return-object v0

    .line 4474
    :cond_d3
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 4475
    invoke-virtual {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/backup/restore/ActiveRestoreSession;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 4476
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 p2, 0x8

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 4477
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    move-result-wide v0

    .line 4476
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4478
    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_ad .. :try_end_ec} :catchall_ef

    .line 4479
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object p0

    :catchall_ef
    move-exception p1

    .line 4478
    :try_start_f0
    monitor-exit p0
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw p1

    :catch_f2
    move-exception p1

    goto :goto_f8

    :catchall_f4
    move-exception p1

    goto :goto_11a

    :catch_f6
    move-exception p1

    move-object v1, v0

    :goto_f8
    :try_start_f8
    const-string p2, "BackupManagerService"

    .line 4449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get operation type from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catchall {:try_start_f8 .. :try_end_10e} :catchall_118

    if-eqz v1, :cond_117

    .line 4453
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string p1, "BMS.beginRestoreSession"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    :cond_117
    return-object v0

    :catchall_118
    move-exception p1

    move-object v0, v1

    :goto_11a
    if-eqz v0, :cond_123

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string p2, "BMS.beginRestoreSession"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 4456
    :cond_123
    throw p1
.end method

.method public bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;
    .registers 11

    .line 1733
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1734
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    const/4 v1, 0x0

    .line 1735
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_c1

    .line 1737
    :try_start_9
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v2, v3, p2, v4, p3}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;III)Z

    move-result p2

    if-eqz p2, :cond_b6

    const-string p2, "BackupManagerService"

    .line 1739
    iget p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "awaiting agent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v2, 0x2710

    add-long/2addr p2, v2

    .line 1744
    :goto_38
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v2, :cond_73

    .line 1745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_44} :catch_b6
    .catchall {:try_start_9 .. :try_end_44} :catchall_c1

    cmp-long v2, v2, p2

    if-gez v2, :cond_73

    .line 1747
    :try_start_48
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4f} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4f} :catch_b6
    .catchall {:try_start_48 .. :try_end_4f} :catchall_c1

    goto :goto_38

    :catch_50
    move-exception v2

    :try_start_51
    const-string v3, "BackupManagerService"

    .line 1750
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interrupted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1751
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 1752
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    goto :goto_38

    .line 1757
    :cond_73
    iget-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    if-eqz p2, :cond_95

    const-string p2, "BackupManagerService"

    .line 1758
    iget p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout waiting for agent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1760
    invoke-static {p3, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1758
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    :cond_95
    const-string p1, "BackupManagerService"

    .line 1764
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got agent "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_b6} :catch_b6
    .catchall {:try_start_51 .. :try_end_b6} :catchall_c1

    .line 1771
    :catch_b6
    :cond_b6
    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_c1

    if-nez v1, :cond_c0

    .line 1773
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/app/ActivityManagerInternal;->clearPendingBackup(I)V

    :cond_c0
    return-object v1

    :catchall_c1
    move-exception p0

    .line 1771
    :try_start_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw p0
.end method

.method public cancelBackups()V
    .registers 8

    .line 2053
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "cancelBackups"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2059
    :try_start_d
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    const/4 v3, 0x2

    .line 2060
    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->operationTokensForOpType(I)Ljava/util/Set;

    move-result-object v2

    .line 2062
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2063
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v6}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->cancelOperation(IZLjava/util/function/IntConsumer;)V

    goto :goto_18

    .line 2068
    :cond_34
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0x36ee80

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2069
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0x6ddd00

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v2, v3, v4, v5, p0}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    :try_end_4c
    .catchall {:try_start_d .. :try_end_4c} :catchall_50

    .line 2071
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_50
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2072
    throw p0
.end method

.method public clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1792
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public clearApplicationDataBeforeRestore(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1800
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V
    .registers 11

    .line 1816
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    if-eqz p2, :cond_1f

    .line 1820
    iget p2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-lt p2, v3, :cond_1f

    .line 1822
    iget p2, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v0, 0x4000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1d

    :goto_1b
    move p2, v1

    goto :goto_26

    :cond_1d
    move p2, v2

    goto :goto_26

    .line 1825
    :cond_1f
    iget p2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_21} :catch_a4

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_1d

    goto :goto_1b

    :goto_26
    if-nez p2, :cond_29

    return-void

    .line 1848
    :cond_29
    new-instance p2, Lcom/android/server/backup/internal/ClearDataObserver;

    invoke-direct {p2, p0}, Lcom/android/server/backup/internal/ClearDataObserver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 1850
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1851
    :try_start_31
    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_a1

    .line 1853
    :try_start_33
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v1, p1, p3, p2, v3}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3a} :catch_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_a1

    .line 1860
    :catch_3a
    :try_start_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v3, 0x7530

    add-long/2addr p2, v3

    .line 1861
    :goto_41
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    if-eqz v1, :cond_7a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_a1

    cmp-long v1, v3, p2

    if-gez v1, :cond_7a

    .line 1863
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_54} :catch_55
    .catchall {:try_start_4d .. :try_end_54} :catchall_a1

    goto :goto_41

    :catch_55
    move-exception v1

    .line 1866
    :try_start_56
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    const-string v3, "BackupManagerService"

    .line 1867
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interrupted while waiting for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " data to be cleared"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1869
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1867
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 1878
    :cond_7a
    iget-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    if-eqz p2, :cond_9f

    const-string p2, "BackupManagerService"

    .line 1879
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing app data for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timed out"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1881
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1879
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_9f
    monitor-exit v0

    return-void

    :catchall_a1
    move-exception p0

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_56 .. :try_end_a3} :catchall_a1

    throw p0

    :catch_a4
    const-string p2, "BackupManagerService"

    .line 1841
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tried to clear data for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but not found"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1843
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1841
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "BackupManagerService"

    .line 2753
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearBackupData() of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2755
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2753
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    :try_start_24
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_2e} :catch_b0

    .line 2776
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2777
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2776
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4e

    .line 2778
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    goto :goto_54

    .line 2788
    :cond_4e
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v1

    .line 2791
    :goto_54
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2798
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2799
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2800
    :try_start_64
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v4, "BMS.clearBackupData()"

    .line 2802
    invoke-virtual {v3, p1, v4}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v3

    if-nez v3, :cond_83

    .line 2805
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/params/ClearRetryParams;

    invoke-direct {v3, p1, p2}, Lcom/android/server/backup/params/ClearRetryParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2807
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2808
    monitor-exit v1

    return-void

    .line 2810
    :cond_83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1
    :try_end_87
    .catchall {:try_start_64 .. :try_end_87} :catchall_ac

    .line 2812
    :try_start_87
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v3}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 2814
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2815
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v5, 0x4

    new-instance v6, Lcom/android/server/backup/params/ClearParams;

    invoke-direct {v6, v3, v0, v2}, Lcom/android/server/backup/params/ClearParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2818
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a2
    .catchall {:try_start_87 .. :try_end_a2} :catchall_a7

    .line 2820
    :try_start_a2
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2822
    monitor-exit v1

    goto :goto_af

    :catchall_a7
    move-exception p0

    .line 2820
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2821
    throw p0

    :catchall_ac
    move-exception p0

    .line 2822
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_a2 .. :try_end_ae} :catchall_ac

    throw p0

    :cond_af
    :goto_af
    return-void

    :catch_b0
    const-string p1, "BackupManagerService"

    .line 2765
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such package \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' - not clearing backup data"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2767
    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2765
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearPendingInits()V
    .registers 1

    .line 974
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .registers 4

    .line 4484
    monitor-enter p0

    .line 4485
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eq p1, v0, :cond_13

    const-string p1, "BackupManagerService"

    .line 4486
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "ending non-current restore session"

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_13
    const-string p1, "BackupManagerService"

    .line 4489
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "Clearing restore session and halting timeout"

    .line 4491
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4489
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 4494
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 4495
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4497
    :goto_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 5

    .line 2651
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 2653
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataChanged but no participant pkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2661
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2655
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    .line 2653
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2665
    :cond_2f
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService$4;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dataChangedImpl(Ljava/lang/String;)V
    .registers 3

    .line 2566
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2567
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method public final dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_2b

    const-string p2, "BackupManagerService"

    .line 2575
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataChanged but no participant pkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2577
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2575
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2587
    :cond_2b
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2589
    :try_start_2e
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 2592
    new-instance p2, Lcom/android/server/backup/keyvalue/BackupRequest;

    invoke-direct {p2, p1}, Lcom/android/server/backup/keyvalue/BackupRequest;-><init>(Ljava/lang/String;)V

    .line 2593
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_44

    .line 2604
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    .line 2607
    :cond_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_4f

    .line 2610
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {p1, p2, p0}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    return-void

    :catchall_4f
    move-exception p0

    .line 2607
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2617
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2618
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2617
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 2619
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2620
    :try_start_16
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    .line 2621
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    const-string v0, "@pm@"

    .line 2625
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string p0, "@pm@"

    .line 2626
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0

    .line 2628
    :cond_3a
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter p1

    .line 2629
    :try_start_3d
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {p0}, Lcom/android/server/backup/utils/SparseArrayUtils;->union(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_45
    move-exception p0

    .line 2630
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_45

    throw p0
.end method

.method public final dequeueFullBackupLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation

    .line 2220
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 2222
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 2223
    iget-object v1, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2224
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 4573
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_4a

    .line 4576
    :try_start_6
    array-length p1, p3

    const/4 v2, 0x0

    :goto_8
    if-ge v2, p1, :cond_4a

    aget-object v3, p3, v2

    const-string v4, "agents"

    .line 4577
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 4578
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_51

    .line 4591
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1b
    :try_start_1b
    const-string/jumbo v4, "transportclients"

    .line 4580
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 4581
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p0, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_51

    .line 4591
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_31
    :try_start_31
    const-string/jumbo v4, "transportstats"

    .line 4583
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 4584
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p0, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportStats(Ljava/io/PrintWriter;)V
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_51

    .line 4591
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4589
    :cond_4a
    :try_start_4a
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_51

    .line 4591
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_51
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4592
    throw p0
.end method

.method public final dumpAgents(Ljava/io/PrintWriter;)V
    .registers 4

    .line 4596
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object p0

    const-string v0, "Defined backup agents:"

    .line 4597
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4598
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    const-string v1, "  "

    .line 4599
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4600
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x3a

    .line 4601
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(C)V

    const-string v1, "      "

    .line 4602
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4603
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_35
    return-void
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .registers 15
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 4610
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_1f

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4611
    :goto_1f
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4612
    :try_start_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Backup Manager is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    if-eqz v3, :cond_36

    const-string v3, "enabled"

    goto :goto_38

    :cond_36
    const-string v3, "disabled"

    :goto_38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4613
    iget-boolean v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v3, :cond_48

    const-string/jumbo v3, "not "

    goto :goto_4a

    :cond_48
    const-string v3, ""

    :goto_4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setup complete / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4614
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_5f

    const-string/jumbo v3, "not "

    goto :goto_61

    :cond_5f
    const-string v3, ""

    :goto_61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pending init"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4612
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto-restore is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    if-eqz v3, :cond_82

    const-string v3, "enabled"

    goto :goto_84

    :cond_82
    const-string v3, "disabled"

    :goto_84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4616
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    if-eqz v2, :cond_97

    const-string v2, "Backup currently running"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4617
    :cond_97
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v2

    if-eqz v2, :cond_a0

    const-string v2, "Backup in progress"

    goto :goto_a2

    :cond_a0
    const-string v2, "No backups running"

    :goto_a2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last backup pass started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (now = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4618
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  next scheduled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v3}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Transport whitelist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4623
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_104
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    const-string v4, "    "

    .line 4624
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4625
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_104

    .line 4628
    :cond_11d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Available transports:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4629
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1fe

    .line 4631
    array-length v4, v2

    move v5, v3

    :goto_13a
    if-ge v5, v4, :cond_1fe

    aget-object v6, v2, v5

    .line 4632
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v8}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_152

    const-string v8, "  * "

    goto :goto_154

    :cond_152
    const-string v8, "    "

    .line 4633
    :goto_154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4632
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_161
    .catchall {:try_start_22 .. :try_end_161} :catchall_3ff

    .line 4635
    :try_start_161
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4636
    invoke-virtual {v9, v6}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4637
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "       destination: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4638
    invoke-virtual {v9, v6}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4637
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4639
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "       intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4640
    invoke-virtual {v9, v6}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4639
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4641
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1a8
    if-ge v8, v7, :cond_1fa

    aget-object v9, v6, v8

    .line 4642
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "       "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4643
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " state bytes"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4642
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_1d5} :catch_1d8
    .catchall {:try_start_161 .. :try_end_1d5} :catchall_3ff

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a8

    :catch_1d8
    move-exception v6

    :try_start_1d9
    const-string v7, "BackupManagerService"

    .line 4646
    iget v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v9, "Error in transport"

    invoke-static {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4647
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1fa
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_13a

    .line 4652
    :cond_1fe
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V

    .line 4654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Pending init: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4655
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_226
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_247

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4656
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_226

    .line 4659
    :cond_247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Ancestral: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4660
    iget-wide v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Current:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4662
    iget-wide v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4664
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Participants:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_29b
    if-ge v3, v2, :cond_2db

    .line 4667
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const-string v5, "  uid: "

    .line 4668
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4669
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4670
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 4671
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2b7

    :cond_2d8
    add-int/lit8 v3, v3, 0x1

    goto :goto_29b

    .line 4676
    :cond_2db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Ancestral packages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4677
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v3, :cond_2f0

    const-string/jumbo v3, "none"

    goto :goto_2f8

    :cond_2f0
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2f8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4676
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4678
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-eqz v2, :cond_32b

    .line 4679
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30a

    .line 4684
    :cond_32b
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v2}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v2

    .line 4685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Ever backed up: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4686
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_350
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_371

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_350

    .line 4690
    :cond_371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Pending key/value backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4691
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_398
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 4692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_398

    .line 4695
    :cond_3b9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Full backup queue:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4696
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3dc
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3fd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    const-string v2, "    "

    .line 4697
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4698
    iget-wide v2, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v2, " : "

    .line 4699
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4700
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3dc

    .line 4702
    :cond_3fd
    monitor-exit v1

    return-void

    :catchall_3ff
    move-exception p0

    monitor-exit v1
    :try_end_401
    .catchall {:try_start_1d9 .. :try_end_401} :catchall_3ff

    throw p0
.end method

.method public endFullBackup()V
    .registers 3

    .line 2528
    new-instance v0, Lcom/android/server/backup/UserBackupManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/backup/UserBackupManagerService$3;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 2548
    new-instance p0, Ljava/lang/Thread;

    const-string v1, "end-full-backup"

    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public enqueueFullBackup(Ljava/lang/String;J)V
    .registers 8

    .line 2233
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    .line 2234
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2238
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-lez p1, :cond_34

    .line 2246
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_19
    if-ltz p1, :cond_35

    .line 2247
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 2248
    iget-wide v2, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long v2, v2, p2

    if-gtz v2, :cond_31

    .line 2249
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_35

    :cond_31
    add-int/lit8 p1, p1, -0x1

    goto :goto_19

    :cond_34
    const/4 p1, -0x1

    :cond_35
    :goto_35
    if-gez p1, :cond_3d

    .line 2256
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2258
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_42

    .line 2259
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    return-void

    :catchall_42
    move-exception p0

    .line 2258
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3531
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "excludeKeysFromRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupPreferences;->addExcludedKeys(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    .line 4536
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "filterAppsEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_d
    const-string v2, "BMS.filterAppsEligibleForBackup"

    .line 4542
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4543
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v3

    .line 4544
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 4545
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v5, :cond_2e

    aget-object v7, p1, v6

    .line 4546
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v8, v3, v7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 4548
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_2e
    if-eqz v3, :cond_35

    .line 4552
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 4554
    :cond_35
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_45

    .line 4556
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_45
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4557
    throw p0
.end method

.method public filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 4018
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->shouldSkipUserFacingData()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 4022
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4023
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 4024
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->shouldSkipPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 4025
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 4027
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will skip backup/restore for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_45
    return-object v0
.end method

.method public final fullBackupAllowable(Ljava/lang/String;)Z
    .registers 9

    .line 2263
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BackupManagerService"

    if-nez v0, :cond_17

    .line 2264
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string p1, "Transport not registered; full data backup not performed"

    .line 2266
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2264
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2274
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2275
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2276
    new-instance p1, Ljava/io/File;

    const-string v3, "@pm@"

    invoke-direct {p1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2277
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_41

    .line 2279
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v0, "Full backup requested but dataset not yet initialized"

    .line 2281
    invoke-static {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2279
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_40} :catch_43

    return v1

    :cond_41
    const/4 p0, 0x1

    return p0

    :catch_43
    move-exception p1

    .line 2288
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get transport name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2291
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2290
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2288
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public fullBackupCustomized(Ljava/lang/String;ZZZZZZZ[Ljava/lang/String;ZLjava/lang/String;ZLandroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 3011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullBackupCustomized filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fullBackupCustomized file= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fullBackupCustomized file canRead= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fullBackupCustomized file canWrite= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x30000000

    .line 3018
    invoke-static {v2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move/from16 v2, p10

    .line 3019
    iput-boolean v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPassword:Z

    const/16 v2, 0x200

    .line 3021
    iput v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    .line 3023
    sget-object v2, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_78

    move-object/from16 v3, p13

    .line 3024
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverObserver(Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V

    :cond_78
    move-object/from16 v2, p11

    .line 3026
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    const/4 v2, 0x1

    .line 3028
    invoke-static {v2}, Lcom/android/server/backup/UserBackupManagerService;->setSplitBackupFlagVal(Z)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p12

    move-object/from16 v10, p9

    .line 3029
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3030
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSplitBackupFlagVal(Z)V

    return-void
.end method

.method public fullRestoreCustomized(Ljava/lang/String;ZLjava/lang/String;Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fullRestoreCustomized filePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x30000000

    .line 3062
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 3063
    iput-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPassword:Z

    .line 3064
    sget-object p2, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz p2, :cond_2a

    .line 3065
    invoke-virtual {p2, p4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverObserver(Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V

    :cond_2a
    const-string p2, "/"

    .line 3067
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 3068
    array-length p4, p2

    const/4 v2, 0x1

    sub-int/2addr p4, v2

    aget-object p4, p2, p4

    array-length v3, p2

    sub-int/2addr v3, v2

    aget-object p2, p2, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x3

    const/4 v3, 0x0

    invoke-virtual {p4, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 3069
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package Name = "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Path = "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    sget-object p1, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz p1, :cond_67

    .line 3072
    invoke-virtual {p1, p2}, Lcom/android/server/backup/BackupManagerYuva;->sendStartRestoreCallback(Ljava/lang/String;)V

    .line 3074
    :cond_67
    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    .line 3075
    invoke-static {v2}, Lcom/android/server/backup/UserBackupManagerService;->setSplitRestoreFlagVal(Z)V

    .line 3076
    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 3077
    invoke-static {v3}, Lcom/android/server/backup/UserBackupManagerService;->setSplitRestoreFlagVal(Z)V

    return-void
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 3363
    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "fullTransportBackup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3365
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-nez v1, :cond_a2

    .line 3371
    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v1

    .line 3372
    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v1

    const-string v14, "BackupManagerService"

    if-nez v1, :cond_2d

    .line 3373
    iget v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Full backup not currently possible -- key/value backup not yet run?"

    .line 3375
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3373
    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 3380
    :cond_2d
    iget v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "fullTransportBackup()"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 3385
    :try_start_3c
    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v12, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3386
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "BMS.fullTransportBackup()"

    const/4 v7, 0x0

    .line 3398
    invoke-virtual {v0, v7}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v17

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v18, v7

    move-object v7, v12

    move-object/from16 v19, v12

    move-object/from16 v12, v17

    .line 3386
    invoke-static/range {v1 .. v12}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v1

    .line 3400
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 3401
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "full-transport-master"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_6f
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_6f} :catch_94
    .catchall {:try_start_3c .. :try_end_6f} :catchall_92

    .line 3404
    :catch_6f
    :try_start_6f
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_72} :catch_6f
    .catch Ljava/lang/IllegalStateException; {:try_start_6f .. :try_end_72} :catch_94
    .catchall {:try_start_6f .. :try_end_72} :catchall_92

    .line 3412
    :try_start_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3413
    array-length v3, v13

    move/from16 v7, v18

    :goto_79
    if-ge v7, v3, :cond_83

    aget-object v4, v13, v7

    .line 3414
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_80
    .catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_80} :catch_94
    .catchall {:try_start_72 .. :try_end_80} :catchall_92

    add-int/lit8 v7, v7, 0x1

    goto :goto_79

    .line 3420
    :cond_83
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3425
    :goto_86
    iget v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "Done with full transport backup."

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_92
    move-exception v0

    goto :goto_9e

    :catch_94
    move-exception v0

    :try_start_95
    const-string v1, "Failed to start backup: "

    .line 3417
    invoke-static {v14, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_92

    .line 3420
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_9e
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3421
    throw v0

    .line 3368
    :cond_a2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore supported only for the device owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateRandomIntegerToken()I
    .registers 2

    .line 987
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-gez v0, :cond_9

    neg-int v0, v0

    :cond_9
    and-int/lit16 v0, v0, -0x100

    .line 990
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;
    .registers 1

    .line 915
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object p0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .registers 1

    .line 806
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object p0
.end method

.method public getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation

    .line 919
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 1

    .line 790
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object p0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .registers 1

    .line 810
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public getAncestralSerialNumber()J
    .registers 4

    .line 2720
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2721
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumberFile()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_1e

    .line 2722
    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 2723
    :try_start_10
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_13} :catch_2c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1e

    return-wide v1

    :catchall_14
    move-exception v1

    .line 2720
    :try_start_15
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v0

    :try_start_1a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw v1
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1e} :catch_2c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    .line 2726
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "Unable to read work profile serial number file:"

    .line 2728
    invoke-static {p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "BackupManagerService"

    .line 2726
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_2c
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getAncestralSerialNumberFile()Ljava/io/File;
    .registers 4

    .line 2736
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    if-nez v0, :cond_16

    .line 2737
    new-instance v0, Ljava/io/File;

    .line 2738
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "serial_id"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 2741
    :cond_16
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    return-object p0
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 9

    .line 1902
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreToken"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 1906
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1907
    :try_start_e
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->hasBeenProcessed(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 1914
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1916
    :cond_20
    monitor-exit v2

    return-wide v0

    :catchall_22
    move-exception p0

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw p0
.end method

.method public getBackupHandler()Landroid/os/Handler;
    .registers 1

    .line 867
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object p0
.end method

.method public getBackupManagerBinder()Landroid/app/backup/IBackupManager;
    .registers 1

    .line 4739
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-object p0
.end method

.method public getBaseStateDir()Ljava/io/File;
    .registers 1

    .line 923
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object p0
.end method

.method public getClearDataLock()Ljava/lang/Object;
    .registers 1

    .line 895
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 4092
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getConfigurationIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4095
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p1

    .line 4104
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get configuration intent from transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4109
    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4106
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    .line 4104
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getConstants()Lcom/android/server/backup/BackupManagerConstants;
    .registers 1

    .line 786
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 794
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentToken()J
    .registers 3

    .line 961
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    return-wide v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 4

    .line 3794
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3796
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTransportComponent()Landroid/content/ComponentName;
    .registers 4

    .line 3812
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransportComponent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3816
    :try_start_d
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_13
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_d .. :try_end_13} :catch_1c
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 3820
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3821
    throw p0

    :catch_1c
    const/4 p0, 0x0

    .line 3820
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public getDataDir()Ljava/io/File;
    .registers 1

    .line 927
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    return-object p0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 4148
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4152
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p1

    .line 4161
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get management intent from transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4165
    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4163
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    .line 4161
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5

    .line 4175
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementLabel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4179
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p1

    .line 4188
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get management label from transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4192
    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4190
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    .line 4188
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 4124
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDestinationString"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4128
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p1

    .line 4137
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get destination string from transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4141
    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4139
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    .line 4137
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 3

    .line 4562
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v0, p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRules(Landroid/content/pm/PackageManager;II)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object p0

    return-object p0
.end method

.method public final getEligibilityRulesForRestoreAtInstall(J)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 7

    .line 1888
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralOperationType:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_14

    const/4 p1, 0x1

    .line 1889
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object p0

    return-object p0

    .line 1893
    :cond_14
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-object p0
.end method

.method public getExcludedRestoreKeys(Ljava/lang/String;)Ljava/util/Set;
    .registers 2
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

    .line 1262
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupPreferences;->getExcludedRestoreKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getJournal()Lcom/android/server/backup/DataChangedJournal;
    .registers 1

    .line 937
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-object p0
.end method

.method public final getMessageIdForOperationType(I)I
    .registers 4

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    .line 2120
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageIdForOperationType called on invalid operation type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2122
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    .line 2120
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_23
    const/16 p0, 0x12

    return p0

    :cond_26
    const/16 p0, 0x11

    return p0
.end method

.method public getOperationStorage()Lcom/android/server/backup/OperationStorage;
    .registers 1

    .line 823
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    return-object p0
.end method

.method public getOperationTypeFromTransport(Lcom/android/server/backup/transport/TransportConnection;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4708
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->shouldUseNewBackupEligibilityRules()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 4713
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_c
    const-string p0, "BMS.getOperationTypeFromTransport"

    .line 4715
    invoke-virtual {p1, p0}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object p0

    .line 4717
    invoke-virtual {p0}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_23

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    .line 4723
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_23
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4724
    throw p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 1

    .line 798
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public getPackageManagerBinder()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 802
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public getPackageTrackingReceiver()Landroid/content/BroadcastReceiver;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 932
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public getPendingBackups()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/keyvalue/BackupRequest;",
            ">;"
        }
    .end annotation

    .line 875
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    return-object p0
.end method

.method public getPendingInits()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 969
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getPendingRestores()Ljava/util/Queue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation

    .line 911
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    return-object p0
.end method

.method public getQueueLock()Ljava/lang/Object;
    .registers 1

    .line 879
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getRequestBackupParams([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ILcom/android/server/backup/utils/BackupEligibilityRules;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/BackupParams;
    .registers 22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object/from16 v10, p5

    .line 2002
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2003
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2004
    array-length v2, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_12
    if-ge v7, v2, :cond_54

    aget-object v8, v1, v7

    const-string v9, "@pm@"

    .line 2005
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 2006
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 2010
    :cond_22
    :try_start_22
    iget-object v9, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v11, 0x8000000

    iget v12, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v9, v8, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 2012
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v11}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v11

    if-nez v11, :cond_3a

    const/16 v9, -0x7d1

    .line 2013
    invoke-static {p2, v8, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_51

    .line 2017
    :cond_3a
    invoke-virtual {v10, v9}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 2018
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 2020
    :cond_46
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_4b} :catch_4c

    goto :goto_51

    :catch_4c
    const/16 v9, -0x7d2

    .line 2023
    invoke-static {p2, v8, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    :goto_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_54
    const/16 v0, 0xb0c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 2028
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v2, v7

    const/4 v1, 0x2

    .line 2029
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v1

    .line 2028
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7f

    move v9, v7

    goto :goto_80

    :cond_7f
    move v9, v6

    .line 2046
    :goto_80
    new-instance v11, Lcom/android/server/backup/params/BackupParams;

    const/4 v8, 0x1

    move-object v0, v11

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p8

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/backup/params/BackupParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v11
.end method

.method public getRng()Ljava/security/SecureRandom;
    .registers 1

    .line 945
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public getRunInitIntent()Landroid/app/PendingIntent;
    .registers 1

    .line 871
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getSepWakeLock()Z
    .registers 1

    .line 852
    iget-boolean p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    return p0
.end method

.method public getThreadForAsyncOperation(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4281
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTransportManager()Lcom/android/server/backup/TransportManager;
    .registers 1

    .line 819
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 782
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    return p0
.end method

.method public getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    .registers 1

    .line 843
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    return-object p0
.end method

.method public handleCancel(IZ)V
    .registers 5

    .line 2142
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->cancelOperation(IZLjava/util/function/IntConsumer;)V

    return-void
.end method

.method public hasBackupPassword()Z
    .registers 1

    .line 1279
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result p0

    return p0
.end method

.method public final initPackageTracking()V
    .registers 15

    .line 1026
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v2, "ancestral"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    .line 1027
    :try_start_b
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1c} :catch_68
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_59

    .line 1029
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4b

    .line 1031
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 1032
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1034
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-ltz v1, :cond_4b

    .line 1036
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_4b

    .line 1038
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 1039
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_1c .. :try_end_48} :catchall_4f

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1043
    :cond_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_4e} :catch_68
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_59

    goto :goto_75

    :catchall_4f
    move-exception v1

    .line 1027
    :try_start_50
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v0

    :try_start_55
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_58
    throw v1
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_59} :catch_68
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_59} :catch_59

    :catch_59
    move-exception v0

    const-string v1, "BackupManagerService"

    .line 1047
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Unable to read token file"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    :catch_68
    const-string v0, "BackupManagerService"

    .line 1045
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "No ancestral data"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :goto_75
    new-instance v0, Lcom/android/server/backup/ProcessedPackagesJournal;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/android/server/backup/ProcessedPackagesJournal;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 1051
    invoke-virtual {v0}, Lcom/android/server/backup/ProcessedPackagesJournal;->init()V

    .line 1053
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1055
    :try_start_84
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 1056
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_d3

    .line 1059
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 1060
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 1061
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 1062
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 1063
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1064
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 1066
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1064
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1072
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1073
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1074
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1075
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 1077
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1075
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_d3
    move-exception p0

    .line 1056
    :try_start_d4
    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw p0
.end method

.method public initializeBackupEnableState()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 765
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->readEnabledState()Z

    move-result v0

    const/4 v1, 0x0

    .line 767
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(ZZ)V

    return-void
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 8

    .line 2674
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "initializeTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initializeTransport(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2679
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2678
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    .line 2676
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2683
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2684
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 2685
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/internal/PerformInitializeTask;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_47

    .line 2688
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_47
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2689
    throw p0
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 7

    .line 4514
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isAppEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    const-string v2, "BMS.isAppEligibleForBackup"

    .line 4520
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4521
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v3

    .line 4522
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 4523
    invoke-virtual {v4, v3, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z

    move-result p1

    if-eqz v3, :cond_23

    .line 4526
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_27

    .line 4530
    :cond_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4531
    throw p0
.end method

.method public isBackupEnabled()Z
    .registers 4

    .line 3787
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3789
    iget-boolean p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return p0
.end method

.method public isBackupOperationInProgress()Z
    .registers 1

    .line 2151
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-virtual {p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->isBackupOperationInProgress()Z

    move-result p0

    return p0
.end method

.method public isBackupRunning()Z
    .registers 1

    .line 883
    iget-boolean p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 827
    iget-boolean p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return p0
.end method

.method public final isPrivilegeBackupApp(I)Z
    .registers 10

    const-string v0, "BackupManagerService"

    .line 3082
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_9
    const-string v3, "android.uid.system:1000"

    .line 3086
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x3e8

    .line 3087
    invoke-virtual {v3, v5, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-nez v3, :cond_1e

    :goto_1c
    move v2, v4

    goto :goto_53

    :cond_1e
    const-string v3, "android.uid.samsungcloud:5009"

    .line 3090
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x1391

    .line 3091
    invoke-virtual {v3, v5, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p1

    if-nez p1, :cond_31

    goto :goto_1c

    .line 3095
    :cond_31
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPrivilegePkgName:[Ljava/lang/String;

    array-length v3, p1

    move v5, v2

    :goto_35
    if-ge v5, v3, :cond_53

    aget-object v6, p1, v5

    .line 3096
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android"

    .line 3097
    invoke-virtual {v6, v7, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_47} :catch_4d

    if-nez v6, :cond_4a

    goto :goto_1c

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :catch_4d
    const-string/jumbo p0, "isPrivilegeBackupApp() error"

    .line 3109
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    :cond_53
    :goto_53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isPrivilegeBackupApp() pkg name is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isRestoreInProgress()Z
    .registers 1

    .line 903
    iget-boolean p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    return p0
.end method

.method public isSetupComplete()Z
    .registers 1

    .line 835
    iget-boolean p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    return p0
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .registers 4

    .line 3834
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransportComponents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3836
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponents()[Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 4

    .line 3826
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransports"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3829
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logBackupComplete(Ljava/lang/String;)V
    .registers 8

    const-string v0, "@pm@"

    .line 1679
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1681
    :cond_9
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getBackupFinishedNotificationReceivers()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_3c

    aget-object v3, v0, v2

    .line 1682
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.BACKUP_FINISHED"

    .line 1683
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1684
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10000020

    .line 1685
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "packageName"

    .line 1687
    invoke-virtual {v4, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1691
    :cond_3c
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public makeMetadataAgent()Landroid/app/backup/BackupAgent;
    .registers 2

    .line 999
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgentWithEligibilityRules(Lcom/android/server/backup/utils/BackupEligibilityRules;)Landroid/app/backup/BackupAgent;

    move-result-object p0

    return-object p0
.end method

.method public makeMetadataAgent(Ljava/util/List;)Lcom/android/server/backup/PackageManagerBackupAgent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Lcom/android/server/backup/PackageManagerBackupAgent;"
        }
    .end annotation

    .line 1015
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 1017
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 1018
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public makeMetadataAgentWithEligibilityRules(Lcom/android/server/backup/utils/BackupEligibilityRules;)Landroid/app/backup/BackupAgent;
    .registers 5

    .line 1004
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 1006
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 1007
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public final onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1362
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    sub-long/2addr v0, v2

    const-string v2, "BackupManagerService"

    .line 1363
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " registered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms after first request (delay = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0xbb8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1365
    invoke-static {v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1363
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1379
    new-instance p2, Ljava/io/File;

    const-string v1, "_need_init_"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1380
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_70

    .line 1381
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1382
    :try_start_56
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-wide/32 v0, 0xea60

    .line 1386
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    .line 1387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 1386
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1388
    monitor-exit p2

    goto :goto_70

    :catchall_6d
    move-exception p0

    monitor-exit p2
    :try_end_6f
    .catchall {:try_start_56 .. :try_end_6f} :catchall_6d

    throw p0

    :cond_70
    :goto_70
    return-void
.end method

.method public opComplete(IJ)V
    .registers 6

    .line 4505
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/backup/UserBackupManagerService;J)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->onOperationComplete(IJLjava/util/function/Consumer;)V

    return-void
.end method

.method public final parseLeftoverJournals()V
    .registers 9

    .line 1233
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->listJournals(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1234
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1235
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "BackupManagerService"

    if-nez v1, :cond_3a

    .line 1236
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " stale backup journal(s), scheduling."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1236
    invoke-static {v1, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_3a
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1240
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/DataChangedJournal;

    .line 1242
    :try_start_4f
    new-instance v4, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v1}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/Set;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/DataChangedJournal;->forEach(Ljava/util/function/Consumer;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_57} :catch_58

    goto :goto_43

    :catch_58
    move-exception v4

    .line 1248
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 1251
    :cond_74
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stale backup journals: Scheduled "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " package(s) total"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    return-void
.end method

.method public prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    .registers 10

    .line 2079
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 2080
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide p2

    const-wide/16 v2, 0x6

    mul-long/2addr p2, v2

    :cond_e
    if-eqz p5, :cond_3c

    if-eq p5, v1, :cond_3c

    .line 2084
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "prepareOperationTimeout() doesn\'t support operation "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2089
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of type "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2086
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    .line 2084
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2107
    :cond_3c
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p4, p5}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->registerOperation(IILcom/android/server/backup/BackupRestoreTask;I)V

    .line 2108
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p0, p5}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result p5

    invoke-virtual {v0, p5, p1, v1, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2110
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public randomBytes(I)[B
    .registers 2

    .line 1267
    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    .line 1268
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method public readEnabledState()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3763
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->readBackupEnableState(I)Z

    move-result p0

    return p0
.end method

.method public final readFullBackupSchedule()Ljava/util/ArrayList;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Package "

    const-string v2, "BackupManagerService"

    .line 1086
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 1087
    invoke-static {v3, v4, v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;

    move-result-object v3

    .line 1090
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_16a

    .line 1091
    :try_start_1b
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v10, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_159

    .line 1092
    :try_start_22
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_14d

    .line 1093
    :try_start_27
    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_13f

    .line 1094
    :try_start_2c
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v12
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_12f

    if-eq v12, v9, :cond_62

    .line 1096
    :try_start_32
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown backup schedule version "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1098
    invoke-static {v0, v12}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_5c

    .line 1159
    :try_start_4c
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_56

    :try_start_4f
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_14d

    :try_start_52
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_159

    return-object v7

    :catchall_56
    move-exception v0

    move-object v5, v0

    move-object/from16 v16, v10

    goto/16 :goto_143

    :catchall_5c
    move-exception v0

    move-object v5, v0

    move-object/from16 v16, v10

    goto/16 :goto_133

    .line 1103
    :cond_62
    :try_start_62
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1104
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1110
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v12}, Ljava/util/HashSet;-><init>(I)V

    move v15, v8

    :goto_71
    if-ge v15, v12, :cond_e5

    .line 1113
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_12f

    move-object/from16 v16, v10

    .line 1114
    :try_start_79
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 1115
    invoke-virtual {v14, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_12d

    .line 1117
    :try_start_80
    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v5, v7, v8, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1118
    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_a3

    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1119
    invoke-virtual {v6, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 1121
    new-instance v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-direct {v5, v7, v9, v10}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_de

    .line 1124
    :cond_a3
    iget v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " no longer eligible for full backup"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_c0} :catch_c1
    .catchall {:try_start_80 .. :try_end_c0} :catchall_12d

    goto :goto_de

    .line 1130
    :catch_c1
    :try_start_c1
    iget v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not installed; dropping from full backup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_de
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v16

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto :goto_71

    :cond_e5
    move-object/from16 v16, v10

    .line 1138
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_eb
    :goto_eb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 1139
    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_eb

    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1140
    invoke-virtual {v6, v7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 1142
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_eb

    .line 1152
    new-instance v6, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v9, 0x0

    invoke-direct {v6, v5, v9, v10}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_eb

    .line 1158
    :cond_11f
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_122
    .catchall {:try_start_c1 .. :try_end_122} :catchall_12d

    .line 1159
    :try_start_122
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_125
    .catchall {:try_start_122 .. :try_end_125} :catchall_13d

    :try_start_125
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_14d

    :try_start_128
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12b} :catch_159

    move-object v7, v13

    goto :goto_16b

    :catchall_12d
    move-exception v0

    goto :goto_132

    :catchall_12f
    move-exception v0

    move-object/from16 v16, v10

    :goto_132
    move-object v5, v0

    .line 1091
    :goto_133
    :try_start_133
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_136
    .catchall {:try_start_133 .. :try_end_136} :catchall_137

    goto :goto_13c

    :catchall_137
    move-exception v0

    move-object v6, v0

    :try_start_139
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13c
    throw v5
    :try_end_13d
    .catchall {:try_start_139 .. :try_end_13d} :catchall_13d

    :catchall_13d
    move-exception v0

    goto :goto_142

    :catchall_13f
    move-exception v0

    move-object/from16 v16, v10

    :goto_142
    move-object v5, v0

    :goto_143
    :try_start_143
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_147

    goto :goto_14c

    :catchall_147
    move-exception v0

    move-object v6, v0

    :try_start_149
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14c
    throw v5
    :try_end_14d
    .catchall {:try_start_149 .. :try_end_14d} :catchall_14d

    :catchall_14d
    move-exception v0

    move-object v5, v0

    :try_start_14f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_152
    .catchall {:try_start_14f .. :try_end_152} :catchall_153

    goto :goto_158

    :catchall_153
    move-exception v0

    move-object v4, v0

    :try_start_155
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_158
    throw v5
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_159} :catch_159

    :catch_159
    move-exception v0

    .line 1160
    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Unable to read backup schedule"

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_16a
    const/4 v7, 0x0

    :goto_16b
    if-nez v7, :cond_1aa

    .line 1170
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1171
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1172
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1173
    invoke-virtual {v3, v4}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 1175
    new-instance v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17a

    :cond_1a5
    const-wide/16 v4, 0x0

    goto :goto_17a

    :cond_1a8
    const/4 v9, 0x1

    goto :goto_1ab

    :cond_1aa
    move v9, v8

    :goto_1ab
    if-eqz v9, :cond_1b0

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    :cond_1b0
    return-object v7
.end method

.method public recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1293
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1305
    :try_start_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1306
    new-instance p3, Ljava/io/File;

    const-string v2, "_need_init_"

    invoke-direct {p3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_21

    .line 1312
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2b

    .line 1314
    :try_start_18
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_29
    .catchall {:try_start_18 .. :try_end_20} :catchall_2b

    goto :goto_29

    .line 1320
    :cond_21
    :try_start_21
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 1321
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1323
    :catch_29
    :goto_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1627
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1639
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1640
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method public final removePackageParticipantsLocked([Ljava/lang/String;I)V
    .registers 8

    if-nez p1, :cond_11

    .line 1593
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string/jumbo p1, "removePackageParticipants with null list"

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1607
    :cond_11
    array-length v0, p1

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_38

    aget-object v2, p1, v1

    .line 1609
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-eqz v3, :cond_35

    .line 1610
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1611
    invoke-virtual {p0, v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 1612
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1619
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_38
    return-void
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;I)I
    .registers 5

    const/4 v0, 0x0

    .line 1929
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/backup/UserBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p0

    return p0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 17

    move-object v9, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1938
    iget-object v0, v9, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string/jumbo v5, "requestBackup"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BackupManagerService"

    const/4 v4, 0x1

    const/16 v5, -0x3e8

    const/4 v6, 0x0

    if-eqz v1, :cond_a0

    .line 1940
    array-length v7, v1

    if-lt v7, v4, :cond_a0

    .line 1949
    iget-boolean v7, v9, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    if-eqz v7, :cond_67

    iget-boolean v7, v9, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v7, :cond_22

    goto :goto_67

    .line 1970
    :cond_22
    :try_start_22
    iget-object v0, v9, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 1972
    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v7

    .line 1971
    invoke-virtual {v0, v7}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1973
    iget-object v0, v9, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v8, "BMS.requestBackup()"

    .line 1974
    invoke-virtual {v0, v8}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v8

    .line 1975
    invoke-virtual {p0, v8}, Lcom/android/server/backup/UserBackupManagerService;->getOperationTypeFromTransport(Lcom/android/server/backup/transport/TransportConnection;)I

    move-result v0
    :try_end_38
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_22 .. :try_end_38} :catch_5e
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_22 .. :try_end_38} :catch_5e
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_38} :catch_5e

    .line 1985
    new-instance v10, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v10, p0, v8}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 1987
    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v5

    .line 1990
    iget-object v0, v9, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v6, v8

    move-object v8, v10

    .line 1991
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/backup/UserBackupManagerService;->getRequestBackupParams([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ILcom/android/server/backup/utils/BackupEligibilityRules;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/BackupParams;

    move-result-object v0

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1993
    iget-object v0, v9, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    return v0

    .line 1978
    :catch_5e
    invoke-static {p2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 v0, 0x32

    .line 1979
    invoke-static {p3, v0, v6, v4, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    return v5

    .line 1950
    :cond_67
    :goto_67
    iget v1, v9, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup requested but enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v9, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " setupComplete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v9, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1952
    invoke-static {v1, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1950
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x7d1

    .line 1956
    invoke-static {p2, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1958
    iget-boolean v1, v9, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v1, :cond_99

    const/16 v1, 0xd

    goto :goto_9b

    :cond_99
    const/16 v1, 0xe

    :goto_9b
    const/4 v2, 0x3

    .line 1961
    invoke-static {p3, v1, v6, v2, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    return v0

    .line 1941
    :cond_a0
    iget v1, v9, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v7, "No packages named for backup request"

    invoke-static {v1, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    invoke-static {p2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 v0, 0x31

    .line 1943
    invoke-static {p3, v0, v6, v4, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    .line 1946
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No packages are provided for backup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetBackupState(Ljava/io/File;)V
    .registers 9

    .line 1331
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1332
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->reset()V

    const-wide/16 v1, 0x0

    .line 1334
    iput-wide v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 1338
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_2c

    aget-object v4, p1, v3

    .line 1340
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_need_init_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 1341
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1344
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_5e

    .line 1347
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter p1

    .line 1348
    :try_start_30
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_36
    if-ge v2, v0, :cond_59

    .line 1350
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_56

    .line 1352
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1353
    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_46

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1357
    :cond_59
    monitor-exit p1

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_30 .. :try_end_5d} :catchall_5b

    throw p0

    :catchall_5e
    move-exception p0

    .line 1344
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 20

    move-object/from16 v1, p0

    .line 4289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v2, "BackupManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_30

    .line 4290
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4295
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attemping install-time restore"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4292
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4290
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4302
    :cond_30
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v6

    .line 4304
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAtInstall pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4311
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " restoreSet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4313
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4306
    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4304
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    cmp-long v0, v6, v3

    const/4 v12, 0x0

    if-nez v0, :cond_72

    const/4 v0, 0x1

    goto :goto_73

    :cond_72
    move v0, v12

    .line 4320
    :goto_73
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v14, "BMS.restoreAtInstall()"

    .line 4321
    invoke-virtual {v3, v14}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v15

    if-nez v15, :cond_89

    .line 4323
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "No transport client"

    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 4327
    :cond_89
    iget-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    if-nez v3, :cond_aa

    .line 4329
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-restorable state: auto="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4331
    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4329
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_aa
    if-nez v0, :cond_f8

    .line 4343
    :try_start_ac
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 4345
    new-instance v10, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v10, v1, v15}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 4355
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4365
    invoke-virtual {v1, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForRestoreAtInstall(J)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v16

    move-object v3, v15

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object v13, v11

    move-object/from16 v11, v16

    .line 4357
    invoke-static/range {v3 .. v11}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAtInstall(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;ILcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v3

    iput-object v3, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4366
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v3, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_d6} :catch_d7

    goto :goto_f8

    :catch_d7
    move-exception v0

    .line 4369
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to contact transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4372
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4371
    invoke-static {v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4369
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_f9

    :cond_f8
    :goto_f8
    move v13, v0

    :goto_f9
    if-eqz v13, :cond_114

    if-eqz v15, :cond_102

    .line 4381
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, v15, v14}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 4386
    :cond_102
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Finishing install immediately"

    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    :try_start_10d
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move/from16 v1, p2

    invoke-interface {v0, v1, v12}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_114
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_114} :catch_114

    :catch_114
    :cond_114
    return-void
.end method

.method public restoreWidgetData(Ljava/lang/String;[B)V
    .registers 3

    .line 2557
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    return-void
.end method

.method public scheduleNextFullBackupJob(J)V
    .registers 9

    .line 2193
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2194
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_37

    .line 2198
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v1, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 2199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 2200
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-gez v5, :cond_27

    sub-long/2addr v1, v3

    goto :goto_29

    :cond_27
    const-wide/16 v1, 0x0

    .line 2202
    :goto_29
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 2203
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v1, v2, p1, p2, p0}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    goto :goto_44

    :cond_37
    const-string p1, "BackupManagerService"

    .line 2206
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string p2, "Full backup queue empty; not scheduling"

    .line 2208
    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2206
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :goto_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3934
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3937
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3939
    :try_start_e
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3940
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V

    const-string v3, "BackupManagerService"

    .line 3941
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransport(transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): previous transport = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3943
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3941
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_40

    .line 3951
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_40
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3952
    throw p0
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 10

    .line 3961
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransportAsync"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3966
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    .line 3967
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectBackupTransportAsync(transport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3969
    invoke-static {v4, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3967
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_42

    .line 4007
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_42
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4008
    throw p0
.end method

.method public semBackupPackage(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v1, p4

    if-eqz v11, :cond_80

    .line 2913
    array-length v2, v11

    if-lez v2, :cond_80

    if-eqz p1, :cond_80

    const/4 v2, 0x1

    .line 2918
    iput-boolean v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    .line 2920
    iget-object v13, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRestoreLock:Ljava/lang/Object;

    monitor-enter v13

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    move v3, v4

    :goto_1b
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_21

    move v5, v2

    goto :goto_22

    :cond_21
    move v5, v4

    :goto_22
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_28

    move v6, v2

    goto :goto_29

    :cond_28
    move v6, v4

    :goto_29
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_2f

    move v7, v2

    goto :goto_30

    :cond_2f
    move v7, v4

    :goto_30
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_36

    move v8, v2

    goto :goto_37

    :cond_36
    move v8, v4

    :goto_37
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_3d

    move v9, v2

    goto :goto_3e

    :cond_3d
    move v9, v4

    :goto_3e
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_44

    move v10, v2

    goto :goto_45

    :cond_44
    move v10, v4

    :goto_45
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_4b

    move v12, v2

    goto :goto_4c

    :cond_4b
    move v12, v4

    :goto_4c
    and-int/lit16 v14, v1, 0x100

    if-eqz v14, :cond_52

    move v14, v2

    goto :goto_53

    :cond_52
    move v14, v4

    :goto_53
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_59

    move v15, v2

    goto :goto_5a

    :cond_59
    move v15, v4

    :goto_5a
    const/16 v16, 0x0

    if-nez v14, :cond_7b

    move-object/from16 v4, p3

    .line 2932
    :try_start_60
    iput-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    .line 2933
    iput v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    if-eqz v12, :cond_68

    move v4, v2

    goto :goto_69

    :cond_68
    move v4, v5

    :goto_69
    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v15

    move-object/from16 v11, p2

    .line 2937
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Z)V

    .line 2939
    monitor-exit v13

    return-object v16

    .line 2941
    :cond_7b
    monitor-exit v13

    return-object v16

    :catchall_7d
    move-exception v0

    .line 2943
    monitor-exit v13
    :try_end_7f
    .catchall {:try_start_60 .. :try_end_7f} :catchall_7d

    throw v0

    .line 2914
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semBackupPackagePath(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v1, p4

    move-object/from16 v2, p5

    if-eqz v11, :cond_b7

    .line 2967
    array-length v3, v11

    if-lez v3, :cond_b7

    if-eqz p1, :cond_b7

    const/4 v3, 0x1

    .line 2971
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    const-string v4, "CHINA"

    const-string/jumbo v5, "ro.csc.country_code"

    .line 2973
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v2, :cond_46

    if-ne v4, v3, :cond_46

    .line 2976
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 2977
    array-length v4, v2

    move v6, v5

    :goto_28
    if-ge v6, v4, :cond_46

    aget-object v7, v2, v6

    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mSmartSwitchBackupPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 2980
    :cond_46
    iget-object v13, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRestoreLock:Ljava/lang/Object;

    monitor-enter v13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4f

    move v4, v3

    goto :goto_50

    :cond_4f
    move v4, v5

    :goto_50
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_56

    move v2, v3

    goto :goto_57

    :cond_56
    move v2, v5

    :goto_57
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_5d

    move v6, v3

    goto :goto_5e

    :cond_5d
    move v6, v5

    :goto_5e
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_64

    move v7, v3

    goto :goto_65

    :cond_64
    move v7, v5

    :goto_65
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_6b

    move v8, v3

    goto :goto_6c

    :cond_6b
    move v8, v5

    :goto_6c
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_72

    move v9, v3

    goto :goto_73

    :cond_72
    move v9, v5

    :goto_73
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_79

    move v10, v3

    goto :goto_7a

    :cond_79
    move v10, v5

    :goto_7a
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_80

    move v12, v3

    goto :goto_81

    :cond_80
    move v12, v5

    :goto_81
    and-int/lit16 v14, v1, 0x100

    if-eqz v14, :cond_87

    move v14, v3

    goto :goto_88

    :cond_87
    move v14, v5

    :goto_88
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_8e

    move v15, v3

    goto :goto_8f

    :cond_8e
    move v15, v5

    :goto_8f
    const/16 v16, 0x0

    if-nez v14, :cond_b2

    move-object/from16 v5, p3

    .line 2992
    :try_start_95
    iput-object v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    .line 2993
    iput v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    if-eqz v12, :cond_9d

    move v5, v3

    goto :goto_9e

    :cond_9d
    move v5, v2

    :goto_9e
    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v15

    move-object/from16 v11, p2

    .line 2997
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Z)V

    .line 2999
    monitor-exit v13

    return-object v16

    .line 3001
    :cond_b2
    monitor-exit v13

    return-object v16

    :catchall_b4
    move-exception v0

    .line 3003
    monitor-exit v13
    :try_end_b6
    .catchall {:try_start_95 .. :try_end_b6} :catchall_b4

    throw v0

    .line 2968
    :cond_b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semIsBackupEnabled()Z
    .registers 4

    .line 3117
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "semIsBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    iget-boolean p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return p0
.end method

.method public semRestorePackage(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    .line 3049
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    .line 3051
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRestoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3052
    :try_start_8
    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    const/4 p2, 0x0

    .line 3053
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;Z)V

    .line 3054
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw p0

    .line 3046
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fd is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public semSetAutoRestoreEnabled(Z)V
    .registers 8

    .line 3199
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAutoRestoreEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BackupManagerService"

    .line 3202
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto restore => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3206
    :try_start_2a
    monitor-enter p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_47

    .line 3207
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_auto_restore"

    if-eqz p1, :cond_37

    const/4 v4, 0x1

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    .line 3208
    :goto_38
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3207
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3209
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 3210
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_44

    .line 3212
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception p1

    .line 3210
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    .line 3212
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3213
    throw p0
.end method

.method public semSetBackupEnabled(Z)V
    .registers 11

    .line 3126
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_19

    .line 3127
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "BackupManagerService"

    const-string p1, "Backup is not allowed by MDM"

    .line 3128
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3133
    :cond_19
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "setBackupEnabled"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BackupManagerService"

    .line 3135
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup enabled => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3139
    :try_start_43
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 3140
    monitor-enter p0
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_bb

    .line 3141
    :try_start_46
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v4, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(IZ)V

    .line 3142
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 3143
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_b8

    .line 3145
    :try_start_4e
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_bb

    if-eqz p1, :cond_68

    if-nez v0, :cond_68

    .line 3146
    :try_start_55
    iget-boolean v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v5, :cond_68

    .line 3148
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {p1, v0, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    const-wide/16 v0, 0x0

    .line 3149
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_b0

    :cond_68
    if-nez p1, :cond_b0

    .line 3156
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    if-eqz v0, :cond_b0

    .line 3161
    iget-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz p1, :cond_b0

    .line 3164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3166
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v6, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lcom/android/server/backup/TransportManager;->forEachRegisteredTransport(Ljava/util/function/Consumer;)V

    const/4 v5, 0x0

    move v6, v5

    .line 3181
    :goto_8d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a5

    .line 3184
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3185
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3182
    invoke-virtual {p0, v1, v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8d

    .line 3187
    :cond_a5
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v5, v0, v1, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3191
    :cond_b0
    :goto_b0
    monitor-exit v4
    :try_end_b1
    .catchall {:try_start_55 .. :try_end_b1} :catchall_b5

    .line 3193
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_b5
    move-exception p0

    .line 3191
    :try_start_b6
    monitor-exit v4
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw p0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_bb

    :catchall_b8
    move-exception p1

    .line 3143
    :try_start_b9
    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    :try_start_ba
    throw p1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_bb

    :catchall_bb
    move-exception p0

    .line 3193
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3194
    throw p0
.end method

.method public setAncestralOperationType(I)V
    .registers 4

    int-to-long v0, p1

    .line 957
    iput-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralOperationType:J

    return-void
.end method

.method public setAncestralPackages(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 949
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    return-void
.end method

.method public setAncestralSerialNumber(J)V
    .registers 7

    .line 2696
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAncestralSerialNumber"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ancestral work profile id to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2700
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    .line 2698
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    :try_start_26
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2704
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumberFile()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "rwd"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_32} :catch_43

    .line 2705
    :try_start_32
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    .line 2706
    :try_start_35
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_43

    goto :goto_4f

    :catchall_39
    move-exception p1

    .line 2703
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p2

    :try_start_3f
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p1
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_43

    :catch_43
    move-exception p1

    .line 2707
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string p2, "Unable to write to work profile serial mapping file:"

    .line 2709
    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2707
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4f
    return-void
.end method

.method public setAncestralSerialNumberFile(Ljava/io/File;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2746
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    return-void
.end method

.method public setAncestralToken(J)V
    .registers 3

    .line 953
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    return-void
.end method

.method public setAutoRestore(Z)V
    .registers 8

    .line 3768
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAutoRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BackupManagerService"

    .line 3771
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto restore => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3775
    :try_start_2a
    monitor-enter p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_47

    .line 3776
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_auto_restore"

    if-eqz p1, :cond_37

    const/4 v4, 0x1

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    .line 3777
    :goto_38
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3776
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3778
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 3779
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_44

    .line 3781
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception p1

    .line 3779
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    .line 3781
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3782
    throw p0
.end method

.method public setBackupEnabled(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 3676
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(ZZ)V

    return-void
.end method

.method public final setBackupEnabled(ZZ)V
    .registers 7

    .line 3680
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BackupManagerService"

    .line 3683
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup enabled => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3687
    :try_start_2a
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 3688
    monitor-enter p0
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3f

    if-eqz p2, :cond_32

    .line 3690
    :try_start_2f
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->writeEnabledState(Z)V

    .line 3692
    :cond_32
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 3693
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3c

    .line 3695
    :try_start_35
    invoke-virtual {p0, v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->updateStateOnBackupEnabled(ZZ)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3f

    .line 3697
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3c
    move-exception p1

    .line 3693
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p0

    .line 3697
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3698
    throw p0
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1274
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setBackupRunning(Z)V
    .registers 2

    .line 887
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    return-void
.end method

.method public setClearingData(Z)V
    .registers 2

    .line 899
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    return-void
.end method

.method public setCurrentToken(J)V
    .registers 3

    .line 965
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 831
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return-void
.end method

.method public setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    .registers 2

    .line 941
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-void
.end method

.method public setLastBackupPass(J)V
    .registers 3

    .line 891
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    return-void
.end method

.method public setPowerManager(Landroid/os/PowerManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 815
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public setRestoreInProgress(Z)V
    .registers 2

    .line 907
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    return-void
.end method

.method public setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    .registers 2

    .line 979
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-void
.end method

.method public setSepWakeLock(Z)V
    .registers 2

    .line 848
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    return-void
.end method

.method public setSetupComplete(Z)V
    .registers 2

    .line 839
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 863
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->-$$Nest$fgetmPowerManagerWakeLock(Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method public shouldSkipPackage(Ljava/lang/String;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "com.android.wallpaperbackup"

    .line 4042
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldSkipUserFacingData()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4036
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "backup_skip_user_facing_packages"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public shouldUseNewBackupEligibilityRules()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4729
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "settings_use_new_backup_eligibility_rules"

    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .registers 4

    .line 3583
    iget-object p0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p0

    .line 3584
    :try_start_3
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3585
    iget-object p1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 3586
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public final startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V
    .registers 6

    .line 3555
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3557
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final startConfirmationUi(ILjava/lang/String;)Z
    .registers 5

    .line 3538
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.backupconfirm"

    const-string v1, "com.android.backupconfirm.BackupRestoreConfirmation"

    .line 3539
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "conftoken"

    .line 3541
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 3542
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3543
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1f

    const/4 p0, 0x1

    return p0

    :catch_1f
    const/4 p0, 0x0

    return p0
.end method

.method public startSepTimeout(Lcom/android/server/backup/params/AdbParams;)V
    .registers 7

    .line 3566
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3567
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v1

    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeNormal:I

    int-to-long v3, p0

    mul-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 2163
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 2168
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.backupconfirm"

    .line 2169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 2173
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_23} :catch_24

    goto :goto_31

    .line 2183
    :catch_24
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string p1, "Lost app trying to shut down"

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    return-void
.end method

.method public tearDownService()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Landroid/util/KeyValueSettingObserver;->stop()V

    .line 774
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Landroid/util/KeyValueSettingObserver;->stop()V

    .line 775
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 776
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 777
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 778
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p0}, Lcom/android/server/backup/internal/BackupHandler;->stop()V

    return-void
.end method

.method public unbindAgent(Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    .line 1781
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final updateStateForTransport(Ljava/lang/String;)V
    .registers 10

    .line 4047
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "backup_transport"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4052
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v1, "BMS.updateStateForTransport()"

    .line 4053
    invoke-virtual {v0, p1, v1}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-string v4, "Transport "

    const-string v5, "BackupManagerService"

    if-eqz v0, :cond_4d

    .line 4056
    :try_start_1d
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v6

    .line 4058
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->getCurrentRestoreSet()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28

    goto :goto_47

    .line 4062
    :catch_28
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 4063
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not available: current token = 0"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4065
    invoke-static {v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4063
    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    :goto_47
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    goto :goto_6c

    .line 4073
    :cond_4d
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not registered: current token = 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4075
    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4073
    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    :goto_6c
    return-void
.end method

.method public updateStateOnBackupEnabled(ZZ)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3703
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_1a

    if-nez p1, :cond_1a

    .line 3704
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v1, :cond_1a

    .line 3706
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {p1, p2, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    const-wide/16 p1, 0x0

    .line 3707
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_63

    :cond_1a
    if-nez p2, :cond_63

    .line 3714
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    if-eqz p1, :cond_63

    .line 3719
    iget-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz p1, :cond_63

    .line 3722
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3723
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3724
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/server/backup/TransportManager;->forEachRegisteredTransport(Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    move v2, v1

    .line 3743
    :goto_3f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 3746
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3747
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    .line 3744
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 3749
    :cond_58
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3753
    :cond_63
    :goto_63
    monitor-exit v0

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    .line 3889
    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "updateTransportAttributes"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "transportComponent can\'t be null"

    move-object v3, p2

    .line 3892
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "name can\'t be null"

    move-object v4, p3

    .line 3893
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "currentDestinationString can\'t be null"

    move-object/from16 v6, p5

    .line 3894
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p6, :cond_26

    move v5, v1

    goto :goto_27

    :cond_26
    move v5, v2

    :goto_27
    if-nez p7, :cond_2b

    move v7, v1

    goto :goto_2c

    :cond_2b
    move v7, v2

    :goto_2c
    if-ne v5, v7, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    const-string v5, "dataManagementLabel should be null iff dataManagementIntent is null"

    .line 3896
    invoke-static {v1, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3901
    :try_start_35
    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3902
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3903
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v1, v5, v2, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v1
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_45} :catch_6b

    move v2, p1

    if-ne v2, v1, :cond_63

    .line 3911
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3913
    :try_start_4c
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/backup/TransportManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_5e

    .line 3921
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5e
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3922
    throw v0

    .line 3905
    :cond_63
    :try_start_63
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the transport can change its description"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_63 .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception v0

    .line 3908
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Transport package not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 15

    .line 3871
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 3870
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .registers 3

    .line 3572
    iget-object p0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p0

    .line 3573
    :catch_3
    :goto_3
    :try_start_3
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    if-nez v0, :cond_11

    .line 3575
    :try_start_b
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_3
    .catchall {:try_start_b .. :try_end_10} :catchall_13

    goto :goto_3

    .line 3578
    :cond_11
    :try_start_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public waitUntilOperationComplete(I)Z
    .registers 4

    .line 2132
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->waitUntilOperationComplete(ILjava/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method public writeEnabledState(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3758
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(IZ)V

    return-void
.end method

.method public final writeFullBackupScheduleAsync()V
    .registers 3

    .line 1228
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1229
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public writeRestoreTokens()V
    .registers 6

    const-string v0, "BackupManagerService"

    .line 1699
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_6e

    const/4 v2, 0x1

    .line 1701
    :try_start_d
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1704
    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1705
    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1708
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v2, :cond_23

    const/4 v2, -0x1

    .line 1709
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_60

    .line 1711
    :cond_23
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1713
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ancestral packages:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1716
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1715
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1713
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1719
    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_d .. :try_end_5f} :catchall_64

    goto :goto_50

    .line 1723
    :cond_60
    :goto_60
    :try_start_60
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_6e

    goto :goto_7a

    :catchall_64
    move-exception v2

    .line 1699
    :try_start_65
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v1

    :try_start_6a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6d
    throw v2
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6e} :catch_6e

    :catch_6e
    move-exception v1

    .line 1724
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Unable to write token file:"

    invoke-static {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7a
    return-void
.end method

.method public final writeToJournalLocked(Ljava/lang/String;)V
    .registers 6

    .line 2636
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2637
    :cond_c
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/DataChangedJournal;->addPackage(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_37

    :catch_12
    move-exception v0

    .line 2639
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to backup journal"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2641
    invoke-static {v1, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "BackupManagerService"

    .line 2639
    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 2643
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    :goto_37
    return-void
.end method
