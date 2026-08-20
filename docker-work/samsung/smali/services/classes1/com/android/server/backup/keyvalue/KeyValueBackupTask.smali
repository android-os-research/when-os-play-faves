.class public Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
.super Ljava/lang/Object;
.source "KeyValueBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/keyvalue/KeyValueBackupTask$StateTransaction;
    }
.end annotation


# static fields
.field public static final BLANK_STATE_FILE_NAME:Ljava/lang/String; = "blank_state"

.field public static final NEW_STATE_FILE_SUFFIX:Ljava/lang/String; = ".new"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NO_DATA_END_SENTINEL:Ljava/lang/String; = "@end@"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PM_PACKAGE:Ljava/lang/String; = "@pm@"

.field public static final STAGING_FILE_SUFFIX:Ljava/lang/String; = ".data"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SUCCESS_STATE_SUBDIR:Ljava/lang/String; = "backing-up"

.field public static final TAG:Ljava/lang/String; = "KVBT"

.field public static final THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final THREAD_PRIORITY:I = 0xa


# instance fields
.field public mAgent:Landroid/app/IBackupAgent;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mBackupData:Landroid/os/ParcelFileDescriptor;

.field public mBackupDataFile:Ljava/io/File;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBlankStateFile:Ljava/io/File;

.field public final mCancelAcknowledged:Landroid/os/ConditionVariable;

.field public volatile mCancelled:Z

.field public final mCurrentOpToken:I

.field public mCurrentPackage:Landroid/content/pm/PackageInfo;

.field public final mDataDirectory:Ljava/io/File;

.field public mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field public mHasDataToBackup:Z

.field public final mJournal:Lcom/android/server/backup/DataChangedJournal;

.field public mNewState:Landroid/os/ParcelFileDescriptor;

.field public mNewStateFile:Ljava/io/File;

.field public mNonIncremental:Z

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mOriginalQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public volatile mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

.field public final mPendingFullBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mQueueLock:Ljava/lang/Object;

.field public final mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

.field public mSavedState:Landroid/os/ParcelFileDescriptor;

.field public mSavedStateFile:Ljava/io/File;

.field public final mStateDirectory:Ljava/io/File;

.field public final mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final mUserId:I

.field public final mUserInitiated:Z


# direct methods
.method public static synthetic $r8$lambda$O8S-M-7H9iTuQcbOXWaV5UnAITE(Landroid/app/IBackupAgent;JJLandroid/app/backup/IBackupCallback;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->lambda$agentDoQuotaExceeded$1(Landroid/app/IBackupAgent;JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tfg_5iKscHIn35GSN01y-Sf6EqA(Lcom/android/server/backup/keyvalue/KeyValueBackupTask;Landroid/app/IBackupAgent;JILandroid/app/backup/IBackupCallback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->lambda$extractAgentData$0(Landroid/app/IBackupAgent;JILandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/UserBackupManagerService;",
            "Lcom/android/server/backup/OperationStorage;",
            "Lcom/android/server/backup/transport/TransportConnection;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/android/server/backup/utils/BackupEligibilityRules;",
            ")V"
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    .line 297
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 319
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 320
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 321
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 322
    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 323
    iput-object p5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    .line 325
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 326
    iput-object p6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 327
    iput-object p7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 328
    iput-object p8, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 329
    iput-object p9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 330
    iput-boolean p10, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    .line 331
    iput-boolean p11, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 334
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p2

    const-string p3, "Timeout parameters cannot be null"

    .line 333
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 336
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object p3

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 337
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    .line 338
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p3

    iput p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    .line 339
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    .line 340
    new-instance p3, Ljava/io/File;

    const-string p4, "blank_state"

    invoke-direct {p3, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    .line 341
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 342
    iput-object p12, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-void
.end method

.method public static synthetic lambda$agentDoQuotaExceeded$1(Landroid/app/IBackupAgent;JJLandroid/app/backup/IBackupCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    invoke-interface/range {p0 .. p5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method private synthetic lambda$extractAgentData$0(Landroid/app/IBackupAgent;JILandroid/app/backup/IBackupCallback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    move-object v0, p1

    move-wide v4, p2

    move-object v6, p5

    move v7, p4

    invoke-interface/range {v0 .. v7}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    return-void
.end method

.method public static start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/UserBackupManagerService;",
            "Lcom/android/server/backup/OperationStorage;",
            "Lcom/android/server/backup/transport/TransportConnection;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/android/server/backup/utils/BackupEligibilityRules;",
            ")",
            "Lcom/android/server/backup/keyvalue/KeyValueBackupTask;"
        }
    .end annotation

    .line 226
    new-instance v7, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    move-object v1, p0

    move-object/from16 v0, p6

    move-object/from16 v2, p7

    invoke-direct {v7, p0, v0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;)V

    .line 228
    new-instance v13, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    move-object v0, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 242
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "key-value-backup-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onNewThread(Ljava/lang/String;)V

    return-object v13
.end method


# virtual methods
.method public final SHA1Checksum([B)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "SHA-1"

    .line 995
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 996
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_27

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1003
    array-length v0, p0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_22

    aget-byte v2, p0, v1

    .line 1004
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1006
    :cond_22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_27
    move-exception p1

    .line 998
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onDigestError(Ljava/security/NoSuchAlgorithmException;)V

    const-string p0, "00"

    return-object p0
.end method

.method public final agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V
    .registers 13

    if-eqz p1, :cond_29

    .line 1141
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v1, "KVBT.agentDoQuotaExceeded()"

    .line 1142
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    const/4 v1, 0x0

    .line 1143
    invoke-virtual {v0, p2, v1}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v6

    .line 1144
    new-instance p2, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;-><init>(Landroid/app/IBackupAgent;JJ)V

    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1146
    invoke-virtual {p1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide p3

    const-string p1, "doQuotaExceeded()"

    .line 1144
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_29

    :catch_23
    move-exception p1

    .line 1149
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDoQuotaExceededError(Ljava/lang/Exception;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public final agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .registers 3

    .line 985
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_d

    .line 987
    :catch_4
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onFailAgentError(Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public final applyStateTransaction(I)V
    .registers 4

    if-eqz p1, :cond_32

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 1316
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1317
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_39

    .line 1320
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state transaction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1311
    :cond_2a
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    if-eqz p0, :cond_39

    .line 1312
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_39

    .line 1308
    :cond_32
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_39
    :goto_39
    return-void
.end method

.method public final backupPackage(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPackageForBackup(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 699
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;)V

    .line 700
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result p1

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V
    :try_end_17
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_b .. :try_end_17} :catch_18
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_b .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    .line 703
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 704
    throw p1
.end method

.method public final backupPm()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 662
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 663
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 670
    :try_start_10
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractPmAgentData(Landroid/content/pm/PackageInfo;)V
    :try_end_13
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_10 .. :try_end_13} :catch_1f
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_10 .. :try_end_13} :catch_1d

    .line 681
    :try_start_13
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 682
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V

    return-void

    :catch_1d
    move-exception v0

    goto :goto_25

    :catch_1f
    move-exception v0

    .line 672
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0
    :try_end_25
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_13 .. :try_end_25} :catch_1d
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_13 .. :try_end_25} :catch_1d

    .line 684
    :goto_25
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractPmAgentDataError(Ljava/lang/Exception;)V

    .line 685
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 686
    instance-of p0, v0, Lcom/android/server/backup/keyvalue/TaskException;

    if-eqz p0, :cond_34

    .line 687
    check-cast v0, Lcom/android/server/backup/keyvalue/TaskException;

    throw v0

    .line 689
    :cond_34
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 735
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 738
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 741
    invoke-virtual {v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v3

    .line 739
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object p1

    if-eqz p1, :cond_14

    return-object p1

    .line 743
    :cond_14
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentError(Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception p1

    .line 747
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBindAgentError(Ljava/lang/String;Ljava/lang/SecurityException;)V

    .line 748
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/AgentException;->transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0
.end method

.method public final checkAgentResult(Landroid/content/pm/PackageInfo;Lcom/android/server/backup/remote/RemoteResult;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 960
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_48

    .line 966
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_3e

    .line 970
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_34

    .line 974
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->isPresent()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 975
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->get()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2a

    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-nez p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 980
    :goto_26
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void

    .line 977
    :cond_2a
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentResultError(Landroid/content/pm/PackageInfo;)V

    .line 978
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 971
    :cond_34
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentTimedOut(Landroid/content/pm/PackageInfo;)V

    .line 972
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 967
    :cond_3e
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 968
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0

    .line 962
    :cond_48
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 963
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 964
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final checkBackupData(Landroid/content/pm/ApplicationInfo;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    if-eqz p1, :cond_65

    .line 1160
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_9

    goto :goto_65

    :cond_9
    const/high16 p1, 0x10000000

    .line 1165
    invoke-static {p2, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 1166
    :try_start_f
    new-instance p2, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 1167
    :goto_18
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1168
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    const/4 v1, 0x0

    .line 1169
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xff00

    if-ge v1, v2, :cond_2f

    goto :goto_51

    .line 1170
    :cond_2f
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p2, v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentIllegalKey(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 1172
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal backup key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 1173
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 1175
    :cond_51
    :goto_51
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_54
    .catchall {:try_start_f .. :try_end_54} :catchall_59

    goto :goto_18

    .line 1177
    :cond_55
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void

    :catchall_59
    move-exception p0

    if-eqz p1, :cond_64

    .line 1164
    :try_start_5c
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    throw p0

    :cond_65
    :goto_65
    return-void
.end method

.method public final cleanUpAgent(I)V
    .registers 4

    .line 1283
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->applyStateTransaction(I)V

    .line 1284
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    if-eqz p1, :cond_a

    .line 1285
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1287
    :cond_a
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x0

    .line 1288
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 1289
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 1290
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 1291
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v1, "old state"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const-string v1, "backup data"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1293
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v1, "new state"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1294
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 1295
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 1296
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 1299
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3e

    .line 1300
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->unbindAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1302
    :cond_3e
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    return-void
.end method

.method public final cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V
    .registers 2

    const/4 p1, 0x1

    .line 1261
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    return-void
.end method

.method public final cleanUpAgentForTransportStatus(I)V
    .registers 3

    const/16 v0, -0x3ee

    if-eq p1, v0, :cond_11

    if-nez p1, :cond_b

    const/4 p1, 0x0

    .line 1271
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    goto :goto_15

    .line 1278
    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_11
    const/4 p1, 0x2

    .line 1274
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    :goto_15
    return-void
.end method

.method public final clearStatus(Ljava/lang/String;)V
    .registers 3

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 544
    :cond_7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public final clearStatus(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .line 549
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 550
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_22

    .line 551
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to remove status file for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KVBT"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public final createFullBackupTask(Ljava/util/List;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;"
        }
    .end annotation

    move-object v0, p0

    .line 644
    new-instance v14, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v1, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v3, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 649
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v8, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v4, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 653
    invoke-virtual {v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getObserver()Landroid/app/backup/IBackupObserver;

    move-result-object v9

    iget-object v4, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 654
    invoke-virtual {v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-boolean v12, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    iget-object v13, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v14
.end method

.method public final deletePmStateFile()V
    .registers 3

    .line 854
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v1, "@pm@"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public execute()V
    .registers 1

    return-void
.end method

.method public final extractAgentData(Landroid/content/pm/PackageInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    const/4 v0, 0x0

    .line 878
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 879
    invoke-virtual {p0, p1, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1e

    .line 881
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    return-void

    :catchall_1e
    move-exception p1

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 882
    throw p1
.end method

.method public final extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 899
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 900
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractAgentData(Ljava/lang/String;)V

    .line 902
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 903
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 904
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 905
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentFilesReady(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 910
    :try_start_4c
    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    goto :goto_55

    :cond_53
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    :goto_55
    const/high16 v3, 0x18000000

    .line 913
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 914
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    .line 915
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 917
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 918
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 923
    iget v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    if-nez v2, :cond_82

    .line 924
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 925
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRestoreconFailed(Ljava/io/File;)V

    .line 929
    :cond_82
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v3, "KVBT.extractAgentData()"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v2

    .line 931
    invoke-virtual {v2, v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v6

    .line 932
    invoke-virtual {v2}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result v8

    const/4 v1, 0x1

    .line 935
    new-instance v2, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/keyvalue/KeyValueBackupTask;Landroid/app/IBackupAgent;JI)V

    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 945
    invoke-virtual {p2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v3

    const-string p2, "doBackup()"

    .line 936
    invoke-virtual {p0, v2, v3, v4, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;

    move-result-object p2
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_a7} :catch_ab

    .line 955
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkAgentResult(Landroid/content/pm/PackageInfo;Lcom/android/server/backup/remote/RemoteResult;)V

    return-void

    :catch_ab
    move-exception p1

    .line 948
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCallAgentDoBackupError(Ljava/lang/String;ZLjava/lang/Exception;)V

    if-eqz v1, :cond_b8

    .line 950
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/AgentException;->transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 952
    :cond_b8
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final extractPmAgentData(Landroid/content/pm/PackageInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 859
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 860
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgentWithEligibilityRules(Lcom/android/server/backup/utils/BackupEligibilityRules;)Landroid/app/backup/BackupAgent;

    move-result-object v0

    .line 861
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 862
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    return-void
.end method

.method public final finishTask(I)V
    .registers 8

    .line 755
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 756
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_6

    .line 761
    :cond_18
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/server/backup/DataChangedJournal;->delete()Z

    move-result v0

    if-nez v0, :cond_29

    .line 762
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onJournalDeleteFailed(Lcom/android/server/backup/DataChangedJournal;)V

    :cond_29
    const-string v0, "KVBT.finishTask()"

    const/4 v1, 0x0

    .line 770
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentToken()J

    move-result-wide v2

    .line 771
    iget-boolean v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    if-eqz v4, :cond_5d

    if-nez p1, :cond_5d

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5d

    .line 773
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v2

    .line 775
    invoke-virtual {v2}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v1

    .line 776
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/transport/BackupTransportClient;->getCurrentRestoreSet()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->setCurrentToken(J)V

    .line 777
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_56} :catch_57

    goto :goto_5d

    :catch_57
    move-exception v2

    .line 780
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSetCurrentTokenError(Ljava/lang/Exception;)V

    .line 784
    :cond_5d
    :goto_5d
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 785
    :try_start_60
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    const/16 v3, -0x3e9

    if-ne p1, v3, :cond_7b

    .line 787
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportNotInitialized(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_d4

    .line 789
    :try_start_6f
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->triggerTransportInitializationLocked()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73
    .catchall {:try_start_6f .. :try_end_72} :catchall_d4

    goto :goto_7b

    :catch_73
    move-exception p1

    .line 791
    :try_start_74
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPendingInitializeTransportError(Ljava/lang/Exception;)V

    const/16 p1, -0x3e8

    .line 795
    :cond_7b
    :goto_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_d4

    .line 797
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->unregisterTask()V

    .line 798
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTaskFinished()V

    .line 800
    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-eqz v1, :cond_8d

    .line 803
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 806
    :cond_8d
    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v1, :cond_b3

    if-nez p1, :cond_b3

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v1, :cond_b3

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 809
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b3

    .line 810
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartFullBackup(Ljava/util/List;)V

    .line 815
    new-instance p1, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const-string v0, "full-transport-requested"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 819
    :cond_b3
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v1, :cond_ba

    .line 820
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 822
    :cond_ba
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getBackupFinishedStatus(ZI)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBackupFinished(I)V

    .line 824
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void

    :catchall_d4
    move-exception p0

    .line 795
    :try_start_d5
    monitor-exit v2
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw p0
.end method

.method public final getBackupFinishedStatus(ZI)I
    .registers 3

    if-eqz p1, :cond_5

    const/16 p0, -0x7d3

    return p0

    :cond_5
    const/16 p0, -0x3ed

    if-eq p2, p0, :cond_12

    const/16 p0, -0x3ea

    if-eq p2, p0, :cond_12

    if-eqz p2, :cond_12

    const/16 p0, -0x3e8

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final getPackageForBackup(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    iget v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 712
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_43

    .line 718
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 719
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 723
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 727
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_25

    return-object v0

    .line 728
    :cond_25
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageStopped(Ljava/lang/String;)V

    .line 729
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 724
    :cond_2f
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageEligibleForFullBackup(Ljava/lang/String;)V

    .line 725
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 720
    :cond_39
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageNotEligibleForBackup(Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    :catch_43
    move-exception v0

    .line 715
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentUnknown(Ljava/lang/String;)V

    .line 716
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/AgentException;->permanent(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0
.end method

.method public final getPerformBackupFlags(ZZ)I
    .registers 3

    if-eqz p2, :cond_4

    const/4 p0, 0x4

    goto :goto_5

    :cond_4
    const/4 p0, 0x2

    :goto_5
    or-int/2addr p0, p1

    return p0
.end method

.method public final getSucceedingPackages()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 501
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 507
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    const/4 v0, 0x1

    .line 558
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_f

    .line 559
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v0

    :goto_f
    return-object p0
.end method

.method public final getTopLevelSuccessStateDirectory(Z)Ljava/io/File;
    .registers 4

    .line 564
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v1, "backing-up"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_20

    if-eqz p1, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_20

    const-string p0, "KVBT"

    const-string p1, "Unable to create backing-up state directory"

    .line 566
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_20
    return-object v0
.end method

.method public handleCancel(Z)V
    .registers 3

    const-string v0, "Can\'t partially cancel a key-value backup task"

    .line 1211
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->markCancel()V

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->waitCancel()V

    return-void
.end method

.method public final handleTransportStatus(ILjava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;,
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    if-nez p1, :cond_8

    .line 1115
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupComplete(Ljava/lang/String;J)V

    return-void

    :cond_8
    const/16 v0, -0x3ee

    if-ne p1, v0, :cond_1a

    .line 1119
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, p3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalRequired(Landroid/content/pm/PackageInfo;)V

    .line 1121
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_1a
    const/16 v0, -0x3ea

    if-eq p1, v0, :cond_3b

    const/16 v0, -0x3ed

    if-ne p1, v0, :cond_31

    .line 1129
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupQuotaExceeded(Ljava/lang/String;)V

    .line 1130
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V

    .line 1131
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 1134
    :cond_31
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportFailure(Ljava/lang/String;)V

    .line 1135
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/TaskException;->forStatus(I)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0

    .line 1125
    :cond_3b
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupRejected(Ljava/lang/String;)V

    .line 1126
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0
.end method

.method public final informTransportOfUnchangedApps(Ljava/util/Set;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "KVBT"

    .line 411
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSucceedingPackages()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    const/16 v2, 0x8

    .line 418
    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    if-eqz v3, :cond_11

    const/16 v2, 0x9

    .line 424
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v4, "KVBT.informTransportOfEmptyBackups()"

    .line 425
    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v3

    .line 427
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1d
    if-ge v6, v4, :cond_57

    aget-object v8, v1, v6

    .line 428
    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 429
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping package which was backed up this time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_11 .. :try_end_3b} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3b} :catch_66

    goto :goto_54

    .line 436
    :cond_3c
    :try_start_3c
    iget-object v9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 437
    invoke-virtual {p0, v9}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->isEligibleForNoDataCall(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-nez v10, :cond_4c

    .line 440
    invoke-virtual {p0, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;)V
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_4b} :catch_51
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_3c .. :try_end_4b} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4b} :catch_66

    goto :goto_54

    .line 449
    :cond_4c
    :try_start_4c
    invoke-virtual {p0, v3, v9, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V

    const/4 v7, 0x1

    goto :goto_54

    .line 445
    :catch_51
    invoke-virtual {p0, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;)V

    :goto_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_57
    if-eqz v7, :cond_6c

    .line 457
    new-instance p1, Landroid/content/pm/PackageInfo;

    invoke-direct {p1}, Landroid/content/pm/PackageInfo;-><init>()V

    const-string v1, "@end@"

    .line 458
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 459
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V
    :try_end_65
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_4c .. :try_end_65} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_65} :catch_66

    goto :goto_6c

    :catch_66
    move-exception p0

    const-string p1, "Could not inform transport of all unchanged apps"

    .line 462
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6c
    :goto_6c
    return-void
.end method

.method public final isEligibleForNoDataCall(Landroid/content/pm/PackageInfo;)Z
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 469
    invoke-virtual {v0, p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public markCancel()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1219
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCancel()V

    const/4 v0, 0x1

    .line 1220
    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 1221
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    if-eqz p0, :cond_f

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/backup/remote/RemoteCall;->cancel()V

    :cond_f
    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    return-void
.end method

.method public final registerTask()V
    .registers 5

    .line 346
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/android/server/backup/OperationStorage;->registerOperation(IILcom/android/server/backup/BackupRestoreTask;I)V

    return-void
.end method

.method public final remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/remote/RemoteCallable<",
            "Landroid/app/backup/IBackupCallback;",
            ">;J",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/backup/remote/RemoteResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1337
    new-instance v0, Lcom/android/server/backup/remote/RemoteCall;

    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1338
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    invoke-virtual {p1}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;

    move-result-object p1

    .line 1339
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p2, p1, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRemoteCallReturned(Lcom/android/server/backup/remote/RemoteResult;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1340
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    return-object p1
.end method

.method public final revertTask()V
    .registers 6

    .line 1234
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRevertTask()V

    .line 1237
    :try_start_5
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v1, "KVBT.revertTask()"

    .line 1238
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1239
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->requestBackupTime()J

    move-result-wide v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    .line 1241
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportRequestBackupTimeError(Ljava/lang/Exception;)V

    const-wide/16 v0, 0x0

    .line 1245
    :goto_1a
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1246
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v4

    .line 1245
    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1248
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1249
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_35

    :cond_47
    return-void
.end method

.method public run()V
    .registers 5

    const/16 v0, 0xa

    .line 355
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 359
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 362
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->startTask()V

    .line 363
    :cond_10
    :goto_10
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v2, :cond_4b

    .line 364
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_24
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_d .. :try_end_24} :catch_4f

    :try_start_24
    const-string v3, "@pm@"

    .line 366
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 367
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPm()V

    goto :goto_33

    .line 369
    :cond_30
    invoke-virtual {p0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPackage(Ljava/lang/String;)V

    :goto_33
    const/4 v3, 0x1

    .line 371
    invoke-virtual {p0, v2, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->setSuccessState(Ljava/lang/String;Z)V

    .line 372
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_24 .. :try_end_3a} :catch_3b
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_24 .. :try_end_3a} :catch_4f

    goto :goto_10

    :catch_3b
    move-exception v3

    .line 374
    :try_start_3c
    invoke-virtual {p0, v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->setSuccessState(Ljava/lang/String;Z)V

    .line 375
    invoke-virtual {v3}, Lcom/android/server/backup/keyvalue/AgentException;->isTransitory()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 377
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_10

    .line 382
    :cond_4b
    invoke-virtual {p0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->informTransportOfUnchangedApps(Ljava/util/Set;)V
    :try_end_4e
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_3c .. :try_end_4e} :catch_4f

    goto :goto_64

    :catch_4f
    move-exception v0

    .line 384
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->isStateCompromised()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 385
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 387
    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->revertTask()V

    .line 388
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->getStatus()I

    move-result v0

    .line 390
    :goto_64
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->finishTask(I)V

    return-void
.end method

.method public final sendDataToTransport()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1062
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkBackupData(Landroid/content/pm/ApplicationInfo;Ljava/io/File;)V

    .line 1064
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1065
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1067
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    .line 1068
    :goto_30
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->transportPerformBackup(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)I

    move-result v1

    .line 1069
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->handleTransportStatus(ILjava/lang/String;J)V

    return v1
.end method

.method public final sendDataToTransport(Landroid/content/pm/PackageInfo;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 576
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport()I

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception v0

    .line 578
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDataError(Ljava/lang/String;Ljava/io/IOException;)V

    .line 579
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "KVBT"

    .line 478
    :try_start_2
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    const/high16 v1, 0x18000000

    invoke-static {p0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_a} :catch_2c

    .line 484
    :try_start_a
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/backup/transport/BackupTransportClient;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result p2

    const/16 p3, -0x3e8

    if-eq p2, p3, :cond_1e

    const/16 p3, -0x3e9

    if-ne p2, p3, :cond_17

    goto :goto_1e

    .line 493
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_27

    .line 495
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_1e
    :goto_1e
    :try_start_1e
    const-string p1, "Aborting informing transport of unchanged apps, transport errored"

    .line 487
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    .line 495
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_27
    move-exception p1

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 496
    throw p1

    :catch_2c
    const-string p0, "Unable to find blank state file, aborting unchanged apps signal."

    .line 480
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setSuccessState(Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "Unable to permanently record success for "

    const-string v1, "KVBT"

    .line 512
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_b

    return-void

    .line 518
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v3, p2, :cond_43

    if-nez p2, :cond_17

    .line 522
    invoke-virtual {p0, p1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;Ljava/io/File;)V

    return-void

    .line 528
    :cond_17
    :try_start_17
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_43

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2f} :catch_30

    goto :goto_43

    :catch_30
    move-exception p0

    .line 532
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    :goto_43
    return-void
.end method

.method public final startTask()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 597
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->createFullBackupTask(Ljava/util/List;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 598
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->registerTask()V

    .line 600
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 601
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyQueueAtStart()V

    return-void

    .line 605
    :cond_29
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const-string v1, "@pm@"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-nez v0, :cond_3a

    goto :goto_3c

    :cond_3a
    move v0, v2

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v0, v3

    :goto_3d
    if-eqz v0, :cond_45

    .line 607
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4a

    .line 609
    :cond_45
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipPm()V

    .line 612
    :goto_4a
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onQueueReady(Ljava/util/List;)V

    .line 613
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 615
    :try_start_58
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v2, "KVBT.startTask()"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EncryptedLocalTransport"

    .line 618
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 620
    iput-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 623
    :cond_6e
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportReady(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_9a

    .line 627
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransport(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 629
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->initializeDevice()I

    move-result v0

    .line 630
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportInitialized(I)V

    if-nez v0, :cond_95

    goto :goto_9a

    .line 632
    :cond_95
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0
    :try_end_9a
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_58 .. :try_end_9a} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_9a} :catch_9b

    :cond_9a
    :goto_9a
    return-void

    :catch_9b
    move-exception v0

    .line 638
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransportError(Ljava/lang/Exception;)V

    .line 639
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0

    :catch_a6
    move-exception p0

    .line 636
    throw p0

    .line 591
    :cond_a8
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipBackup()V

    .line 592
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final transportPerformBackup(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 1076
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1077
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_13

    .line 1079
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyData(Landroid/content/pm/PackageInfo;)V

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 v1, 0x1

    .line 1083
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    const/high16 v1, 0x10000000

    .line 1087
    :try_start_18
    invoke-static {p2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_6a

    .line 1088
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v2, "KVBT.transportPerformBackup()"

    .line 1089
    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v1

    .line 1090
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportPerformBackup(Ljava/lang/String;)V

    .line 1091
    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    invoke-virtual {p0, v2, p3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPerformBackupFlags(ZZ)I

    move-result v2

    .line 1093
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result p1

    if-nez p1, :cond_3a

    .line 1095
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result p1

    goto :goto_47

    :cond_3a
    const/16 v2, -0x3e9

    if-ne p1, v2, :cond_47

    .line 1097
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportNotInitialized(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_1c .. :try_end_47} :catchall_5e

    :cond_47
    :goto_47
    if-eqz p2, :cond_4c

    .line 1099
    :try_start_49
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_6a

    :cond_4c
    if-eqz p3, :cond_5d

    const/16 p2, -0x3ee

    if-eq p1, p2, :cond_53

    goto :goto_5d

    .line 1105
    :cond_53
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalAndNonIncrementalRequired(Ljava/lang/String;)V

    .line 1106
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0

    :cond_5d
    :goto_5d
    return p1

    :catchall_5e
    move-exception p1

    if-eqz p2, :cond_69

    .line 1086
    :try_start_61
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception p2

    :try_start_66
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_69
    :goto_69
    throw p1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6a} :catch_6a

    :catch_6a
    move-exception p1

    .line 1100
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1101
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final triggerTransportInitializationLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v1, "KVBT.triggerTransportInitializationLocked"

    .line 846
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 847
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->deletePmStateFile()V

    .line 849
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    return-void
.end method

.method public final tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1327
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_b

    .line 1329
    :catch_6
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCloseFileDescriptorError(Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void
.end method

.method public final unregisterTask()V
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    invoke-interface {v0, p0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    return-void
.end method

.method public waitCancel()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1230
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public final writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    iget v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    invoke-static {p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1012
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_widget"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_27

    if-nez v0, :cond_27

    return-void

    .line 1017
    :cond_27
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onWriteWidgetData(Z[B)V

    const/4 v2, 0x0

    if-eqz v0, :cond_64

    .line 1025
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_64

    .line 1029
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1030
    :try_start_3a
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_5a

    .line 1032
    :try_start_3f
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_50

    .line 1033
    :try_start_43
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_5a

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 1034
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_64

    return-void

    :catchall_50
    move-exception p1

    .line 1028
    :try_start_51
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception p2

    :try_start_56
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_59
    throw p1
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p1

    :try_start_5b
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_63
    throw p1

    .line 1041
    :cond_64
    new-instance p0, Landroid/app/backup/BackupDataOutput;

    invoke-direct {p0, p1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    const-string/jumbo p1, "\uffed\uffedwidget"

    if-eqz v0, :cond_9e

    .line 1044
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1045
    :try_start_73
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_94

    .line 1047
    :try_start_78
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_8a

    .line 1048
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_94

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 1050
    array-length p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1051
    array-length p1, v0

    invoke-virtual {p0, v0, p1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_a5

    :catchall_8a
    move-exception p0

    .line 1043
    :try_start_8b
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_93

    :catchall_8f
    move-exception p1

    :try_start_90
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_93
    throw p0
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception p0

    :try_start_95
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    goto :goto_9d

    :catchall_99
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9d
    throw p0

    :cond_9e
    const/4 p2, -0x1

    .line 1054
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1055
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_a5
    return-void
.end method
