.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$PrintTable;,
        Lcom/android/server/content/SyncManager$SyncHandler;,
        Lcom/android/server/content/SyncManager$ServiceConnectionData;,
        Lcom/android/server/content/SyncManager$SyncTimeTracker;,
        Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;,
        Lcom/android/server/content/SyncManager$OnReadyCallback;,
        Lcom/android/server/content/SyncManager$AccountSyncStats;,
        Lcom/android/server/content/SyncManager$AuthoritySyncStats;,
        Lcom/android/server/content/SyncManager$ActiveSyncContext;,
        Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    }
.end annotation


# static fields
.field public static final DEBUG_ACCOUNT_ACCESS:Z = false

.field public static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field public static final ENABLE_SUSPICIOUS_CHECK:Z

.field public static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field public static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field public static final LOCAL_SYNC_DELAY:J

.field public static final MAX_SYNC_JOB_ID:I = 0x1adb0

.field public static final MIN_SYNC_JOB_ID:I = 0x186a0

.field public static final SYNC_ADAPTER_CONNECTION_FLAGS:I = 0x15

.field public static final SYNC_DELAY_ON_CONFLICT:J = 0x2710L

.field public static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

.field public static final SYNC_MONITOR_PROGRESS_THRESHOLD_BYTES:I = 0xa

.field public static final SYNC_MONITOR_WINDOW_LENGTH_MILLIS:J = 0xea60L

.field public static final SYNC_OP_STATE_INVALID_NOT_SYNCABLE:I = 0x4

.field public static final SYNC_OP_STATE_INVALID_NO_ACCOUNT:I = 0x3

.field public static final SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS:I = 0x2

.field public static final SYNC_OP_STATE_INVALID_SYNC_DISABLED:I = 0x5

.field public static final SYNC_OP_STATE_VALID:I = 0x0

.field public static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*/"

.field public static final TAG:Ljava/lang/String; = "SyncManager"

.field public static final USE_WTF_FOR_ACCOUNT_ERROR:Z = true

.field public static sInstance:Lcom/android/server/content/SyncManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "SyncManager.class"
        }
    .end annotation
.end field

.field public static final sOpDumpComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final sOpRuntimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAccountManager:Landroid/accounts/AccountManager;

.field public final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field public final mAccountsLock:Ljava/lang/Object;

.field public final mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field public final mActiveSyncContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field public final mAmi:Landroid/app/ActivityManagerInternal;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field public mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mConstants:Lcom/android/server/content/SyncManagerConstants;

.field public mContext:Landroid/content/Context;

.field public volatile mDataConnectionIsConnected:Z

.field public mJobScheduler:Landroid/app/job/JobScheduler;

.field public mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field public final mLogger:Lcom/android/server/content/SyncLogger;

.field public volatile mNextJobIdOffset:I

.field public final mNotificationMgr:Landroid/app/NotificationManager;

.field public final mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public volatile mProvisioned:Z

.field public volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field public mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field public final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field public volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field public final mThread:Landroid/os/HandlerThread;

.field public final mUnlockedUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUnlockedUsers"
        }
    .end annotation
.end field

.field public mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$6WOZ6whe3aGhtRg8ibCORDX2qG0(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/content/SyncManager;->lambda$sendOnUnsyncableAccount$12(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C_wFGtdjbW8fAiBrAgJSuqfZ4TA(Lcom/android/server/content/SyncOperation;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/content/SyncManager;->lambda$dumpPeriodicSyncs$9(Lcom/android/server/content/SyncOperation;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Cb9D5B28LqUeotYBnyDglDKi1v8(Lcom/android/server/content/SyncOperation;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/content/SyncManager;->lambda$dumpPendingSyncs$8(Lcom/android/server/content/SyncOperation;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DQLP2CS1NdeepAOPF10tGdqknHA(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->lambda$onUnlockUser$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JNR_Fjdqc1MSOp0b_e3zGKDCzE0(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/content/SyncManager;->lambda$scheduleSync$5(Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LZGnk1q28RiuTwEW9ov1qqhutYw(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->lambda$onStartUser$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YAaTK0MbaliUluHQZzMvcuAbbZQ(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/content/SyncManager;->lambda$static$6(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$du-zC4MrCZn8_j49aRhbGP4hpjI(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/content/SyncManager;->lambda$dumpSyncState$11(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$edyKv7ICGu_Pc_qTUM_aGwdaALU(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function;Ljava/lang/Integer;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/content/SyncManager;->lambda$dumpSyncState$10(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f_0Z1_2aO_5hA8fHgzsbmTPHbes(Lcom/android/server/content/SyncManager;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->zeroToEmpty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lbyZ7JKQmUl_7FWUvhjOh4eIfxM(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->lambda$onStopUser$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$npAYbBbVd5Z_AuJYfL0Y--2whrM(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;Landroid/os/Bundle;)V
    .registers 14

    invoke-direct/range {p0 .. p13}, Lcom/android/server/content/SyncManager;->lambda$scheduleSync$4(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rCk0rrLXEZtHuJ_rRtSr9DSsku8(Lcom/android/server/content/SyncManager;Landroid/accounts/Account;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->lambda$new$0(Landroid/accounts/Account;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-45SpqJUTAuJYfuYBxapc8yxdA(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/content/SyncManager;->lambda$static$7(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccountManagerInternal(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccountsLock(Lcom/android/server/content/SyncManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStats(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConstants(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataConnectionIsConnected(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationMgr(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProvisioned(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningAccounts(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncHandler(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncManagerWakeLock(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDataConnectionIsConnected(Lcom/android/server/content/SyncManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProvisioned(Lcom/android/server/content/SyncManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRunningAccounts(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelJob(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearAllBackoffs(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->clearAllBackoffs(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetAllPendingSyncs(Lcom/android/server/content/SyncManager;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetContextForUser(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetJobStats(Lcom/android/server/content/SyncManager;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTotalBytesTransferredByUid(Lcom/android/server/content/SyncManager;I)J
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misAdapterDelayed(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDeviceProvisioned(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeRescheduleSync(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocked(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onUserUnlocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostScheduleSyncMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadDataConnectionState(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveStaleAccounts(Lcom/android/server/content/SyncManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->removeStaleAccounts()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSyncsForAuthority(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAuthorityPendingState(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDelayUntilTime(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRunningAccounts(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mverifyJobScheduler(Lcom/android/server/content/SyncManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwasPackageEverLaunched(Lcom/android/server/content/SyncManager;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 170
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    const-string/jumbo v0, "sync.local_sync_delay"

    const-wide/16 v1, 0x7530

    .line 177
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/AccountAndUser;

    .line 234
    sput-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    .line 2045
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    .line 2075
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 559
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    .line 237
    sget-object v2, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    const/4 v2, 0x0

    .line 240
    iput-boolean v2, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 241
    iput v2, v0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    .line 250
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 310
    new-instance v5, Lcom/android/server/content/SyncManager$1;

    invoke-direct {v5, v0}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v5, v0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 366
    new-instance v3, Lcom/android/server/content/SyncManager$2;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 404
    new-instance v3, Lcom/android/server/content/SyncManager$3;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 416
    new-instance v3, Lcom/android/server/content/SyncManager$4;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

    .line 427
    new-instance v4, Lcom/android/server/content/SyncManager$5;

    invoke-direct {v4, v0}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 448
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 560
    const-class v4, Lcom/android/server/content/SyncManager;

    monitor-enter v4

    .line 561
    :try_start_4a
    sget-object v6, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v6, :cond_51

    .line 562
    sput-object v0, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    goto :goto_58

    :cond_51
    const-string v6, "SyncManager"

    const-string v7, "SyncManager instantiated multiple times"

    .line 564
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :goto_58
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_1dd

    .line 570
    iput-object v1, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 572
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 574
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;Landroid/os/Looper;)V

    .line 575
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 576
    new-instance v6, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v6, v0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    .line 585
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v6, Lcom/android/server/content/SyncManager$8;

    invoke-direct {v6, v0}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V

    .line 594
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v6, Lcom/android/server/content/SyncManager$9;

    invoke-direct {v6, v0}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncStorageEngine;->setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V

    .line 601
    new-instance v4, Landroid/content/SyncAdaptersCache;

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 603
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "SyncManager"

    const/16 v8, 0xa

    invoke-direct {v6, v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v6, v0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    .line 604
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 605
    new-instance v7, Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v7, v0, v6}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 607
    new-instance v6, Lcom/android/server/content/SyncManager$10;

    invoke-direct {v6, v0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6, v7}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 620
    new-instance v4, Lcom/android/server/content/SyncManagerConstants;

    invoke-direct {v4, v1}, Lcom/android/server/content/SyncManagerConstants;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 622
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 623
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 625
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x64

    .line 626
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 627
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 629
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.USER_REMOVED"

    .line 630
    invoke-virtual {v14, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_UNLOCKED"

    .line 631
    invoke-virtual {v14, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_STOPPED"

    .line 632
    invoke-virtual {v14, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 636
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.TIME_SET"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x0

    if-nez p2, :cond_115

    const-string/jumbo v4, "notification"

    .line 641
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_117

    .line 643
    :cond_115
    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    :goto_117
    const-string/jumbo v4, "power"

    .line 645
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 646
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    iput-object v6, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 647
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v8, "account"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/AccountManager;

    iput-object v6, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 648
    const-class v6, Landroid/accounts/AccountManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/AccountManagerInternal;

    iput-object v6, v0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 649
    const-class v8, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    iput-object v8, v0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 650
    const-class v8, Landroid/app/ActivityManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManagerInternal;

    iput-object v8, v0, Lcom/android/server/content/SyncManager;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 652
    new-instance v8, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v6, v8}, Landroid/accounts/AccountManagerInternal;->addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V

    const-string v6, "batterystats"

    .line 663
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v6, "SyncLoopWakeLock"

    const/4 v11, 0x1

    .line 671
    invoke-virtual {v4, v11, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 673
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 676
    iget-boolean v4, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-nez v4, :cond_1ad

    .line 677
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 678
    new-instance v4, Lcom/android/server/content/SyncManager$11;

    invoke-direct {v4, v0, v3, v1}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 688
    monitor-enter v7

    :try_start_18f
    const-string v3, "device_provisioned"

    .line 690
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 689
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 696
    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v6

    or-int/2addr v3, v6

    iput-boolean v3, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 697
    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v3, :cond_1a8

    .line 698
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 700
    :cond_1a8
    monitor-exit v7

    goto :goto_1ad

    :catchall_1aa
    move-exception v0

    monitor-exit v7
    :try_end_1ac
    .catchall {:try_start_18f .. :try_end_1ac} :catchall_1aa

    throw v0

    :cond_1ad
    :goto_1ad
    if-nez p2, :cond_1bf

    .line 705
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 717
    :cond_1bf
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->whiteListExistingSyncAdaptersIfNeeded()V

    new-array v0, v11, [Ljava/lang/Object;

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync manager initialized: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {v10, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void

    :catchall_1dd
    move-exception v0

    .line 566
    :try_start_1de
    monitor-exit v4
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1dd

    throw v0
.end method

.method public static countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 2084
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2085
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_18
    return v0
.end method

.method public static formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .registers 13

    const-wide/16 v0, 0x3e8

    .line 2129
    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_f

    const/16 v2, 0x2d

    .line 2131
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-long p1, p1

    :cond_f
    const-wide/16 v2, 0x3c

    .line 2134
    rem-long v4, p1, v2

    .line 2135
    div-long/2addr p1, v2

    .line 2137
    rem-long v6, p1, v2

    .line 2138
    div-long/2addr p1, v2

    const-wide/16 v2, 0x18

    .line 2140
    rem-long v8, p1, v2

    .line 2141
    div-long/2addr p1, v2

    const/4 v2, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2a

    .line 2147
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x64

    .line 2148
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :cond_2a
    const/16 p1, 0x68

    .line 2151
    invoke-static {p0, v8, v9, p1, v2}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    const/16 p2, 0x6d

    .line 2152
    invoke-static {p0, v6, v7, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    const/16 p2, 0x73

    .line 2153
    invoke-static {p0, v4, v5, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    if-nez p1, :cond_43

    const-string p1, "0s"

    .line 2155
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    return-object p0
.end method

.method public static formatTime(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    const-string p0, "N/A"

    return-object p0

    .line 2042
    :cond_9
    invoke-static {p0, p1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;
    .registers 11

    .line 1865
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.content.SyncAdapter"

    .line 1866
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1867
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.client_label"

    const v1, 0x1040dec

    .line 1868
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1870
    new-instance v4, Landroid/content/Intent;

    const-string p1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1872
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v3, 0x0

    const/high16 v5, 0x4000000

    const/4 v6, 0x0

    move-object v2, p0

    .line 1870
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "android.intent.extra.client_intent"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/content/SyncManager;
    .registers 3

    .line 2908
    const-class v0, Lcom/android/server/content/SyncManager;

    monitor-enter v0

    .line 2909
    :try_start_3
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_f

    const-string v1, "SyncManager"

    const-string/jumbo v2, "sInstance == null"

    .line 2910
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    :cond_f
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    .line 2913
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static isSyncSetting(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "expedited"

    .line 4000
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    const-string/jumbo v1, "schedule_as_expedited_job"

    .line 4003
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v2

    :cond_18
    const-string/jumbo v1, "ignore_settings"

    .line 4006
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    const-string/jumbo v1, "ignore_backoff"

    .line 4009
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    return v2

    :cond_2c
    const-string v1, "do_not_retry"

    .line 4012
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    return v2

    :cond_35
    const-string v1, "force"

    .line 4015
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    return v2

    :cond_3e
    const-string/jumbo v1, "upload"

    .line 4018
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    return v2

    :cond_48
    const-string v1, "deletions_override"

    .line 4021
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    return v2

    :cond_51
    const-string v1, "discard_deletions"

    .line 4024
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    return v2

    :cond_5a
    const-string v1, "expected_upload"

    .line 4027
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    return v2

    :cond_63
    const-string v1, "expected_download"

    .line 4030
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    return v2

    :cond_6c
    const-string/jumbo v1, "sync_priority"

    .line 4033
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    return v2

    :cond_76
    const-string v1, "allow_metered"

    .line 4036
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    return v2

    :cond_7f
    const-string/jumbo v1, "initialize"

    .line 4039
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_89

    return v2

    :cond_89
    return v0
.end method

.method public static synthetic lambda$dumpPendingSyncs$8(Lcom/android/server/content/SyncOperation;)Z
    .registers 1

    .line 2094
    iget-boolean p0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$dumpPeriodicSyncs$9(Lcom/android/server/content/SyncOperation;)Z
    .registers 1

    .line 2111
    iget-boolean p0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    return p0
.end method

.method public static synthetic lambda$dumpSyncState$10(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function;Ljava/lang/Integer;)V
    .registers 9

    const/4 v0, 0x0

    .line 2334
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2335
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 2337
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 2338
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 2339
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, v1, v0

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 2340
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 2341
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 2342
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x6

    aput-object p2, v1, v2

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 2343
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x7

    aput-object p2, v1, v2

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 2344
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/16 v2, 0x8

    aput-object p2, v1, v2

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 2345
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/16 p4, 0x9

    aput-object p2, v1, p4

    iget-wide p2, p3, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 2346
    invoke-static {p0, p2, p3}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p2, 0xa

    aput-object p0, v1, p2

    .line 2335
    invoke-virtual {p1, p5, v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$dumpSyncState$11(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 1

    .line 2348
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/accounts/Account;I)V
    .registers 15

    .line 654
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 655
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 659
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    const/4 v10, -0x2

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 655
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    :cond_1c
    return-void
.end method

.method private synthetic lambda$onStartUser$1(I)V
    .registers 5

    .line 724
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onStartUser: user="

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onStopUser$3(I)V
    .registers 5

    .line 740
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onStopUser: user="

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onUnlockUser$2(I)V
    .registers 5

    .line 732
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onUnlockUser: user="

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$scheduleSync$4(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;Landroid/os/Bundle;)V
    .registers 28

    move-object/from16 v0, p13

    if-eqz v0, :cond_28

    const-string v1, "booleanResult"

    .line 1018
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v0, p1

    .line 1019
    iget-object v1, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    const/4 v9, 0x1

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    :cond_28
    return-void
.end method

.method private synthetic lambda$scheduleSync$5(Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V
    .registers 26

    move-object v0, p1

    .line 1071
    iget-object v1, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v2, v0, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$sendOnUnsyncableAccount$12(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .registers 2

    .line 2794
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public static synthetic lambda$static$6(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 6

    .line 2046
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 2049
    :cond_f
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 2051
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_24

    return v1

    .line 2054
    :cond_24
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_37

    return v1

    .line 2057
    :cond_37
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_46

    return v0

    .line 2060
    :cond_46
    iget v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v1, p1, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_51

    return v0

    .line 2063
    :cond_51
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_5c

    return v0

    .line 2066
    :cond_5c
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_67

    return v0

    .line 2069
    :cond_67
    iget p0, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long v0, p0

    iget p0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    if-eqz p0, :cond_74

    return p0

    :cond_74
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$static$7(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 6

    .line 2076
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 2079
    :cond_b
    sget-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z
    .registers 7

    if-nez p4, :cond_a

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    if-eqz p4, :cond_17

    const-wide/16 v0, 0xa

    cmp-long p4, p1, v0

    if-gez p4, :cond_17

    const/16 p4, 0x30

    .line 2167
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2169
    :cond_17
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2170
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public static readyToSync(I)Z
    .registers 3

    .line 2920
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2921
    invoke-static {}, Lcom/android/server/content/SyncJobService;->isReady()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v1, :cond_18

    .line 2922
    invoke-virtual {v0, p0}, Lcom/android/server/content/SyncManager;->isUserUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static sendMessage(Landroid/os/Message;)V
    .registers 2

    .line 2926
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2928
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    return-void
.end method

.method public static sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;I",
            "Lcom/android/server/content/SyncManager$OnReadyCallback;",
            ")V"
        }
    .end annotation

    .line 2784
    new-instance v0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {v0, p1, p3}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;-><init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 2787
    iget-object p1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 2788
    invoke-static {p0, p1, p2}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object p1

    .line 2789
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/16 p3, 0x15

    .line 2787
    invoke-virtual {p0, p1, v0, p3, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 2793
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e

    .line 2801
    :cond_2b
    invoke-static {v0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->-$$Nest$monReady(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    :goto_2e
    return-void
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p2, :cond_12

    .line 3974
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_12

    return v1

    .line 3977
    :cond_12
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-le v2, v3, :cond_1e

    move-object v2, p0

    goto :goto_1f

    :cond_1e
    move-object v2, p1

    .line 3978
    :goto_1f
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    if-le v3, v4, :cond_2a

    move-object p0, p1

    .line 3979
    :cond_2a
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_32
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez p2, :cond_47

    .line 3980
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->isSyncSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    goto :goto_32

    .line 3983
    :cond_47
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    return v1

    .line 3986
    :cond_4e
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    return v1

    :cond_5d
    return v0
.end method


# virtual methods
.method public final canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 6

    .line 1139
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1140
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1139
    invoke-virtual {v0, p1, p2, v1}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    return v0

    .line 1147
    :cond_e
    :try_start_e
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x100000

    .line 1148
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 1147
    invoke-virtual {p0, p2, p1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1d} :catch_1e

    return v0

    :catch_1e
    const/4 p0, 0x0

    return p0
.end method

.method public cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    .line 1479
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public final cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_a

    const-string p0, "SyncManager"

    const-string p1, "Null sync operation detected."

    .line 4127
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4130
    :cond_a
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_26

    .line 4131
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Removing periodic sync "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, " for "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 4133
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object p0

    iget p1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .registers 9

    .line 1733
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1734
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1735
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    .line 1736
    invoke-virtual {v1, p2, v2}, Lcom/android/server/content/SyncOperation;->areExtrasEqual(Landroid/os/Bundle;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "cancelScheduledSyncOperation"

    .line 1737
    invoke-virtual {p0, v1, v2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_8

    .line 1740
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1742
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p2, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p2

    if-nez p2, :cond_42

    .line 1743
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    :cond_42
    return-void
.end method

.method public final cleanupJobs()V
    .registers 3

    .line 466
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final clearAllBackoffs(Ljava/lang/String;)V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked()V

    .line 389
    sget-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public final clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 11

    .line 1366
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1367
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_23

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1368
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_23

    return-void

    :cond_23
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    .line 1371
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing backoffs for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_40
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1378
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 12

    .line 1716
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1717
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1718
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "clearScheduledSyncOperations"

    .line 1719
    invoke-virtual {p0, v1, v2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1720
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    goto :goto_8

    .line 1723
    :cond_30
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    return-void
.end method

.method public computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I
    .registers 10

    .line 1111
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1115
    :cond_8
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object p3

    .line 1116
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 1117
    invoke-virtual {v2, p3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object p2

    if-nez p2, :cond_17

    return v1

    .line 1121
    :cond_17
    iget p3, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1122
    iget-object v2, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1123
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p3, v2}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v3

    const-string v4, "SyncManager"

    if-eqz v3, :cond_4f

    .line 1124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not scheduling job "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -- package not allowed to start"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4f
    if-eqz p4, :cond_83

    .line 1129
    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_83

    .line 1130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Access to "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/content/SyncLogger;->logSafe(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " denied for package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in UID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_83
    return v0
.end method

.method public final containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .registers 7

    const/4 p0, 0x0

    move v0, p0

    .line 336
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 337
    aget-object v1, p1, v0

    iget v2, v1, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_15

    iget-object v1, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 338
    invoke-virtual {v1, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 p0, 0x1

    goto :goto_18

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    :goto_18
    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 6

    .line 2024
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2026
    new-instance v0, Lcom/android/server/content/SyncAdapterStateFetcher;

    invoke-direct {v0}, Lcom/android/server/content/SyncAdapterStateFetcher;-><init>()V

    .line 2028
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2029
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lcom/android/server/content/SyncManagerConstants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2030
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    if-eqz p3, :cond_25

    const-string p3, "Detailed Sync History"

    .line 2033
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncLogger;->dumpAll(Ljava/io/PrintWriter;)V

    :cond_25
    return-void
.end method

.method public final dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .registers 10

    const-string v0, "Success ("

    .line 2436
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2437
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    const-string v1, " avg="

    const-string v2, " for "

    if-lez v0, :cond_26

    .line 2438
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2439
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    :cond_26
    const-string v0, ") Failure ("

    .line 2441
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2442
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_48

    .line 2443
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2444
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget p2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, p2

    div-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    :cond_48
    const-string p0, ")"

    .line 2446
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpDayStatistics(Ljava/io/PrintWriter;)V
    .registers 13

    .line 2688
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v0

    if-eqz v0, :cond_9d

    const/4 v1, 0x0

    .line 2689
    aget-object v2, v0, v1

    if-eqz v2, :cond_9d

    .line 2690
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Sync Statistics"

    .line 2691
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Today:  "

    .line 2692
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2693
    aget-object v1, v0, v1

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    const/4 v2, 0x1

    :goto_24
    const/4 v3, 0x6

    if-gt v2, v3, :cond_49

    .line 2698
    array-length v4, v0

    if-ge v2, v4, :cond_49

    .line 2699
    aget-object v4, v0, v2

    if-nez v4, :cond_2f

    goto :goto_49

    .line 2701
    :cond_2f
    iget v5, v4, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v5, v1, v5

    if-le v5, v3, :cond_36

    goto :goto_49

    :cond_36
    const-string v3, "  Day-"

    .line 2704
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2705
    invoke-virtual {p0, p1, v4}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_49
    :goto_49
    move v4, v1

    .line 2710
    :cond_4a
    :goto_4a
    array-length v5, v0

    if-ge v2, v5, :cond_9d

    const/4 v5, 0x0

    add-int/lit8 v4, v4, -0x7

    .line 2713
    :goto_50
    array-length v6, v0

    if-ge v2, v6, :cond_86

    .line 2714
    aget-object v6, v0, v2

    if-nez v6, :cond_59

    .line 2716
    array-length v2, v0

    goto :goto_86

    .line 2719
    :cond_59
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v7, v4, v7

    if-le v7, v3, :cond_60

    goto :goto_86

    :cond_60
    add-int/lit8 v2, v2, 0x1

    if-nez v5, :cond_69

    .line 2724
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v5, v4}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2726
    :cond_69
    iget v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget v8, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2727
    iget-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2728
    iget v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v8, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2729
    iget-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_50

    :cond_86
    :goto_86
    if-eqz v5, :cond_4a

    const-string v6, "  Week-"

    .line 2732
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x7

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {p0, p1, v5}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    goto :goto_4a

    :cond_9d
    return-void
.end method

.method public dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 6

    .line 2091
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object p0

    const-string v0, "Pending Syncs: "

    .line 2093
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2094
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2096
    sget-object v0, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2098
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1e
    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 2099
    iget-boolean v1, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2100
    invoke-virtual {v0, v1, v2, p2, v2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    .line 2104
    :cond_38
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 6

    .line 2108
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object p0

    const-string v0, "Periodic Syncs: "

    .line 2110
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2111
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2113
    sget-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2115
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1e
    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 2116
    iget-boolean v1, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2117
    invoke-virtual {v0, v1, v2, p2, v2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    .line 2121
    :cond_38
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpRecentHistory(Ljava/io/PrintWriter;)V
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2455
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 2456
    invoke-virtual {v2}, Lcom/android/server/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4ad

    .line 2457
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4ad

    .line 2458
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 2461
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2465
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const-string v8, " u"

    const-string v6, "/"

    const-string v7, "Unknown"

    move-object/from16 v19, v7

    if-eqz v15, :cond_d5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2466
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v21, v5

    iget v5, v15, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2467
    invoke-virtual {v7, v5}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v5

    if-eqz v5, :cond_78

    .line 2471
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v19, v7

    .line 2472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v2

    iget-object v2, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    move-object/from16 v7, v19

    goto :goto_7d

    :cond_78
    move-object/from16 v22, v2

    move-object/from16 v2, v19

    move-object v7, v2

    .line 2480
    :goto_7d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v13, :cond_84

    move v13, v5

    .line 2484
    :cond_84
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v14, :cond_8b

    move v14, v5

    .line 2489
    :cond_8b
    iget-wide v5, v15, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    add-long/2addr v9, v5

    const-wide/16 v23, 0x1

    add-long v11, v11, v23

    .line 2492
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    const/4 v15, 0x0

    if-nez v8, :cond_a3

    .line 2494
    new-instance v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    invoke-direct {v8, v7, v15}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats-IA;)V

    .line 2495
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a3
    move-wide/from16 v23, v9

    .line 2497
    iget-wide v9, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    add-long/2addr v9, v5

    iput-wide v9, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2498
    iget v7, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    const/4 v9, 0x1

    add-int/2addr v7, v9

    iput v7, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2499
    iget-object v7, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2500
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    if-nez v8, :cond_c2

    .line 2502
    new-instance v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    invoke-direct {v8, v2, v15}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats-IA;)V

    .line 2503
    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2505
    :cond_c2
    iget-wide v9, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    add-long/2addr v9, v5

    iput-wide v9, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2506
    iget v2, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    move-object/from16 v5, v21

    move-object/from16 v2, v22

    move-wide/from16 v9, v23

    goto/16 :goto_24

    :cond_d5
    move-object/from16 v22, v2

    const-wide/16 v17, 0x0

    cmp-long v2, v9, v17

    const-wide/16 v23, 0x3e8

    const/4 v7, 0x2

    if-lez v2, :cond_23c

    .line 2511
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-array v2, v7, [Ljava/lang/Object;

    .line 2514
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v2, v16

    div-long v25, v9, v23

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v20, 0x1

    aput-object v15, v2, v20

    const-string v15, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    .line 2512
    invoke-virtual {v1, v15, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2516
    new-instance v2, Ljava/util/ArrayList;

    .line 2517
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2518
    new-instance v3, Lcom/android/server/content/SyncManager$13;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$13;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v3, v14, 0x3

    .line 2530
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v15, v3, 0x4

    add-int/2addr v15, v7

    add-int/lit8 v15, v15, 0xa

    add-int/lit8 v15, v15, 0xb

    .line 2532
    new-array v15, v15, [C

    const/16 v5, 0x2d

    .line 2533
    invoke-static {v15, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 2534
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v15}, Ljava/lang/String;-><init>([C)V

    const/4 v15, 0x1

    new-array v7, v15, [Ljava/lang/Object;

    add-int/lit8 v20, v3, 0x2

    .line 2537
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v16, 0x0

    aput-object v20, v7, v16

    move-object/from16 v26, v8

    const-string v8, "  %%-%ds: %%-9s  %%-11s\n"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v15, [Ljava/lang/Object;

    .line 2539
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v16

    const-string v3, "    %%-%ds:   %%-9s  %%-11s\n"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2541
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2542
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_150
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_237

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2543
    iget-object v15, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    move/from16 v27, v13

    move/from16 v28, v14

    .line 2549
    iget-wide v13, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-object/from16 v29, v2

    .line 2550
    iget v2, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v31, v4

    move-object/from16 v30, v6

    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 2551
    div-long v32, v13, v23

    .line 2552
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const/16 v16, 0x0

    aput-object v25, v4, v16

    const-wide/16 v32, 0x64

    mul-long v13, v13, v32

    div-long/2addr v13, v9

    .line 2553
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v4, v14

    const-string v13, "%ds/%d%%"

    .line 2551
    invoke-static {v13, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v14, v6, [Ljava/lang/Object;

    .line 2555
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v16

    mul-int/lit8 v2, v2, 0x64

    move-object/from16 v34, v5

    int-to-long v5, v2

    div-long/2addr v5, v11

    .line 2556
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v14, v5

    const-string v2, "%d/%d%%"

    .line 2554
    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v35, v3

    const/4 v14, 0x3

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v15, v3, v16

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 2557
    invoke-virtual {v1, v7, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2559
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2561
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2562
    new-instance v4, Lcom/android/server/content/SyncManager$14;

    invoke-direct {v4, v0}, Lcom/android/server/content/SyncManager$14;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2573
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1cc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_222

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2574
    iget-wide v5, v4, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2575
    iget v8, v4, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    .line 2576
    div-long v36, v5, v23

    .line 2577
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const/16 v16, 0x0

    aput-object v25, v15, v16

    mul-long v5, v5, v32

    div-long/2addr v5, v9

    .line 2578
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v15, v6

    .line 2576
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v15, v14, [Ljava/lang/Object;

    .line 2580
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v16

    mul-int/lit8 v8, v8, 0x64

    move-object v14, v7

    int-to-long v6, v8

    div-long/2addr v6, v11

    .line 2581
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v15, v7

    .line 2579
    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    new-array v15, v8, [Ljava/lang/Object;

    .line 2582
    iget-object v4, v4, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    aput-object v4, v15, v16

    aput-object v6, v15, v7

    const/4 v4, 0x2

    aput-object v5, v15, v4

    move-object/from16 v4, v35

    invoke-virtual {v1, v4, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-object v7, v14

    goto :goto_1cc

    :cond_222
    move-object v14, v7

    move-object/from16 v5, v34

    move-object/from16 v4, v35

    .line 2584
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v3, v4

    move/from16 v13, v27

    move/from16 v14, v28

    move-object/from16 v2, v29

    move-object/from16 v6, v30

    move/from16 v4, v31

    goto/16 :goto_150

    :cond_237
    move/from16 v31, v4

    move-object/from16 v30, v6

    goto :goto_242

    :cond_23c
    move/from16 v31, v4

    move-object/from16 v30, v6

    move-object/from16 v26, v8

    :goto_242
    move/from16 v27, v13

    move/from16 v28, v14

    .line 2588
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Recent Sync History"

    .line 2589
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "(SERVER is now split up to FEED and OTHER)"

    .line 2590
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  %-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v28

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s  %-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v27

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s %s\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2592
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 2593
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move/from16 v7, v31

    const/4 v6, 0x0

    :goto_284
    if-ge v6, v7, :cond_3fb

    move-object/from16 v8, v22

    .line 2595
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2596
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v11, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2597
    invoke-virtual {v10, v11}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    if-eqz v10, :cond_2c9

    .line 2601
    iget-object v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2602
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v13, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v14, v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v26

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2ce

    :cond_2c9
    move-object/from16 v13, v30

    move-object/from16 v10, v19

    move-object v11, v10

    .line 2609
    :goto_2ce
    iget-wide v14, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move/from16 v31, v7

    move-object/from16 v22, v8

    .line 2610
    iget-wide v7, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 2612
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2613
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    if-nez v27, :cond_2f5

    const-string v27, ""

    :goto_2f2
    move-object/from16 v34, v13

    goto :goto_359

    .line 2618
    :cond_2f5
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    sub-long v27, v27, v7

    div-long v27, v27, v23

    const-wide/16 v29, 0x3c

    cmp-long v32, v27, v29

    if-gez v32, :cond_308

    .line 2620
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    goto :goto_2f2

    :cond_308
    const-wide/16 v32, 0xe10

    cmp-long v34, v27, v32

    if-gez v34, :cond_32e

    move-object/from16 v34, v13

    const/4 v13, 0x2

    new-array v0, v13, [Ljava/lang/Object;

    .line 2622
    div-long v32, v27, v29

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v16, 0x0

    aput-object v13, v0, v16

    rem-long v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v20, 0x1

    aput-object v13, v0, v20

    const-string v13, "%02d:%02d"

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto :goto_359

    :cond_32e
    move-object/from16 v34, v13

    const/16 v16, 0x0

    const/16 v20, 0x1

    .line 2624
    rem-long v35, v27, v32

    const/4 v0, 0x3

    new-array v13, v0, [Ljava/lang/Object;

    .line 2625
    div-long v27, v27, v32

    .line 2626
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v13, v16

    div-long v27, v35, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v13, v20

    rem-long v35, v35, v29

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v25, 0x2

    aput-object v0, v13, v25

    const-string v0, "%02d:%02d:%02d"

    .line 2625
    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 2629
    :goto_359
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    .line 2632
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v0, v13

    .line 2633
    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v0, v8

    sget-object v7, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v8, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aput-object v7, v0, v8

    long-to-float v7, v14

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    .line 2635
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v0, v8

    const/4 v7, 0x4

    aput-object v27, v0, v7

    const-string v7, "  #%-3d: %s %8s  %5.1fs  %8s"

    .line 2631
    invoke-virtual {v1, v7, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v0, v7

    const/4 v7, 0x1

    aput-object v11, v0, v7

    .line 2637
    iget v8, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 2638
    invoke-static {v5, v8}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v0, v10

    .line 2637
    invoke-virtual {v1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2640
    iget v0, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    if-ne v0, v7, :cond_3b6

    iget-wide v7, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    const-wide/16 v10, 0x0

    cmp-long v7, v7, v10

    if-nez v7, :cond_3b8

    iget-wide v7, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    cmp-long v7, v7, v10

    if-eqz v7, :cond_3d9

    goto :goto_3b8

    :cond_3b6
    const-wide/16 v10, 0x0

    :cond_3b8
    :goto_3b8
    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    .line 2644
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v8, v7

    iget-wide v12, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 2645
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v8, v7

    iget-wide v12, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 2646
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v7, 0x2

    aput-object v0, v8, v7

    const-string v0, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    .line 2643
    invoke-virtual {v1, v0, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2648
    :cond_3d9
    iget-object v0, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    if-eqz v0, :cond_3f3

    const-string/jumbo v7, "success"

    .line 2649
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f3

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    .line 2650
    iget-object v0, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const-string v0, "    mesg=%s\n"

    invoke-virtual {v1, v0, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :cond_3f3
    move-object/from16 v0, p0

    move/from16 v7, v31

    move-object/from16 v30, v34

    goto/16 :goto_284

    :cond_3fb
    move/from16 v31, v7

    move-object/from16 v34, v30

    .line 2653
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Recent Sync History Extras"

    .line 2654
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2655
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v2, v31

    const/4 v0, 0x0

    :goto_40d
    if-ge v0, v2, :cond_4ad

    move-object/from16 v4, v22

    .line 2657
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2658
    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_498

    .line 2659
    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v7

    if-nez v7, :cond_423

    goto/16 :goto_498

    :cond_423
    move-object/from16 v7, p0

    .line 2662
    iget-object v8, v7, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v9, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2663
    invoke-virtual {v8, v9}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    if-eqz v8, :cond_460

    .line 2667
    iget-object v9, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2668
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v34

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v26

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_467

    :cond_460
    move-object/from16 v12, v26

    move-object/from16 v11, v34

    move-object/from16 v8, v19

    move-object v9, v8

    .line 2675
    :goto_467
    iget-wide v13, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    const/4 v10, 0x3

    new-array v15, v10, [Ljava/lang/Object;

    add-int/lit8 v10, v0, 0x1

    .line 2678
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v15, v16

    .line 2679
    invoke-static {v13, v14}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v15, v13

    sget-object v10, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v5, v10, v5

    const/4 v10, 0x2

    aput-object v5, v15, v10

    const-string v5, "  #%-3d: %s %8s "

    .line 2677
    invoke-virtual {v1, v5, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v5, 0x3

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v8, v14, v16

    aput-object v9, v14, v13

    aput-object v6, v14, v10

    .line 2682
    invoke-virtual {v1, v3, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_4a3

    :cond_498
    :goto_498
    move-object/from16 v7, p0

    move-object/from16 v12, v26

    move-object/from16 v11, v34

    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v13, 0x1

    const/16 v16, 0x0

    :goto_4a3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v22, v4

    move-object/from16 v34, v11

    move-object/from16 v26, v12

    goto/16 :goto_40d

    :cond_4ad
    return-void
.end method

.method public final dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 2740
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2741
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 2743
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync adapters for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2745
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2747
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2748
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_41

    .line 2750
    :cond_51
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2751
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_d

    :cond_58
    return-void
.end method

.method public dumpSyncHistory(Ljava/io/PrintWriter;)V
    .registers 2

    .line 2450
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 2451
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 30
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data connected: "

    .line 2178
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "Battery saver: "

    .line 2179
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2180
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v4

    goto :goto_27

    :cond_26
    move v3, v5

    :goto_27
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "Background network restriction: "

    .line 2182
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    if-nez v3, :cond_37

    const/4 v3, -0x1

    goto :goto_3b

    .line 2185
    :cond_37
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v3

    :goto_3b
    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v3, v4, :cond_5d

    if-eq v3, v7, :cond_57

    if-eq v3, v6, :cond_51

    const-string v8, "Unknown("

    .line 2197
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ")"

    .line 2199
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_62

    :cond_51
    const-string v3, " enabled"

    .line 2194
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_62

    :cond_57
    const-string v3, " whitelisted"

    .line 2191
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_62

    :cond_5d
    const-string v3, " disabled"

    .line 2188
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_62
    const-string v3, "Auto sync: "

    .line 2204
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2205
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_ad

    .line 2207
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 2208
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "u"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 2209
    invoke-virtual {v10, v8}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2208
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_71

    .line 2211
    :cond_aa
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2213
    :cond_ad
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    const-string v8, "Storage low: "

    .line 2215
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_c4

    move v3, v4

    goto :goto_c5

    :cond_c4
    move v3, v5

    :goto_c5
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "Clock valid: "

    .line 2216
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2219
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService;->getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;

    move-result-object v3

    const-string v8, "Accounts: "

    .line 2221
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2222
    sget-object v8, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    if-eq v3, v8, :cond_ec

    .line 2223
    array-length v8, v3

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_f2

    :cond_ec
    const-string/jumbo v8, "not known yet"

    .line 2225
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2227
    :goto_f2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-string v10, "Now: "

    .line 2228
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 2229
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v10, "Uptime: "

    .line 2232
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, v8, v9}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2233
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v10, "Time spent syncing: "

    .line 2234
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2237
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v10, v10, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2238
    invoke-virtual {v10}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v10

    .line 2237
    invoke-static {v2, v10, v11}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v10, ", sync "

    .line 2239
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v10, v10, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-boolean v10, v10, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-eqz v10, :cond_158

    const-string v10, ""

    goto :goto_15b

    :cond_158
    const-string/jumbo v10, "not "

    :goto_15b
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "in progress"

    .line 2241
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2243
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2244
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active Syncs: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2245
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 2246
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_18d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2247
    iget-wide v13, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v13, v8, v13

    const-string v15, "  "

    .line 2248
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2249
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2250
    invoke-static {v2, v13, v14}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v13, " - "

    .line 2251
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2252
    iget-object v12, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v13, p2

    invoke-virtual {v12, v10, v5, v13, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2253
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_18d

    :cond_1c0
    move-object/from16 v13, p2

    .line 2255
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2257
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2258
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    const-string v10, "Sync Status"

    .line 2261
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2263
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2265
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v11, v5}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 2267
    array-length v11, v3

    move v12, v5

    :goto_1dc
    if-ge v12, v11, :cond_469

    aget-object v13, v3, v12

    .line 2269
    iget-object v14, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v14

    .line 2270
    :try_start_1e3
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    iget v6, v13, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 2271
    monitor-exit v14
    :try_end_1ec
    .catchall {:try_start_1e3 .. :try_end_1ec} :catchall_466

    const-string v14, "Account %s u%d %s%s\n"

    const/4 v15, 0x4

    new-array v7, v15, [Ljava/lang/Object;

    .line 2272
    iget-object v15, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v15, v7, v5

    iget v15, v13, Landroid/accounts/AccountAndUser;->userId:I

    .line 2273
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v4

    iget-object v15, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v15, v7, v16

    if-eqz v6, :cond_20c

    const-string v6, ""

    goto :goto_20e

    :cond_20c
    const-string v6, " (locked)"

    :goto_20e
    const/4 v15, 0x3

    aput-object v6, v7, v15

    .line 2272
    invoke-virtual {v1, v14, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v6, "======================================================================="

    .line 2276
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2277
    new-instance v6, Lcom/android/server/content/SyncManager$PrintTable;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    new-array v7, v7, [Ljava/lang/Object;

    const-string v14, "Authority"

    aput-object v14, v7, v5

    const-string v14, "Syncable"

    aput-object v14, v7, v4

    const-string v14, "Enabled"

    const/4 v15, 0x2

    aput-object v14, v7, v15

    const-string v14, "Stats"

    const/4 v15, 0x3

    aput-object v14, v7, v15

    const-string v14, "Loc"

    const/4 v15, 0x4

    aput-object v14, v7, v15

    const/4 v14, 0x5

    const-string v15, "Poll"

    aput-object v15, v7, v14

    const/4 v14, 0x6

    const-string v15, "Per"

    aput-object v15, v7, v14

    const/4 v14, 0x7

    const-string v15, "Feed"

    aput-object v15, v7, v14

    const/16 v14, 0x8

    const-string v15, "User"

    aput-object v15, v7, v14

    const/16 v14, 0x9

    const-string v15, "Othr"

    aput-object v15, v7, v14

    const/16 v14, 0xa

    const-string v15, "Tot"

    aput-object v15, v7, v14

    const/16 v14, 0xb

    const-string v15, "Fail"

    aput-object v15, v7, v14

    const/16 v14, 0xc

    const-string v15, "Can"

    aput-object v15, v7, v14

    const/16 v14, 0xd

    const-string v15, "Time"

    aput-object v15, v7, v14

    const-string v14, "Last Sync"

    const/16 v15, 0xe

    aput-object v14, v7, v15

    const-string v14, "Backoff"

    const/16 v15, 0xf

    aput-object v14, v7, v15

    .line 2278
    invoke-virtual {v6, v5, v5, v7}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2302
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 2303
    iget-object v14, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v15, v13, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v14, v15}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2304
    new-instance v14, Lcom/android/server/content/SyncManager$12;

    invoke-direct {v14, v0}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v7, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2312
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_296
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_450

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2313
    iget-object v15, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v15, Landroid/content/SyncAdapterType;

    iget-object v15, v15, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v4, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b4

    const/4 v4, 0x1

    goto :goto_296

    .line 2316
    :cond_2b4
    invoke-virtual {v6}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    move-result v4

    .line 2317
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v18, v3

    iget-object v3, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v14, Landroid/content/SyncAdapterType;

    iget-object v14, v14, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v19, v7

    iget v7, v13, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v5, v3, v14, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2318
    invoke-virtual {v15, v5}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v3

    .line 2323
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2324
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 2325
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v7, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2326
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2327
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x32

    if-le v14, v15, :cond_2f7

    .line 2328
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v15

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_2f7
    const/4 v15, 0x3

    new-array v14, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    .line 2330
    iget v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v17, 0x1

    aput-object v7, v14, v17

    iget-boolean v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v16, 0x2

    aput-object v7, v14, v16

    invoke-virtual {v6, v4, v15, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2332
    new-instance v7, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;

    invoke-direct {v7, v2, v6}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V

    const-string v14, "Total"

    .line 2348
    iget-object v15, v3, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    move-object/from16 v20, v2

    new-instance v2, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;-><init>()V

    move/from16 v21, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v14, v15, v2, v11}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "Today"

    .line 2349
    iget-object v11, v3, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v14, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda6;

    invoke-direct {v14, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v15, v4, 0x1

    move-object/from16 v22, v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v2, v11, v14, v13}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "Yestr"

    .line 2350
    iget-object v11, v3, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v13, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda6;

    invoke-direct {v13, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v14, v4, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v2, v11, v13, v14}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2356
    iget-wide v13, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v2, v13, v8

    if-lez v2, :cond_3ba

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    .line 2357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "D: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    sub-long/2addr v13, v8

    const-wide/16 v23, 0x3e8

    div-long v13, v13, v23

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v7, v11

    const/16 v2, 0xf

    invoke-virtual {v6, v4, v2, v7}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2358
    iget-wide v13, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v13, v8

    if-lez v2, :cond_3ba

    add-int/lit8 v2, v15, 0x1

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/Object;

    .line 2359
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "B: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    sub-long/2addr v13, v8

    div-long v13, v13, v23

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v11, v13

    const/16 v7, 0xf

    invoke-virtual {v6, v15, v7, v11}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    move-wide/from16 v25, v8

    .line 2360
    iget-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    div-long v7, v7, v23

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v13

    const/16 v5, 0xf

    invoke-virtual {v6, v2, v5, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    goto :goto_3be

    :cond_3ba
    move-wide/from16 v25, v8

    const/16 v5, 0xf

    .line 2365
    :goto_3be
    iget-wide v7, v3, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v13, 0x0

    cmp-long v2, v7, v13

    if-eqz v2, :cond_3f8

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    .line 2366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v9, v3, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    aget-object v8, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " SUCCESS"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/16 v2, 0xe

    invoke-virtual {v6, v4, v2, v7}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    add-int/lit8 v4, v15, 0x1

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    .line 2368
    iget-wide v13, v3, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-static {v13, v14}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v8

    invoke-virtual {v6, v15, v2, v9}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2370
    :cond_3f8
    iget-wide v7, v3, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v13, 0x0

    cmp-long v2, v7, v13

    if-eqz v2, :cond_43e

    add-int/lit8 v2, v4, 0x1

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    .line 2371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v11, v3, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    aget-object v9, v9, v11

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " FAILURE"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/16 v7, 0xe

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    add-int/lit8 v4, v2, 0x1

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    .line 2373
    iget-wide v13, v3, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-static {v13, v14}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v9

    invoke-virtual {v6, v2, v7, v11}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    new-array v2, v8, [Ljava/lang/Object;

    .line 2375
    iget-object v3, v3, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-virtual {v6, v4, v7, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    goto :goto_440

    :cond_43e
    const/16 v7, 0xe

    :goto_440
    move-object/from16 v3, v18

    move-object/from16 v7, v19

    move-object/from16 v2, v20

    move/from16 v11, v21

    move-object/from16 v13, v22

    move-wide/from16 v8, v25

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_296

    :cond_450
    move-object/from16 v20, v2

    move-object/from16 v18, v3

    move-wide/from16 v25, v8

    move/from16 v21, v11

    const/16 v16, 0x2

    .line 2378
    invoke-virtual {v6, v1}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v16

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    goto/16 :goto_1dc

    :catchall_466
    move-exception v0

    .line 2271
    :try_start_467
    monitor-exit v14
    :try_end_468
    .catchall {:try_start_467 .. :try_end_468} :catchall_466

    throw v0

    .line 2381
    :cond_469
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 2383
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Per Adapter History"

    .line 2384
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    .line 2385
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v15, 0x0

    .line 2387
    :goto_47a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_565

    .line 2388
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const-string v2, "  "

    .line 2390
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2391
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x2f

    .line 2392
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2393
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " u"

    .line 2394
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2395
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " ["

    .line 2396
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2397
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "]"

    .line 2398
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2399
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "    Per source last syncs:"

    .line 2401
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2402
    :goto_4d0
    sget-object v3, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_516

    const-string v4, "      "

    .line 2403
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "%8s"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 2404
    aget-object v3, v3, v2

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Success: "

    .line 2405
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2406
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncStatusInfo;

    iget-object v3, v3, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aget-wide v3, v3, v2

    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Failure: "

    .line 2408
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2409
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncStatusInfo;

    iget-object v3, v3, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aget-wide v3, v3, v2

    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d0

    :cond_516
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v2, "    Last syncs:"

    .line 2412
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v7

    .line 2413
    :goto_51e
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncStatusInfo;

    invoke-virtual {v3}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v3

    if-ge v2, v3, :cond_552

    const-string v3, "      "

    .line 2414
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2415
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncStatusInfo;

    invoke-virtual {v3, v2}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x20

    .line 2416
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 2417
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncStatusInfo;

    invoke-virtual {v3, v2}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2418
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_51e

    .line 2420
    :cond_552
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/SyncStatusInfo;

    invoke-virtual {v0}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v0

    if-nez v0, :cond_561

    const-string v0, "      N/A"

    .line 2421
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_561
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_47a

    :cond_565
    return-void
.end method

.method public final dumpTimeSec(Ljava/io/PrintWriter;J)V
    .registers 6

    const-wide/16 v0, 0x3e8

    .line 2431
    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long/2addr p2, v0

    const-wide/16 v0, 0xa

    rem-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    const/16 p0, 0x73

    .line 2432
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public final getAllPendingSyncs()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 297
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {p0}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object p0

    .line 298
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_2b

    .line 301
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 302
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 304
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2b
    return-object v1
.end method

.method public final getAllUsers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 452
    monitor-enter p0

    .line 453
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    .line 454
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 457
    :cond_11
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    .line 458
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 4118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 4121
    :catch_c
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 8

    .line 804
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 805
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 808
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_4a

    .line 811
    :cond_19
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 813
    invoke-static {p3, v1}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object p3

    .line 812
    invoke-virtual {p0, p3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object p0

    const/4 p3, 0x0

    if-nez p0, :cond_29

    return p3

    .line 818
    :cond_29
    :try_start_29
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object p0, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 819
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    .line 818
    invoke-interface {v1, p0, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_39} :catch_49

    if-nez p0, :cond_3c

    return p3

    .line 825
    :cond_3c
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz p0, :cond_49

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 826
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    return v0

    :catch_49
    :cond_49
    return p3

    :cond_4a
    :goto_4a
    return v0
.end method

.method public final getJobScheduler()Landroid/app/job/JobScheduler;
    .registers 1

    .line 555
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 556
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-object p0
.end method

.method public final getJobStats()Ljava/lang/String;
    .registers 3

    .line 398
    const-class p0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobSchedulerInternal;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JobStats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_17

    const-string p0, "(JobSchedulerInternal==null)"

    goto :goto_1f

    .line 401
    :cond_17
    invoke-interface {p0}, Lcom/android/server/job/JobSchedulerInternal;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object p0

    .line 1194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1197
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1198
    new-instance v2, Landroid/content/PeriodicSync;

    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1199
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->getClonedExtras()Landroid/os/Bundle;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    iget-wide v11, v1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    div-long v9, v11, v9

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1198
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_42
    return-object v0
.end method

.method public getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    if-nez p2, :cond_6

    goto :goto_2b

    .line 1255
    :cond_6
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 1257
    invoke-static {p2, p1}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object p1

    .line 1256
    invoke-virtual {v1, p1, p4}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object p1

    if-nez p1, :cond_13

    return-object v0

    .line 1262
    :cond_13
    iget-object p1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p1, Landroid/content/SyncAdapterType;

    invoke-virtual {p1}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2b

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    return-object p1

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;II)[Ljava/lang/String;
    .registers 10

    .line 1237
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1, p3}, Landroid/content/SyncAdaptersCache;->getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 1239
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1240
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_28

    aget-object v4, p1, v3

    .line 1241
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v4, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_25

    .line 1245
    :cond_22
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_28
    new-array p0, v2, [Ljava/lang/String;

    .line 1247
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSyncAdapterTypes(II)[Landroid/content/SyncAdapterType;
    .registers 8

    .line 1222
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p2}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    .line 1223
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1224
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1225
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1226
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_36

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_13

    .line 1230
    :cond_36
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_3e
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/content/SyncAdapterType;

    .line 1232
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/SyncAdapterType;

    return-object p0
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .registers 1

    .line 800
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object p0
.end method

.method public final getTotalBytesTransferredByUid(I)J
    .registers 4

    .line 1322
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final getUnusedJobIdH()I
    .registers 6

    .line 281
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    const v2, 0x186a0

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_25

    .line 283
    iget v4, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    add-int/2addr v4, v1

    rem-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 284
    invoke-virtual {p0, v4, v0}, Lcom/android/server/content/SyncManager;->isJobIdInUseLockedH(ILjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 285
    iget v0, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    return v4

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_25
    const-string v0, "SyncManager"

    const-string v1, "All 10000 possible sync job IDs are taken :/"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget v0, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    .line 292
    iget p0, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    add-int/2addr p0, v2

    return p0
.end method

.method public final increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 17

    move-object v0, p0

    move-object/from16 v7, p1

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1384
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1385
    invoke-virtual {v3, v7}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x2

    const-wide/16 v5, 0x3e8

    const-string v8, "SyncManager"

    if-eqz v3, :cond_5c

    .line 1390
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v1, v9

    if-gez v9, :cond_4a

    .line 1391
    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 1393
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, v1

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1392
    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-void

    .line 1398
    :cond_4a
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 1399
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-float v3, v9

    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v9}, Lcom/android/server/content/SyncManagerConstants;->getRetryTimeIncreaseFactor()F

    move-result v9

    mul-float/2addr v3, v9

    float-to-long v9, v3

    goto :goto_5e

    :cond_5c
    const-wide/16 v9, -0x1

    :goto_5e
    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-gtz v3, :cond_79

    .line 1403
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v3}, Lcom/android/server/content/SyncManagerConstants;->getInitialSyncRetryTimeInSeconds()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v9, v3

    long-to-double v11, v9

    const-wide v13, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v11, v13

    double-to-long v11, v11

    .line 1404
    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    move-result-wide v9

    .line 1408
    :cond_79
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v3}, Lcom/android/server/content/SyncManagerConstants;->getMaxSyncRetryTimeInSeconds()I

    move-result v3

    int-to-long v11, v3

    mul-long/2addr v11, v5

    cmp-long v3, v9, v11

    if-lez v3, :cond_87

    move-wide v5, v11

    goto :goto_88

    :cond_87
    move-wide v5, v9

    :goto_88
    add-long v9, v1, v5

    .line 1415
    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backoff until: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", delayTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_ac
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v2, p1

    move-wide v3, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    const-string/jumbo v1, "increaseBackoffSetting"

    .line 1419
    invoke-virtual {p0, v7, v1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public final isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 10

    .line 1460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1461
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_28

    .line 1462
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_28

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1463
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-lez v2, :cond_28

    return v3

    .line 1466
    :cond_28
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-lez p0, :cond_33

    return v3

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public final isDeviceProvisioned()Z
    .registers 3

    .line 782
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 783
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public final isJobIdInUseLockedH(ILjava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;)Z"
        }
    .end annotation

    .line 264
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const/4 v3, 0x1

    if-ge v2, v0, :cond_19

    .line 265
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobInfo;

    .line 266
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_16

    return v3

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 270
    :cond_19
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v1

    :goto_20
    if-ge v0, p2, :cond_34

    .line 271
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 272
    iget-object v2, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v2, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v2, p1, :cond_31

    return v3

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_34
    return v1
.end method

.method public final isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 3

    .line 3955
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    if-ne v0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserUnlocked(I)Z
    .registers 3

    .line 744
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 745
    :try_start_3
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 746
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final jitterize(JJ)J
    .registers 7

    .line 790
    new-instance p0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    sub-long/2addr p3, p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_19

    long-to-int p3, p3

    .line 796
    invoke-virtual {p0, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    int-to-long p3, p0

    add-long/2addr p1, p3

    return-wide p1

    .line 793
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final likelyHasPeriodicSyncs()Z
    .registers 3

    const/4 v0, 0x0

    .line 547
    :try_start_1
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityCount()I

    move-result p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    const/4 v1, 0x6

    if-lt p0, v1, :cond_b

    const/4 v0, 0x1

    :catchall_b
    :cond_b
    return v0
.end method

.method public final maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .registers 7

    const-string v0, "SyncManager"

    const/4 v1, 0x3

    .line 1749
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encountered error(s) during the sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_25
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->enableBackoff()V

    const/4 v2, 0x1

    .line 1756
    iput-boolean v2, p2, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 1758
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->hasDoNotRetry()Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_4e

    if-eqz v1, :cond_100

    .line 1763
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100

    .line 1766
    :cond_4e
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->isUpload()Z

    move-result v2

    if-eqz v2, :cond_77

    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_77

    .line 1768
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->enableTwoWaySync()V

    if-eqz v1, :cond_72

    .line 1770
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :cond_72
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_100

    .line 1774
    :cond_77
    iget-boolean v2, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v2, :cond_93

    if-eqz v1, :cond_100

    .line 1778
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "not retrying sync operation because it retried too many times: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    .line 1781
    :cond_93
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v2

    if-eqz v2, :cond_a5

    if-eqz v1, :cond_a1

    const-string/jumbo p1, "retrying sync operation because even though it had an error it achieved some success"

    .line 1784
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :cond_a1
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_100

    .line 1788
    :cond_a5
    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v2, :cond_c6

    if-eqz v1, :cond_c0

    .line 1790
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    const-wide/16 v0, 0x2710

    .line 1793
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_100

    .line 1794
    :cond_c6
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result p1

    if-eqz p1, :cond_e7

    if-eqz v1, :cond_e3

    .line 1797
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :cond_e3
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_100

    .line 1803
    :cond_e7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    invoke-static {p2}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1803
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    :goto_100
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-eq p1, v0, :cond_5

    goto :goto_a

    .line 753
    :cond_5
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {p0}, Lcom/android/server/content/SyncManagerConstants;->start()V

    :goto_a
    return-void
.end method

.method public onStartUser(I)V
    .registers 4

    .line 724
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStopUser(I)V
    .registers 5

    .line 736
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 737
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 738
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 740
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_15
    move-exception p0

    .line 738
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public onUnlockUser(I)V
    .registers 5

    .line 728
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 729
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 730
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 732
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_15
    move-exception p0

    .line 730
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final onUserRemoved(I)V
    .registers 6

    .line 1841
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onUserRemoved: u"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1842
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1845
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    .line 1846
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1847
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1848
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v2, p1, :cond_26

    .line 1849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user removed u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_26

    :cond_4e
    return-void
.end method

.method public final onUserStopped(I)V
    .registers 4

    const/4 v0, 0x0

    .line 1828
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1830
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, v0, v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo p1, "onUserStopped"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public final onUserUnlocked(I)V
    .registers 16

    .line 1810
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    .line 1812
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 1814
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1815
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1818
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1819
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1818
    invoke-virtual {v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1820
    array-length v1, v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_3c

    aget-object v4, v0, v2

    const/4 v6, -0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 1823
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    const/4 v12, -0x3

    const/4 v13, 0x0

    move-object v3, p0

    move v5, p1

    .line 1821
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_3c
    return-void
.end method

.method public final postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 1297
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "posting MESSAGE_SYNC_MONITOR in 60s"

    .line 1298
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_f
    iget v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 1303
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    .line 1304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .line 1305
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x8

    .line 1306
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1309
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V
    .registers 5

    .line 1313
    new-instance v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;-><init>(Lcom/android/server/content/SyncOperation;J)V

    .line 1315
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final readDataConnectionState()Z
    .registers 1

    .line 393
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 394
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    .line 1171
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 1172
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/16 p3, 0xe

    .line 1171
    invoke-virtual {p0, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1173
    invoke-virtual {p0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1174
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeStaleAccounts()V
    .registers 6

    .line 356
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 358
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_1b

    goto :goto_a

    .line 359
    :cond_1b
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 362
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2, v1}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    goto :goto_a

    :cond_33
    return-void
.end method

.method public final removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 11

    .line 1156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "removeSyncsForAuthority: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v4, 0x2

    aput-object p2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1157
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 1158
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1160
    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1161
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "canceling: "

    aput-object v7, v6, v3

    aput-object v1, v6, v2

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1162
    invoke-virtual {p0, v1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_1f

    :cond_44
    return-void
.end method

.method public final rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 10

    .line 1427
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "rescheduleSyncs() ep="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, " why="

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1429
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1431
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1432
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_21

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v3, v3, 0x1

    .line 1434
    invoke-virtual {p0, v1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    .line 1435
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_21

    :cond_44
    const-string p0, "SyncManager"

    .line 1438
    invoke-static {p0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_68

    .line 1439
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rescheduled "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " syncs for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-void
.end method

.method public resetTodayStats()V
    .registers 2

    .line 4137
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    return-void
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V
    .registers 23

    .line 1213
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "upload"

    const/4 v1, 0x1

    .line 1214
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1215
    sget-wide v7, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v6, -0x2

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    .registers 25

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    .line 888
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    return-void
.end method

.method public final scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V
    .registers 58

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v15, p2

    move-object/from16 v14, p4

    move/from16 v13, p6

    move-wide/from16 v11, p7

    if-nez p5, :cond_15

    .line 902
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v9, v2

    goto :goto_17

    :cond_15
    move-object/from16 v9, p5

    .line 904
    :goto_17
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    const-string v2, "SyncManager"

    const/4 v10, 0x2

    .line 905
    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_b0

    .line 906
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v16, "scheduleSync: account="

    aput-object v16, v3, v5

    aput-object v1, v3, v4

    const-string v16, " u"

    aput-object v16, v3, v10

    .line 907
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v6

    const-string v16, " authority="

    aput-object v16, v3, v7

    aput-object v14, v3, v8

    const/16 v16, 0x6

    const-string v17, " reason="

    aput-object v17, v3, v16

    const/16 v16, 0x7

    .line 909
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0x8

    const-string v17, " extras="

    aput-object v17, v3, v16

    const/16 v16, 0x9

    aput-object v9, v3, v16

    const/16 v16, 0xa

    const-string v17, " cuid="

    aput-object v17, v3, v16

    const/16 v16, 0xb

    .line 911
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0xc

    const-string v17, " cpid="

    aput-object v17, v3, v16

    const/16 v16, 0xd

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0xe

    const-string v17, " cpkg="

    aput-object v17, v3, v16

    const/16 v16, 0xf

    aput-object p13, v3, v16

    const/16 v16, 0x10

    const-string v17, " mdm="

    aput-object v17, v3, v16

    const/16 v16, 0x11

    .line 912
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0x12

    const-string v17, " ciar="

    aput-object v17, v3, v16

    const/16 v16, 0x13

    .line 913
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0x14

    const-string v17, " sef="

    aput-object v17, v3, v16

    const/16 v16, 0x15

    .line 914
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v16

    .line 906
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 918
    :cond_b0
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v6, -0x1

    if-eqz v1, :cond_e3

    if-eq v15, v6, :cond_c2

    :try_start_b8
    new-array v2, v4, [Landroid/accounts/AccountAndUser;

    .line 921
    new-instance v6, Landroid/accounts/AccountAndUser;

    invoke-direct {v6, v1, v15}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v6, v2, v5

    goto :goto_e5

    .line 923
    :cond_c2
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    array-length v2, v6

    move v8, v5

    const/4 v7, 0x0

    :goto_c7
    if-ge v8, v2, :cond_e1

    aget-object v10, v6, v8

    .line 924
    iget-object v4, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v1, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 925
    const-class v4, Landroid/accounts/AccountAndUser;

    invoke-static {v4, v7, v10}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/AccountAndUser;

    move-object v7, v4

    :cond_dc
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    const/4 v10, 0x2

    goto :goto_c7

    :cond_e1
    move-object v10, v7

    goto :goto_e6

    .line 931
    :cond_e3
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    :goto_e5
    move-object v10, v2

    .line 933
    :goto_e6
    monitor-exit v3
    :try_end_e7
    .catchall {:try_start_b8 .. :try_end_e7} :catchall_430

    .line 935
    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    return-void

    :cond_ee
    const-string/jumbo v1, "upload"

    .line 939
    invoke-virtual {v9, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    const-string v1, "force"

    .line 940
    invoke-virtual {v9, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10a

    const-string/jumbo v2, "ignore_backoff"

    const/4 v3, 0x1

    .line 942
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "ignore_settings"

    .line 943
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_10a
    const-string/jumbo v2, "ignore_settings"

    .line 946
    invoke-virtual {v9, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v21, :cond_116

    const/16 v34, 0x1

    goto :goto_12d

    :cond_116
    if-eqz v1, :cond_11b

    const/16 v34, 0x3

    goto :goto_12d

    :cond_11b
    if-nez v14, :cond_120

    const/16 v34, 0x2

    goto :goto_12d

    :cond_120
    const-string v1, "feed"

    .line 956
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12b

    const/16 v34, 0x5

    goto :goto_12d

    :cond_12b
    move/from16 v34, v5

    .line 965
    :goto_12d
    array-length v8, v10

    move v7, v5

    :goto_12f
    if-ge v7, v8, :cond_42f

    aget-object v6, v10, v7

    if-ltz v15, :cond_155

    .line 967
    iget v1, v6, Landroid/accounts/AccountAndUser;->userId:I

    if-ltz v1, :cond_155

    if-eq v15, v1, :cond_155

    :cond_13b
    move-object v15, v0

    move/from16 v38, v5

    move/from16 v18, v7

    move/from16 v17, v8

    move-object/from16 v20, v9

    move-object/from16 v19, v10

    move-wide v3, v11

    move v0, v13

    const/4 v14, 0x1

    const/16 v16, 0x3

    const/16 v23, 0x4

    const/16 v36, -0x1

    const/16 v37, 0x5

    const/16 v42, 0x2

    goto/16 :goto_41c

    .line 973
    :cond_155
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 975
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v3, v6, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_166
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 976
    iget-object v3, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_166

    :cond_17c
    if-eqz v14, :cond_18a

    .line 983
    invoke-virtual {v1, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 984
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz v2, :cond_18a

    .line 985
    invoke-virtual {v1, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 988
    :cond_18a
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_18e
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13b

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 989
    iget-object v1, v6, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v2, v6, Landroid/accounts/AccountAndUser;->userId:I

    xor-int/lit8 v3, p9, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_1a8

    goto :goto_18e

    .line 996
    :cond_1a8
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v3, v6, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 997
    invoke-static {v4, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    iget v5, v6, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v5

    if-nez v5, :cond_1bc

    const/4 v5, 0x0

    goto :goto_18e

    .line 1003
    :cond_1bc
    iget v2, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_24a

    .line 1006
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v20, "scheduleSync: Not scheduling sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    const/16 v23, 0x0

    aput-object v20, v3, v23

    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1008
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1009
    iget-object v1, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1011
    invoke-virtual {v0, v5, v15}, Lcom/android/server/content/SyncManager;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1e4

    move/from16 v5, v23

    goto :goto_18e

    .line 1014
    :cond_1e4
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    iget-object v0, v6, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v20, v0

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v15, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;

    move-object/from16 v36, v1

    move-object v1, v15

    move/from16 v24, v2

    move-object/from16 v2, p0

    move-object/from16 v25, v3

    const/16 v26, 0x3

    move-object v3, v6

    move-object/from16 p1, v4

    move/from16 v4, p2

    move-object/from16 v39, v5

    move/from16 v38, v23

    move/from16 v5, p3

    move-object/from16 v40, v6

    move/from16 v16, v26

    move-object/from16 v6, p1

    move/from16 v18, v7

    move-object/from16 v7, v25

    move/from16 v17, v8

    move/from16 v8, p6

    move-object/from16 v41, v9

    move-object/from16 v19, v10

    const/16 v42, 0x2

    move-wide/from16 v9, p7

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    invoke-direct {v0, v15}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move/from16 v14, p2

    move-object/from16 v3, v20

    move-object/from16 v2, v36

    move-object/from16 v1, v39

    invoke-virtual {v2, v3, v1, v14, v0}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    move-object/from16 v0, p0

    move/from16 v13, p6

    move-wide/from16 v11, p7

    move v15, v14

    move/from16 v8, v17

    move/from16 v7, v18

    move-object/from16 v10, v19

    move/from16 v5, v38

    move-object/from16 v6, v40

    move-object/from16 v9, v41

    :goto_246
    move-object/from16 v14, p4

    goto/16 :goto_18e

    :cond_24a
    move/from16 v16, v3

    move-object/from16 p1, v4

    move-object/from16 v40, v6

    move/from16 v18, v7

    move/from16 v17, v8

    move-object/from16 v41, v9

    move-object/from16 v19, v10

    move v14, v15

    const/16 v38, 0x0

    const/16 v42, 0x2

    .line 1030
    iget-object v0, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Landroid/content/SyncAdapterType;

    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v32

    .line 1031
    iget-object v0, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Landroid/content/SyncAdapterType;

    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v0

    if-nez p9, :cond_290

    if-gez v1, :cond_290

    if-eqz v0, :cond_290

    move-object/from16 v0, p0

    .line 1033
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v15, v40

    iget-object v3, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v15, Landroid/accounts/AccountAndUser;->userId:I

    const/16 v27, 0x1

    move-object/from16 v23, v1

    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, p1

    move/from16 v28, p11

    move/from16 v29, p12

    invoke-virtual/range {v23 .. v29}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V

    const/4 v4, 0x1

    goto :goto_295

    :cond_290
    move-object/from16 v0, p0

    move-object/from16 v15, v40

    move v4, v1

    :goto_295
    const/4 v1, -0x2

    move/from16 v13, p6

    if-eq v13, v1, :cond_2ab

    if-eq v13, v4, :cond_2ab

    :goto_29c
    move-wide/from16 v11, p7

    move-object v6, v15

    move/from16 v8, v17

    move/from16 v7, v18

    move-object/from16 v10, v19

    move/from16 v5, v38

    move-object/from16 v9, v41

    move v15, v14

    goto :goto_246

    .line 1043
    :cond_2ab
    iget-object v3, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v3

    if-nez v3, :cond_2b8

    if-eqz v21, :cond_2b8

    goto :goto_29c

    :cond_2b8
    if-ltz v4, :cond_2da

    if-nez v22, :cond_2da

    .line 1047
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v6, v15, Landroid/accounts/AccountAndUser;->userId:I

    .line 1050
    invoke-virtual {v3, v6}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3

    if-eqz v3, :cond_2d5

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v6, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v7, v15, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v10, p1

    .line 1051
    invoke-virtual {v3, v6, v7, v10}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d7

    goto :goto_2dc

    :cond_2d5
    move-object/from16 v10, p1

    :cond_2d7
    move/from16 v3, v38

    goto :goto_2dd

    :cond_2da
    move-object/from16 v10, p1

    :goto_2dc
    const/4 v3, 0x1

    :goto_2dd
    if-nez v3, :cond_2fb

    .line 1054
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v12, 0x5

    new-array v2, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "scheduleSync: sync of "

    aput-object v3, v2, v38

    const/4 v11, 0x1

    aput-object v15, v2, v11

    const-string v3, " "

    aput-object v3, v2, v42

    aput-object v10, v2, v16

    const-string v3, " is not allowed, dropping request"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    goto :goto_29c

    :cond_2fb
    const/4 v8, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x5

    .line 1058
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v7, v15, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v3, v6, v10, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1061
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1062
    invoke-virtual {v6, v3}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    .line 1064
    iget-object v3, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    const/4 v9, -0x1

    if-ne v4, v9, :cond_3ae

    if-eqz p9, :cond_35a

    .line 1068
    new-instance v6, Landroid/os/Bundle;

    move-object/from16 v7, v41

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1070
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget v3, v15, Landroid/accounts/AccountAndUser;->userId:I

    new-instance v2, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda9;

    move-object v1, v2

    move-object v14, v2

    move-object/from16 v2, p0

    move v0, v3

    move-object v3, v15

    move-object/from16 v40, v15

    move-object v15, v4

    move/from16 v4, p3

    move-object/from16 v43, v5

    move-object v5, v10

    move-object/from16 v20, v7

    move/from16 v7, p6

    move v10, v8

    move/from16 v36, v9

    move-wide/from16 v8, p7

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v37, v12

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v1 .. v13}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    move-object/from16 v1, v43

    invoke-static {v15, v1, v0, v14}, Lcom/android/server/content/SyncManager;->sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V

    const/4 v14, 0x1

    const/16 v23, 0x4

    move-object/from16 v15, p0

    move/from16 v0, p6

    move-wide/from16 v3, p7

    move-object/from16 v2, v40

    goto/16 :goto_408

    :cond_35a
    move/from16 v36, v9

    move/from16 v37, v12

    move-object/from16 v40, v15

    move-object/from16 v20, v41

    .line 1077
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "initialize"

    const/4 v14, 0x1

    .line 1078
    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v15, p0

    .line 1080
    iget-object v1, v15, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v13, 0x4

    new-array v3, v13, [Ljava/lang/Object;

    const-string/jumbo v4, "scheduleSync: schedule initialisation sync "

    aput-object v4, v3, v38

    aput-object v40, v3, v14

    const-string v4, " "

    aput-object v4, v3, v42

    aput-object v10, v3, v16

    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1083
    new-instance v1, Lcom/android/server/content/SyncOperation;

    move-object/from16 v12, v40

    iget-object v3, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v12, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v23, v1

    move-object/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v2

    move/from16 v28, p3

    move/from16 v29, v34

    move-object/from16 v30, v10

    move-object/from16 v31, v0

    move/from16 v33, p10

    invoke-direct/range {v23 .. v33}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-wide/from16 v8, p7

    invoke-virtual {v15, v1, v8, v9}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    move/from16 v0, p6

    :goto_3a9
    move-wide v3, v8

    move-object v2, v12

    move/from16 v23, v13

    goto :goto_408

    :cond_3ae
    move/from16 v36, v9

    move v14, v11

    move/from16 v37, v12

    move-object v12, v15

    move-object/from16 v20, v41

    move-object v15, v0

    move v0, v13

    move v13, v8

    move-wide/from16 v8, p7

    if-eq v0, v1, :cond_3d5

    if-ne v0, v4, :cond_3c0

    goto :goto_3d5

    .line 1102
    :cond_3c0
    iget-object v1, v15, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v2, v13, [Ljava/lang/Object;

    const-string/jumbo v3, "scheduleSync: not handling "

    aput-object v3, v2, v38

    aput-object v12, v2, v14

    const-string v3, " "

    aput-object v3, v2, v42

    aput-object v10, v2, v16

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    goto :goto_3a9

    .line 1093
    :cond_3d5
    :goto_3d5
    iget-object v1, v15, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v3, v13, [Ljava/lang/Object;

    const-string/jumbo v4, "scheduleSync: scheduling sync "

    aput-object v4, v3, v38

    aput-object v12, v3, v14

    const-string v4, " "

    aput-object v4, v3, v42

    aput-object v10, v3, v16

    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1095
    new-instance v1, Lcom/android/server/content/SyncOperation;

    iget-object v4, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v5, v12, Landroid/accounts/AccountAndUser;->userId:I

    move-object v3, v1

    move v6, v2

    move-object/from16 v7, v27

    move/from16 v8, p3

    move/from16 v9, v34

    move-object/from16 v11, v20

    move-object v2, v12

    move/from16 v12, v32

    move/from16 v23, v13

    move/from16 v13, p10

    invoke-direct/range {v3 .. v13}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-wide/from16 v3, p7

    invoke-virtual {v15, v1, v3, v4}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    :goto_408
    move-object/from16 v14, p4

    move v13, v0

    move-object v6, v2

    move-wide v11, v3

    move-object v0, v15

    move/from16 v8, v17

    move/from16 v7, v18

    move-object/from16 v10, v19

    move-object/from16 v9, v20

    move/from16 v5, v38

    move/from16 v15, p2

    goto/16 :goto_18e

    :goto_41c
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v14, p4

    move v13, v0

    move-wide v11, v3

    move-object v0, v15

    move/from16 v8, v17

    move-object/from16 v10, v19

    move-object/from16 v9, v20

    move/from16 v5, v38

    move/from16 v15, p2

    goto/16 :goto_12f

    :cond_42f
    return-void

    :catchall_430
    move-exception v0

    .line 933
    :try_start_431
    monitor-exit v3
    :try_end_432
    .catchall {:try_start_431 .. :try_end_432} :catchall_430

    throw v0
.end method

.method public final scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1486
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method public final scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SyncManager"

    const/4 v3, 0x2

    .line 1490
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v1, :cond_13

    const-string v0, "Can\'t schedule null sync operation."

    .line 1492
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1495
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->hasIgnoreBackoff()Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_b1

    .line 1496
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v9}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v5

    const-wide/16 v9, -0x1

    if-nez v5, :cond_50

    .line 1498
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find backoff values for "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1499
    invoke-static {v11}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1498
    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    new-instance v5, Landroid/util/Pair;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1501
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5e

    .line 1502
    :cond_50
    iget-object v11, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-eqz v11, :cond_5e

    .line 1506
    iput-boolean v8, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 1508
    :cond_5e
    :goto_5e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1509
    iget-object v13, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v9, v13, v9

    if-nez v9, :cond_70

    move-wide v9, v6

    goto :goto_79

    .line 1510
    :cond_70
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v9, v11

    .line 1511
    :goto_79
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v13, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v13}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v13

    cmp-long v5, v13, v11

    if-lez v5, :cond_87

    sub-long/2addr v13, v11

    goto :goto_88

    :cond_87
    move-wide v13, v6

    :goto_88
    if-eqz v4, :cond_a6

    .line 1514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backoff delay:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " delayUntil delay:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_a6
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide/from16 v11, p2

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_b4

    :cond_b1
    move-wide/from16 v11, p2

    move-wide v9, v11

    :goto_b4
    cmp-long v5, v9, v6

    if-gez v5, :cond_ba

    move-wide v9, v6

    goto :goto_be

    :cond_ba
    if-lez v5, :cond_be

    .line 1525
    iput-boolean v8, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 1531
    :cond_be
    :goto_be
    iget-boolean v5, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v5, :cond_1e6

    .line 1535
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1536
    iget-object v12, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v12, v12, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c8

    if-eqz v4, :cond_f6

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate sync is already running. Not scheduling "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    return-void

    .line 1546
    :cond_f7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    add-long/2addr v12, v9

    .line 1547
    iput-wide v12, v1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 1548
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v5

    .line 1550
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v14, v1

    const/4 v13, 0x0

    :goto_108
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/content/SyncOperation;

    .line 1551
    iget-boolean v3, v15, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v3, :cond_11a

    const/4 v3, 0x2

    goto :goto_108

    .line 1554
    :cond_11a
    iget-object v3, v15, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_132

    .line 1555
    iget-wide v6, v14, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    move-wide/from16 v17, v9

    iget-wide v8, v15, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_12f

    move-object v14, v15

    :cond_12f
    add-int/lit8 v13, v13, 0x1

    goto :goto_134

    :cond_132
    move-wide/from16 v17, v9

    :goto_134
    move-wide/from16 v9, v17

    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    goto :goto_108

    :cond_13b
    move v3, v8

    move-wide/from16 v17, v9

    if-le v13, v3, :cond_17c

    .line 1562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicates found when scheduling a sync operation: owningUid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; owningPackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; adapter="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v7, :cond_16f

    .line 1567
    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    goto :goto_172

    :cond_16f
    const-string/jumbo v7, "unknown"

    .line 1568
    :goto_172
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1562
    invoke-static {v2, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17c
    if-eq v1, v14, :cond_192

    const-wide/16 v6, 0x0

    cmp-long v8, v17, v6

    if-nez v8, :cond_192

    .line 1579
    iget v6, v14, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iget v7, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-ge v6, v7, :cond_192

    const/4 v6, 0x0

    .line 1583
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object v14, v1

    move v6, v7

    goto :goto_193

    :cond_192
    const/4 v6, 0x0

    .line 1588
    :goto_193
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_197
    :goto_197
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncOperation;

    .line 1589
    iget-boolean v8, v7, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v8, :cond_1a8

    goto :goto_197

    .line 1592
    :cond_1a8
    iget-object v8, v7, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_197

    if-eq v7, v14, :cond_197

    if-eqz v4, :cond_1ca

    .line 1595
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cancelling duplicate sync "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_1ca
    iget v8, v7, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1598
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    const-string/jumbo v8, "scheduleSyncOperationH-duplicate"

    .line 1599
    invoke-virtual {v0, v7, v8}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_197

    :cond_1d7
    if-eq v14, v1, :cond_1e1

    if-eqz v4, :cond_1e0

    const-string v0, "Not scheduling because a duplicate exists."

    .line 1606
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e0
    return-void

    :cond_1e1
    if-lez v6, :cond_1e8

    .line 1617
    iput v6, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    goto :goto_1e8

    :cond_1e6
    move-wide/from16 v17, v9

    .line 1622
    :cond_1e8
    :goto_1e8
    iget v5, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1f3

    .line 1623
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getUnusedJobIdH()I

    move-result v5

    iput v5, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    :cond_1f3
    if-eqz v4, :cond_20e

    .line 1627
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scheduling sync operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_20e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->getJobBias()I

    move-result v5

    .line 1632
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    move-result v6

    if-eqz v6, :cond_21a

    const/4 v6, 0x2

    goto :goto_21b

    :cond_21a
    const/4 v6, 0x1

    .line 1637
    :goto_21b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v7

    if-eqz v7, :cond_224

    const/16 v7, 0x8

    goto :goto_225

    :cond_224
    const/4 v7, 0x0

    .line 1640
    :goto_225
    new-instance v8, Landroid/app/job/JobInfo$Builder;

    iget v9, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v12, Lcom/android/server/content/SyncJobService;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v8, v9, v10}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 1642
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 1643
    invoke-virtual {v8, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    const/4 v3, 0x1

    .line 1644
    invoke-virtual {v6, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 1645
    invoke-virtual {v6, v3}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 1646
    invoke-virtual {v6, v5}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 1647
    invoke-virtual {v5, v7}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 1649
    iget-boolean v6, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v6, :cond_25f

    .line 1650
    iget-wide v6, v1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v8, v1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    const/4 v3, 0x1

    goto :goto_274

    :cond_25f
    const-wide/16 v6, 0x0

    cmp-long v6, v17, v6

    if-lez v6, :cond_26a

    move-wide/from16 v6, v17

    .line 1653
    invoke-virtual {v5, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 1655
    :cond_26a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v3, 0x1

    invoke-virtual {v6, v7, v3}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1658
    :goto_274
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->hasRequireCharging()Z

    move-result v6

    if-eqz v6, :cond_27d

    .line 1659
    invoke-virtual {v5, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1662
    :cond_27d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isScheduledAsExpeditedJob()Z

    move-result v6

    if-eqz v6, :cond_28a

    iget-boolean v6, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    if-nez v6, :cond_28a

    .line 1663
    invoke-virtual {v5, v3}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 1666
    :cond_28a
    iget v6, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2b7

    .line 1668
    const-class v6, Lcom/android/server/DeviceIdleInternal;

    .line 1669
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/server/DeviceIdleInternal;

    if-eqz v7, :cond_2b7

    const/16 v8, 0x3e8

    .line 1671
    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 1673
    invoke-virtual {v6}, Lcom/android/server/content/SyncManagerConstants;->getKeyExemptionTempWhitelistDurationInSeconds()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v10, v6

    const/4 v12, 0x1

    iget v6, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1675
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/4 v14, 0x0

    const/16 v15, 0x132

    const-string/jumbo v16, "sync by top app"

    .line 1671
    invoke-interface/range {v7 .. v16}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIIZILjava/lang/String;)V

    .line 1680
    :cond_2b7
    const-class v6, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1681
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v6, :cond_2d0

    .line 1685
    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1686
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1687
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v9

    .line 1685
    invoke-virtual {v6, v7, v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->reportSyncScheduled(Ljava/lang/String;IZ)V

    .line 1690
    :cond_2d0
    invoke-virtual {v5}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v6

    .line 1691
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1692
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v10

    .line 1691
    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_330

    .line 1693
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isExpedited()Z

    move-result v6

    if-eqz v6, :cond_330

    if-eqz v4, :cond_30b

    .line 1695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to schedule EJ for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Downgrading to regular"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30b
    const/4 v3, 0x1

    .line 1698
    iput-boolean v3, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    const/4 v3, 0x0

    .line 1699
    invoke-virtual {v5, v3}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 1700
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v5}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1701
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v6

    .line 1700
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    :cond_330
    if-nez v7, :cond_348

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to schedule job for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_348
    return-void
.end method

.method public final sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 1281
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "sending MESSAGE_CANCEL"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_f
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendCancelSyncsMessage() ep="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, " why="

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object p3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1285
    iget-object p3, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    const/4 v0, 0x6

    .line 1286
    iput v0, p3, Landroid/os/Message;->what:I

    .line 1287
    invoke-virtual {p3, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1288
    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1289
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 5

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 1272
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_f
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 1274
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1275
    new-instance v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1276
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 5

    .line 834
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 835
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 836
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_8

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 837
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    return-void

    .line 841
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    return-void
.end method

.method public final setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    .line 1445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_12

    .line 1448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr p2, v0

    add-long/2addr v2, p2

    goto :goto_14

    :cond_12
    const-wide/16 v2, 0x0

    .line 1452
    :goto_14
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    const/4 p2, 0x2

    const-string p3, "SyncManager"

    .line 1453
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 1454
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Delay Until time set to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_3e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delayUntil newDelayUntilTime: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .registers 16

    .line 1183
    new-instance v8, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 1185
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1186
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 348
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "sending MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_f
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 351
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final declared-synchronized verifyJobScheduler()V
    .registers 11

    monitor-enter p0

    .line 491
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d6

    if-eqz v0, :cond_7

    .line 492
    monitor-exit p0

    return-void

    .line 494
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_d6

    :try_start_b
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    .line 496
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "SyncManager"

    const-string/jumbo v3, "initializing JobScheduler object."

    .line 497
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1c
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 501
    const-class v2, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 503
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    .line 507
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :cond_40
    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobInfo;

    .line 508
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v7

    if-eqz v7, :cond_40

    .line 510
    iget-boolean v9, v7, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v9, :cond_5e

    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :cond_5e
    add-int/lit8 v6, v6, 0x1

    .line 516
    iget-object v9, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v7, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    goto :goto_40

    .line 520
    :cond_68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded persisted syncs: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " periodic syncs, "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " oneshot syncs, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " total system server jobs, "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SyncManager"

    .line 525
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v4

    invoke-virtual {v3, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->cleanupJobs()V

    .line 530
    sget-boolean v3, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    if-eqz v3, :cond_cc

    if-nez v5, :cond_cc

    .line 531
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->likelyHasPeriodicSyncs()Z

    move-result v3

    if-eqz v3, :cond_cc

    const-string v3, "SyncManager"

    .line 532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device booted with no persisted periodic syncs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_b .. :try_end_cc} :catchall_d1

    .line 535
    :cond_cc
    :try_start_cc
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_d6

    .line 537
    monitor-exit p0

    return-void

    :catchall_d1
    move-exception v2

    .line 535
    :try_start_d2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    throw v2
    :try_end_d6
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_d6

    :catchall_d6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final wasPackageEverLaunched(Ljava/lang/String;I)Z
    .registers 3

    .line 4142
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public final whiteListExistingSyncAdaptersIfNeeded()V
    .registers 17

    move-object/from16 v0, p0

    .line 759
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->shouldGrantSyncAdaptersAccountAccess()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 762
    :cond_b
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    .line 763
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_71

    .line 765
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 766
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 768
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v7, v6}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 769
    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 770
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v11, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v11, Landroid/content/SyncAdapterType;

    iget-object v11, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_50
    if-ge v12, v11, :cond_69

    aget-object v13, v10, v12

    .line 772
    invoke-virtual {v0, v13, v9, v6}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_64

    .line 773
    iget-object v14, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget v15, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const-string v3, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v0, 0x1

    invoke-virtual {v14, v13, v3, v15, v0}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    :cond_64
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_50

    :cond_69
    move-object/from16 v0, p0

    goto :goto_30

    :cond_6c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_16

    :cond_71
    return-void
.end method

.method public final zeroToEmpty(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_7

    .line 2427
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_7
    const-string p0, ""

    :goto_9
    return-object p0
.end method
